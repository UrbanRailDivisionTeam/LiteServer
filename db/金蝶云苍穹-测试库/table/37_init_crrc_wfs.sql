USE crrc_wfs;


-- crrc_wfs.t_bpm_billrelationtype definition

CREATE TABLE `t_bpm_billrelationtype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELFORMID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORMID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARSECLASS` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPREINSERT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_BPM_BILLRELATIONTYPE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_bpm_billrelationtype_l definition

CREATE TABLE `t_bpm_billrelationtype_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_BPM_BILLRELATIONTYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_bpm_billrelationtype_r3 definition

CREATE TABLE `t_bpm_billrelationtype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_bpm_execonversion definition

CREATE TABLE `t_bpm_execonversion` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSRCEXECUTIONID` bigint NOT NULL DEFAULT '0',
  `FSRCBUSINESSKEY` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCENTITYNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FACTIVITYID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZCODE` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAGEXECUTIONID` bigint NOT NULL DEFAULT '0',
  `FTAGBUSINESSKEY` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAGENTITYNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_BPM_EXECONVER_TAGBUS` (`FTAGBUSINESSKEY`),
  KEY `IDX_BPM_EXECONVER_PROCTAG` (`FPROCINSTID`,`FTAGENTITYNUMBER`,`FTAGBUSINESSKEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_bpm_execonversion_r3 definition

CREATE TABLE `t_bpm_execonversion_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_bpm_relationmodel definition

CREATE TABLE `t_bpm_relationmodel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILL` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTARGETBILL` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRELATIONTYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPREINSERT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPARAMJSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_BPM_RELATIONMODEL_NUMBER` (`FNUMBER`),
  KEY `IDX_BPM_RELATIONMODEL_BILL` (`FTARGETBILL`,`FSRCBILL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_bpm_relationmodel_l definition

CREATE TABLE `t_bpm_relationmodel_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_BPM_RELATIONMODEL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_evt_deadletterjob definition

CREATE TABLE `t_evt_deadletterjob` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXCLUSIVE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FEXECUTIONID` bigint NOT NULL DEFAULT '0',
  `FPROCESSINSTANCEID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FEXCEPTIONMSG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FDUEDATE` datetime DEFAULT NULL,
  `FREPEAT` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRETRIES` int NOT NULL DEFAULT '0',
  `FHANDLERTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHANDLERCFG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FBUSINESSKEY` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATION` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERRORCODE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERRORTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOLUTION` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXCEPTIONSTACKMSG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FELEMENTID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FSRCJOBID` bigint NOT NULL DEFAULT '0',
  `FROOTTRACENO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRABILLNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBJECT` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FELEMENTNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCTRACEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZKEY` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROOTEVENTINSTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EVT_DEADLETJOB_EXEC` (`FEXECUTIONID`),
  KEY `IDX_EVT_DEADLETJOB_PROCDEF` (`FPROCDEFID`),
  KEY `IDX_EVT_DEADLETJOB_PROC` (`FPROCESSINSTANCEID`),
  KEY `IDX_EVT_DEADLETJOB_BUSKEY` (`FBUSINESSKEY`),
  KEY `IDX_EVT_DEADJOB_MODIFYDATE` (`FMODIFYDATE`),
  KEY `IDX_EVT_DEADLETTERJOB_DATE` (`FCREATEDATE`,`FMODIFYDATE`),
  KEY `IDX_EVT_DEADJOB_TYPE_RETRIES` (`FRETRIES`,`FHANDLERTYPE`),
  KEY `IDX_EVT_DEADJOB_ERRORTYPE` (`FERRORTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_evt_deadletterjob_l definition

CREATE TABLE `t_evt_deadletterjob_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRABILLNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBJECT` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FELEMENTNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EVT_DEADLETTERJOB_L_LOC` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_evt_deadletterjob_r3 definition

CREATE TABLE `t_evt_deadletterjob_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_evt_event definition

CREATE TABLE `t_evt_event` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERNUMBER` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCENE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPREINSDATA` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISMODIFIED` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FNUMBERVIEW` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPASSOPERPARAM` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EVT_EVENT_NUMBER` (`FNUMBER`),
  KEY `IDX_EVT_EVENT_ENTITY` (`FENTITY`),
  KEY `IDX_EVT_EVENT_OPERNUMBER` (`FOPERNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_evt_event_l definition

CREATE TABLE `t_evt_event_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATION` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EVT_EVENT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_evt_event_r3 definition

CREATE TABLE `t_evt_event_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_evt_eventconfig definition

CREATE TABLE `t_evt_eventconfig` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCONFIGNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIGTYPE` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIGNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIGDESCRIPTION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISCUSTOM` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISTRANSFER` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EVT_EVENTCONFIG` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_evt_eventconfig_l definition

CREATE TABLE `t_evt_eventconfig_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIGNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIGDESCRIPTION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EVT_EVENTCONFIG_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_evt_hijobrecord definition

CREATE TABLE `t_evt_hijobrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCKEXPTIME` datetime DEFAULT NULL,
  `FLOCKOWNERID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXCLUSIVE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
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
  `FOPERATION` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FELEMENTID` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FSRCJOBID` bigint NOT NULL DEFAULT '0',
  `FROOTTRACENO` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXECUTOR` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUCCESS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FENDTIME` datetime DEFAULT NULL,
  `FDURATION` bigint NOT NULL DEFAULT '0',
  `FSTATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROOTJOBID` bigint NOT NULL DEFAULT '0',
  `FSRCTRACEID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZKEY` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROOTEVENTINSTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EVT_HIJOBRECORD_ROOTJOBID` (`FROOTJOBID`),
  KEY `IDX_EVT_HIJOBRECORD_LOCKSTATE` (`FLOCKEXPTIME`,`FSTATE`),
  KEY `IDX_EVT_HIJOBREC_BUSKEYSTATE` (`FBUSINESSKEY`,`FSTATE`),
  KEY `IDX_EVT_HIJOBRECORD_ROOTEVTID` (`FROOTEVENTINSTID`),
  KEY `IDX_EVT_HIJOBRECORD_ROOTTRACE` (`FROOTTRACENO`),
  KEY `IDX_EVT_HIJOBRECORD_HANDTYPE` (`FHANDLERTYPE`),
  KEY `IDX_EVT_HIJOBRECORD_CREATDATE` (`FCREATEDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_evt_hijobrecord_r3 definition

CREATE TABLE `t_evt_hijobrecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_evt_jobrecord definition

CREATE TABLE `t_evt_jobrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCKEXPTIME` datetime DEFAULT NULL,
  `FLOCKOWNERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXCLUSIVE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FEXECUTIONID` bigint NOT NULL DEFAULT '0',
  `FPROCESSINSTANCEID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FRETRIES` int NOT NULL DEFAULT '3',
  `FEXCEPTIONMSG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FDUEDATE` datetime DEFAULT NULL,
  `FREPEAT` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHANDLERTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHANDLERCFG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FBUSINESSKEY` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATION` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FELEMENTID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FSRCJOBID` bigint NOT NULL DEFAULT '0',
  `FROOTTRACENO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXECUTOR` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUCCESS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FENDTIME` datetime DEFAULT NULL,
  `FDURATION` bigint NOT NULL DEFAULT '0',
  `FSTATE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCE` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROOTJOBID` bigint NOT NULL DEFAULT '0',
  `FSRCTRACEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZKEY` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROOTEVENTINSTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EVT_JOBRECORD_ROOTJOBID` (`FROOTJOBID`),
  KEY `IDX_EVT_JOBRECORD_LOCKSTATE` (`FLOCKEXPTIME`,`FSTATE`),
  KEY `IDX_EVT_JOBREC_BUSKEY_STATE` (`FBUSINESSKEY`,`FSTATE`),
  KEY `IDX_EVT_JOBRECORD_ROOTEVTID` (`FROOTEVENTINSTID`),
  KEY `IDX_EVT_JOBRECORD_ROOTTRACE` (`FROOTTRACENO`),
  KEY `IDX_EVT_JOBRECORD_HANDTYPE` (`FHANDLERTYPE`),
  KEY `IDX_EVT_JOBRECORD_CREATEDATE` (`FCREATEDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_evt_jobrecord_r3 definition

CREATE TABLE `t_evt_jobrecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_evt_jobstatistics definition

CREATE TABLE `t_evt_jobstatistics` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FEVENT` bigint NOT NULL DEFAULT '0',
  `FEVENTNUMBER` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTNUMBERVIEW` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBSCRIPTION` bigint NOT NULL DEFAULT '0',
  `FSUBSCRIPTIONNUMBER` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSERVICE` bigint NOT NULL DEFAULT '0',
  `FSERVICENUMBER` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(136) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHANDLERTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOBSTATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FYEARS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALDURATION` bigint NOT NULL DEFAULT '0',
  `FJOBCURRENTCOUNT` int NOT NULL DEFAULT '0',
  `FJOBHISTORYCOUNT` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EVT_JOBSTATI_EVENT` (`FEVENT`),
  KEY `IDX_EVT_JOBSTATI_SUBSCRIPTION` (`FSUBSCRIPTION`),
  KEY `IDX_EVT_JOBSTATI_SERVICE` (`FSERVICE`),
  KEY `IDX_EVT_JOBSTATI_HANDLER` (`FHANDLERTYPE`),
  KEY `IDX_EVT_JOBSTATI_YEARS` (`FYEARS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_evt_jobstatistics_l definition

CREATE TABLE `t_evt_jobstatistics_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(136) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EVT_JOBSTATISTICS_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_evt_jobstatistics_r3 definition

CREATE TABLE `t_evt_jobstatistics_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_evt_log definition

CREATE TABLE `t_evt_log` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBUSINESSKEY` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTNUMBER` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTENT` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FSCENE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOBID` bigint NOT NULL DEFAULT '0',
  `FEVENTID` bigint NOT NULL DEFAULT '0',
  `FSERVICEID` bigint NOT NULL DEFAULT '0',
  `FSUBSCRIBEID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EVT_LOG_JOBID` (`FJOBID`),
  KEY `IDX_EVT_LOG_CREATEDATE` (`FCREATEDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_evt_log_r3 definition

CREATE TABLE `t_evt_log_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_evt_service definition

CREATE TABLE `t_evt_service` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FIMPLEMENTATION` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIG` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSCENE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINNERSERVICE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EVT_SERVICE_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_evt_service_l definition

CREATE TABLE `t_evt_service_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EVT_SERVICE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_evt_service_r3 definition

CREATE TABLE `t_evt_service_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_evt_subscription definition

CREATE TABLE `t_evt_subscription` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FEVENT` bigint NOT NULL DEFAULT '0',
  `FSERVICE` bigint NOT NULL DEFAULT '0',
  `FSERVICECONFIG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FNUMBER` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISCONCURRENT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FEXPRESSION` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FCONDITION` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FERRORSTRATEGY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERRORNOTIFY` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FSEQUENCE` int NOT NULL DEFAULT '0',
  `FTIMINGSTRATEGY` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSERVICENUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNOTIFYTEXT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXECUTOR` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXECUTORVALUE` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPREINSDATA` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISMODIFIED` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FEVENTSPLITCONFIG` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXECUTIONSTRATEGY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EVT_SUBSCR_EVENT` (`FEVENT`),
  KEY `IDX_EVT_SUBSCR_EVTNUMBER` (`FEVENTNUMBER`),
  KEY `IDX_EVT_SUBSCR_SERVICE` (`FSERVICE`),
  KEY `IDX_EVT_SUBSCR_SERVNUMBER` (`FSERVICENUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_evt_subscription_l definition

CREATE TABLE `t_evt_subscription_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNOTIFYTEXT` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EVT_SUBSCRIPTION_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_evt_subscription_r3 definition

CREATE TABLE `t_evt_subscription_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_evt_timerjob definition

CREATE TABLE `t_evt_timerjob` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCKEXPTIME` datetime DEFAULT NULL,
  `FLOCKOWNERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXCLUSIVE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FEXECUTIONID` bigint NOT NULL DEFAULT '0',
  `FPROCESSINSTANCEID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FRETRIES` int NOT NULL DEFAULT '3',
  `FEXCEPTIONMSG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FDUEDATE` datetime DEFAULT NULL,
  `FREPEAT` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHANDLERTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHANDLERCFG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FBUSINESSKEY` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATION` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FELEMENTID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FSRCJOBID` bigint NOT NULL DEFAULT '0',
  `FROOTTRACENO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCTRACEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZKEY` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROOTEVENTINSTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EVT_TIMER_JOB_EXECUTIONID` (`FEXECUTIONID`),
  KEY `IDX_EVT_TIMER_JOB_PROC_DEF_ID` (`FPROCDEFID`),
  KEY `IDX_EVT_TIMER_JOB_PROCESS_ID` (`FPROCESSINSTANCEID`),
  KEY `IDX_EVT_TIMER_JOB_DUEDATE` (`FLOCKOWNERID`,`FDUEDATE`),
  KEY `IDX_EVT_TIMER_JOB_BUSKEY` (`FBUSINESSKEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_evt_timerjob_r3 definition

CREATE TABLE `t_evt_timerjob_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_archive definition

CREATE TABLE `t_msg_archive` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FARCHIVEENTITY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATABASE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATABASEZONE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDBZONENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCHEDULETOTALSUM` bigint NOT NULL DEFAULT '0',
  `FPROGRESS` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPREDICTTIME` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FALLDATASUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FFAILREASON` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCHEDULESIZE` int NOT NULL DEFAULT '0',
  `FARCHIVEMSG` longtext COLLATE utf8mb4_unicode_ci,
  `FARCHPLANSTARTDATE` datetime DEFAULT NULL,
  `FARCHSERVICESTARTDATE` datetime DEFAULT NULL,
  `FARCHSERVICEENDDATE` datetime DEFAULT NULL,
  `FARCHIVERANGE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FARCHSTARTDATE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FARCHENDDATE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FCREATOR` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_MSG_ARCHIVE_NUMBER` (`FNUMBER`),
  KEY `IDX_MSG_ARCHIVE_STATE` (`FSTATE`),
  KEY `IDX_MSG_ARCHIVE_ENTITY` (`FARCHIVEENTITY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_archive_l definition

CREATE TABLE `t_msg_archive_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDBZONENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_MSG_ARCHIVE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_archivedetail definition

CREATE TABLE `t_msg_archivedetail` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FENTITYNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYDATERANGE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYARCHIVESUM` bigint NOT NULL DEFAULT '0',
  `FENTITYTOTALSUM` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_MSG_ARCHIVEDETAIL` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_archivedetail_l definition

CREATE TABLE `t_msg_archivedetail_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_MSG_ARCHIVEDETAIL_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_archivelog definition

CREATE TABLE `t_msg_archivelog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FARCHIVESERVICE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FARCHIVESERVICEID` bigint NOT NULL DEFAULT '0',
  `FENTITY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTENTITY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCHEDULEID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FSUMMARY` int NOT NULL DEFAULT '0',
  `FSTATE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FSCHSTARTDATE` datetime DEFAULT NULL,
  `FSCHENDDATE` datetime DEFAULT NULL,
  `FTARGETDATE` datetime DEFAULT NULL,
  `FRESOURCEIDS` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_MSG_ARCHIVELOG_ENTITY` (`FENTITY`),
  KEY `IDX_MSG_ARCHIVELOG_ARCHIVEID` (`FARCHIVESERVICEID`),
  KEY `IDX_MSG_ARCHIVELOG_SCHEDULE` (`FSCHEDULEID`),
  KEY `IDX_MSG_ARCHIVELOG_TASKID` (`FTASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_channel definition

CREATE TABLE `t_msg_channel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCATEGORY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMOBILEAPP` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSMTPHOST` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSMTPPORT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPASSWORD` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFROMACCOUNT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSMSAPIURL` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSMSCODE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLIENTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLIENTSECRET` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMOBILEAPPCONFIG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FSERVICECLASS` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCORPID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAGENTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPKEY` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPSECRET` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISHASDINGTPL` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTPLPROCESSCODE` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTPLNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDOMAIN` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FTLS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNAME` varchar(230) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFROMUSERNAME` varchar(230) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIG` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOGENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_MSG_CHANNEL_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_channel_l definition

CREATE TABLE `t_msg_channel_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(230) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFROMUSERNAME` varchar(230) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_MSG_CHANNEL_LOCALEID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_channel_r3 definition

CREATE TABLE `t_msg_channel_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_event_r3 definition

CREATE TABLE `t_msg_event_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_eventlisteners definition

CREATE TABLE `t_msg_eventlisteners` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMSGTYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATA` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FENTITYNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGTYPENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_MSG_EVENTLISTENERS` (`FENTITYNUMBER`,`FMSGTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_eventlisteners_l definition

CREATE TABLE `t_msg_eventlisteners_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGTYPENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_MSG_EVENTLISTENERS_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_eventlisteners_r3 definition

CREATE TABLE `t_msg_eventlisteners_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_eventlog_r3 definition

CREATE TABLE `t_msg_eventlog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_pubacc definition

CREATE TABLE `t_msg_pubacc` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCODE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FKEY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_T_MSG_PUBACC_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_pubacc_l definition

CREATE TABLE `t_msg_pubacc_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_MSG_PUBACC_L_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_pubacc_r3 definition

CREATE TABLE `t_msg_pubacc_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_quantitysum definition

CREATE TABLE `t_msg_quantitysum` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FDATATYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPE` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUANTITYSUM` int NOT NULL DEFAULT '0',
  `FUPDATEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_MSG_QTYSUM_USERID` (`FUSERID`,`FDATATYPE`),
  KEY `IDX_MSG_QTYSUM_BILLTYPE` (`FBILLTYPE`,`FUSERID`,`FDATATYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_quantitysum_r3 definition

CREATE TABLE `t_msg_quantitysum_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_selectscene definition

CREATE TABLE `t_msg_selectscene` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_MSG_SELECTSCENE` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_srvcfg definition

CREATE TABLE `t_msg_srvcfg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSMTPHOST` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSMTPPORT` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPASSWORD` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFROMACCOUNT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSMSAPIURL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLIENTID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLIENTSECRET` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSMSCODE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPUBACCAPIURL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONSUMER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFROMUSERNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_MSG_SRVCFG_HOST` (`FSMTPHOST`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_srvcfg_l definition

CREATE TABLE `t_msg_srvcfg_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFROMUSERNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_T_MSG_SRVCFG_L_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_srvcfg_r3 definition

CREATE TABLE `t_msg_srvcfg_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_template definition

CREATE TABLE `t_msg_template` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMSGTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGCHANNEL` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGSCENE` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGTEMPLATE` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FMSGENTITY` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FMSGSCENENAME` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZPLUGIN` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMONLANG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_MSG_TEMPLATE_MSGTYPE` (`FMSGTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_template_l definition

CREATE TABLE `t_msg_template_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGSCENENAME` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGTEMPLATE` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_MSG_TEMPLATE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_template_r3 definition

CREATE TABLE `t_msg_template_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_tplscene definition

CREATE TABLE `t_msg_tplscene` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPREINSDATA` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_MSG_TPLSCENE` (`FENTITYNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_tplscene_l definition

CREATE TABLE `t_msg_tplscene_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_MSG_TPLSCENE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_tplscene_r3 definition

CREATE TABLE `t_msg_tplscene_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_type definition

CREATE TABLE `t_msg_type` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCATEGORY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANNELS` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FNAME` varchar(230) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANNELNAME` varchar(230) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPREINSDATA` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_MSG_TYPE_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_type_l definition

CREATE TABLE `t_msg_type_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(230) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANNELNAME` varchar(230) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_MSG_TYPE_LOCALEID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_type_r3 definition

CREATE TABLE `t_msg_type_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_usercorrectlog definition

CREATE TABLE `t_msg_usercorrectlog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FLOGINTIME` datetime DEFAULT NULL,
  `FCORRECTTIME` datetime DEFAULT NULL,
  `FCONFIG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_MSG_USERCORRLOG_USERID` (`FUSERID`),
  KEY `IDX_MSG_USERCORRLOG_LOGINTIME` (`FLOGINTIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_welinktodo definition

CREATE TABLE `t_msg_welinktodo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FOPENID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULT` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRETRIES` int NOT NULL DEFAULT '0',
  `FCORPID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPSECRET` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_MSG_WELINKTODO_TASKUSER` (`FTASKID`,`FUSERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_welinktodo_r3 definition

CREATE TABLE `t_msg_welinktodo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_yzjtpl definition

CREATE TABLE `t_msg_yzjtpl` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTITYNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_MSG_YZJTPL` (`FENTITYNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_yzjtpl_l definition

CREATE TABLE `t_msg_yzjtpl_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_MSG_YZJTPL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_msg_yzjtpl_r3 definition

CREATE TABLE `t_msg_yzjtpl_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_pktemp_meta definition

CREATE TABLE `t_pktemp_meta` (
  `ftable_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fcreate_time` datetime NOT NULL,
  PRIMARY KEY (`ftable_name`),
  KEY `IX_T_PKTEMP_META_FCREATE_TIME` (`fcreate_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_admins definition

CREATE TABLE `t_wf_admins` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(50) NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBUSAPPID` bigint NOT NULL DEFAULT '0',
  `FBUSPROCESSID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) NOT NULL DEFAULT '1',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_ADMINS_FORGID` (`FORGID`),
  KEY `IDX_WF_ADMINS_USERID` (`FUSERID`,`FSTATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_admins_r2 definition

CREATE TABLE `t_wf_admins_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_admins_r3 definition

CREATE TABLE `t_wf_admins_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_adminsappentry definition

CREATE TABLE `t_wf_adminsappentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPIDS` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPNUMBERS` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPNAMES` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIVEMSG` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WF_ADMINSAPPENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_adminsentry definition

CREATE TABLE `t_wf_adminsentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FINCLUDESUBORG` char(1) NOT NULL DEFAULT '0',
  `FORGTYPE` varchar(50) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WF_ADMINSENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_alarmmsgsendlog definition

CREATE TABLE `t_wf_alarmmsgsendlog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FALARMSCENE` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTIMES` int NOT NULL DEFAULT '0',
  `FRECEIVER` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTENT` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTITLE` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANNELNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANNEL` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMESSAGEIDS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMESSAGEIDS_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FMONITORID` bigint NOT NULL DEFAULT '0',
  `FALARMRULEID` bigint NOT NULL DEFAULT '0',
  `FSTATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FGROUP` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_ALARMMSGSENDLOG_CRDATE` (`FCREATEDATE`),
  KEY `IDX_WF_ALARMMSGSENDLOG_SCENE` (`FALARMSCENE`,`FSTATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_alarmmsgsendlog_l definition

CREATE TABLE `t_wf_alarmmsgsendlog_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIVER` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTENT` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTITLE` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANNELNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_ALARMMSGSENDLOG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_alarmmsgsendlog_r3 definition

CREATE TABLE `t_wf_alarmmsgsendlog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_alarmrule definition

CREATE TABLE `t_wf_alarmrule` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FALARMSCENE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANNEL` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANNELNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIVER` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIVERNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTIMES` int NOT NULL DEFAULT '0',
  `FINTERVAL` int NOT NULL DEFAULT '0',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATOR` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FCONFIG` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_ALARMRULE_ALARMSCENE` (`FALARMSCENE`),
  KEY `IDX_WF_ALARMRULE_CREATEDATE` (`FCREATEDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_alarmrule_l definition

CREATE TABLE `t_wf_alarmrule_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIVERNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANNELNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_ALARMRULE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_alarmrule_r3 definition

CREATE TABLE `t_wf_alarmrule_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_appmodelrelation definition

CREATE TABLE `t_wf_appmodelrelation` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FAPPID` varchar(36) NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(50) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_APPMODELRELATION_FAPPID` (`FAPPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_appmodelrelation_r2 definition

CREATE TABLE `t_wf_appmodelrelation_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_appmodelrelation_r3 definition

CREATE TABLE `t_wf_appmodelrelation_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_attachmentfield definition

CREATE TABLE `t_wf_attachmentfield` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_ATTACHMENTFIELD` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_auditcommentgroup definition

CREATE TABLE `t_wf_auditcommentgroup` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_AUDITCOMMENTGROUP` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_auditcommentgroup_l definition

CREATE TABLE `t_wf_auditcommentgroup_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_AUDITCOMMENTGROUP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_auditcommentgroup_r3 definition

CREATE TABLE `t_wf_auditcommentgroup_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_basechangelogs definition

CREATE TABLE `t_wf_basechangelogs` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEFORMID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FTITLE` varchar(230) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAIL` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FSHOWDETAIL` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_BASECHANGELOGS` (`FBASEFORMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_basechangelogs_l definition

CREATE TABLE `t_wf_basechangelogs_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTITLE` varchar(230) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAIL` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FSHOWDETAIL` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_BASECHANGELOGS_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_basechangelogs_r3 definition

CREATE TABLE `t_wf_basechangelogs_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_basedatarefrecord definition

CREATE TABLE `t_wf_basedatarefrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FPROCNUM` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCHEMEID` bigint NOT NULL DEFAULT '0',
  `FACTIVITYID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUE` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROPERTY` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_BASEDATAREFRECORD` (`FVALUE`,`FTYPE`),
  KEY `IDX_WF_BASEDATAREFRECORD_DEL` (`FPROCDEFID`,`FSCHEMEID`,`FACTIVITYID`,`FPROPERTY`),
  KEY `IDX_WF_BASEDATAREF_SCHEMEID` (`FSCHEMEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_basedatarefrecord_l definition

CREATE TABLE `t_wf_basedatarefrecord_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_BASEDATAREFRECORD_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_basedatarefrecord_r3 definition

CREATE TABLE `t_wf_basedatarefrecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_behaviorcollect definition

CREATE TABLE `t_wf_behaviorcollect` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTAL` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FDIM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCATEGORY` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_BEHAVICOLL_NUMBERTYPE` (`FNUMBER`,`FTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_behaviorcollect_l definition

CREATE TABLE `t_wf_behaviorcollect_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_BEHAVIORCOLLECT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_behaviorcollect_r3 definition

CREATE TABLE `t_wf_behaviorcollect_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_billdyninfo definition

CREATE TABLE `t_wf_billdyninfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FACTIVITYID` varchar(255) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FSUBJECT` longtext,
  `FOPERATIONWHENSAVE` varchar(36) NOT NULL DEFAULT ' ',
  `FFIELDMODIFIED` char(1) NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FFORMKEY` varchar(50) NOT NULL DEFAULT ' ',
  `FMOBILEFORMKEY` varchar(50) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_BILLDYNINFO_PDEF` (`FPROCDEFID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_billdyninfo_r2 definition

CREATE TABLE `t_wf_billdyninfo_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_billdyninfo_r3 definition

CREATE TABLE `t_wf_billdyninfo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_billpageattrcfg definition

CREATE TABLE `t_wf_billpageattrcfg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FPAGENUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FFIELDNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FHIDE` char(1) NOT NULL DEFAULT '0',
  `FMODIFY` char(1) NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FTASKDEFID` varchar(255) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FNAME` varchar(115) NOT NULL DEFAULT ' ',
  `FPAGENAME` varchar(115) NOT NULL DEFAULT ' ',
  `FFIELDNAME` varchar(115) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_BILLPAGEATTRCFG_PDEF` (`FPROCDEFID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_billpageattrcfg_l definition

CREATE TABLE `t_wf_billpageattrcfg_l` (
  `FPKID` varchar(36) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) NOT NULL DEFAULT ' ',
  `FNAME` varchar(115) NOT NULL DEFAULT ' ',
  `FPAGENAME` varchar(115) NOT NULL DEFAULT ' ',
  `FFIELDNAME` varchar(115) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_BILLPAGEATTRCFG_LOC` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_billpageattrcfg_r2 definition

CREATE TABLE `t_wf_billpageattrcfg_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_billpageattrcfg_r3 definition

CREATE TABLE `t_wf_billpageattrcfg_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_billsubjectmodel definition

CREATE TABLE `t_wf_billsubjectmodel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLID` varchar(36) NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FFORMKEY` varchar(50) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FBILLNAME` varchar(115) NOT NULL DEFAULT ' ',
  `FBILLSUBJECT` longtext,
  `FFORMKEYNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FSAMPLE` varchar(3000) NOT NULL DEFAULT ' ',
  `FBILLSUBJECTMOB` longtext,
  `FBILLSUBJECTNAME` longtext,
  `FBILLSUBMOBNAME` longtext,
  `FSUBJECTSHOWNAME` varchar(3000) NOT NULL DEFAULT ' ',
  `FMAINFIELD` varchar(2000) NOT NULL DEFAULT ' ',
  `FBIZTRACENO` varchar(100) NOT NULL DEFAULT ' ',
  `FBIZTRACENODESC` varchar(100) NOT NULL DEFAULT ' ',
  `FMOBILEFORMKEY` varchar(50) NOT NULL DEFAULT ' ',
  `FMOBILEFORMKEYNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FPUSHSTATUSPLUGIN` longtext,
  `FREFERORGANIZATION` varchar(255) NOT NULL DEFAULT ' ',
  `FPERMISSIONSPLUGIN` longtext,
  `FBUSINESSFIELDMAPPINGINFO` longtext,
  `FVIEWCHATFLOWPERMPLUGIN` longtext,
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_BILLSUBJECTMODEL_ENTITY` (`FENTITYNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_billsubjectmodel_l definition

CREATE TABLE `t_wf_billsubjectmodel_l` (
  `FPKID` varchar(36) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(115) NOT NULL DEFAULT ' ',
  `FBILLSUBJECT` longtext,
  `FFORMKEYNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FSAMPLE` varchar(3000) NOT NULL DEFAULT ' ',
  `FBILLSUBJECTMOB` longtext,
  `FBILLSUBJECTNAME` longtext,
  `FBILLSUBMOBNAME` longtext,
  `FSUBJECTSHOWNAME` varchar(3000) NOT NULL DEFAULT ' ',
  `FBIZTRACENODESC` varchar(100) NOT NULL DEFAULT ' ',
  `FMOBILEFORMKEYNAME` varchar(255) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_BILLSUBJECTMODEL_LOC` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_billsubjectmodel_r2 definition

CREATE TABLE `t_wf_billsubjectmodel_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_billsubjectmodel_r3 definition

CREATE TABLE `t_wf_billsubjectmodel_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_cases definition

CREATE TABLE `t_wf_cases` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) NOT NULL DEFAULT ' ',
  `FSCENE` longtext,
  `FPROCESSTREND` longtext,
  `FMAINPOINT` longtext,
  `FTESTPOINT` longtext,
  `FFILENAME` varchar(200) NOT NULL DEFAULT ' ',
  `FMAINCLASS` varchar(200) NOT NULL DEFAULT ' ',
  `FFLOWCHART` varchar(500) NOT NULL DEFAULT ' ',
  `FEXECUTEMESSAGE` longtext,
  `FRESULT` char(1) DEFAULT NULL,
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FENABLE` char(1) NOT NULL DEFAULT '1',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FSCHEMEMAPJSON` longtext,
  `FPROCESSRESOURCE` longtext,
  `FKEYWORDS` varchar(500) NOT NULL DEFAULT ' ',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FNEWPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_CASES_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_cases_l definition

CREATE TABLE `t_wf_cases_l` (
  `FPKID` varchar(36) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_CASES_LOCALEID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_cases_r2 definition

CREATE TABLE `t_wf_cases_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_cases_r3 definition

CREATE TABLE `t_wf_cases_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_circulaterelation definition

CREATE TABLE `t_wf_circulaterelation` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTITYNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSINESSKEY` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZTRACENO` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FPARENTPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FEXECUTIONID` bigint NOT NULL DEFAULT '0',
  `FACTINSTID` bigint NOT NULL DEFAULT '0',
  `FACTID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTTYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNO` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZEVENTID` bigint NOT NULL DEFAULT '0',
  `FBIZTRACEDESC` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FPROCIDENTIFIER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZIDENTIFIER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_CIRCULATERELATION` (`FSOURCEID`,`FPROCINSTID`),
  KEY `IDX_WF_CIRELATION_TRACESRCID` (`FBIZTRACENO`,`FSOURCEID`),
  KEY `IDX_WF_CIRELATION_BUSENTITY` (`FBUSINESSKEY`,`FENTITYNUMBER`),
  KEY `IDX_WF_CIRELATION_PROCINST` (`FPROCINSTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_circulaterelation_l definition

CREATE TABLE `t_wf_circulaterelation_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZTRACEDESC` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_CIRCULATERELATION_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_circulaterelation_r3 definition

CREATE TABLE `t_wf_circulaterelation_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_cleandynamicconfi_r3 definition

CREATE TABLE `t_wf_cleandynamicconfi_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_cleandynamicconfig definition

CREATE TABLE `t_wf_cleandynamicconfig` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCLEANMODE` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLEANMOMENT` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRETENTIONTIME` int NOT NULL DEFAULT '0',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FLIMITQUANTITY` int NOT NULL DEFAULT '0',
  `FSTEPLIMITQUANTITY` int NOT NULL DEFAULT '0',
  `FSTEPLENGTH` int NOT NULL DEFAULT '0',
  `FPARAMS` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRELAENTITY` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORDER` int NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_CLEANDYN_ENTITYNUMBER` (`FENTITYNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_comauditcomment definition

CREATE TABLE `t_wf_comauditcomment` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) NOT NULL DEFAULT ' ',
  `FENABLE` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(500) NOT NULL DEFAULT ' ',
  `FDECISIONTYPE` varchar(30) NOT NULL DEFAULT 'approve',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_COMAUDITCOMMENT` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_comauditcomment_l definition

CREATE TABLE `t_wf_comauditcomment_l` (
  `FPKID` varchar(18) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FNAME` varchar(500) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_COMAUDITCOMMENT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_comauditcomment_r3 definition

CREATE TABLE `t_wf_comauditcomment_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_concurrentdata definition

CREATE TABLE `t_wf_concurrentdata` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FDATA` longtext COLLATE utf8mb4_unicode_ci,
  `FTYPE` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAM` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_CONCURDATA_TYPESTATE` (`FTYPE`,`FSTATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_conditiondetail definition

CREATE TABLE `t_wf_conditiondetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLEFTBRACKET` varchar(10) NOT NULL DEFAULT ' ',
  `FPARAMNUMBER` varchar(500) NOT NULL DEFAULT ' ',
  `FOPERATION` varchar(30) NOT NULL DEFAULT ' ',
  `FVALUE` longtext,
  `FRIGHTBRACKET` varchar(10) NOT NULL DEFAULT ' ',
  `FLOGIC` varchar(30) NOT NULL DEFAULT ' ',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FVALUETYPE` varchar(100) NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(255) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WF_CONDITIONDETAIL_ID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_conditionrule definition

CREATE TABLE `t_wf_conditionrule` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(30) NOT NULL DEFAULT ' ',
  `FELEMENTID` varchar(255) NOT NULL DEFAULT ' ',
  `FVALIDTIME` datetime DEFAULT NULL,
  `FEXPRESSION` longtext,
  `FPLUGIN` longtext,
  `FVERSION` varchar(36) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FPROPERTY` varchar(255) DEFAULT NULL,
  `FSHOWTEXT` varchar(184) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_CONDITIONRULE_PEDF` (`FPROCDEFID`),
  KEY `IDX_WF_CONDITIONRULE_TYPE` (`FTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_conditionrule_l definition

CREATE TABLE `t_wf_conditionrule_l` (
  `FPKID` varchar(36) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) NOT NULL DEFAULT ' ',
  `FSHOWTEXT` varchar(184) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_CONDITIONRULE_LOCALEID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_conditionrule_r2 definition

CREATE TABLE `t_wf_conditionrule_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_conditionrule_r3 definition

CREATE TABLE `t_wf_conditionrule_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_confcenter definition

CREATE TABLE `t_wf_confcenter` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(50) NOT NULL DEFAULT ' ',
  `FKEY` varchar(255) NOT NULL DEFAULT ' ',
  `FVALUE` varchar(2000) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_CONFCENTER_FKEY` (`FKEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_confcenter_r2 definition

CREATE TABLE `t_wf_confcenter_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_confcenter_r3 definition

CREATE TABLE `t_wf_confcenter_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_cooperationdef definition

CREATE TABLE `t_wf_cooperationdef` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) NOT NULL DEFAULT ' ',
  `FENABLE` varchar(30) NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSERVICENAME` varchar(100) NOT NULL DEFAULT ' ',
  `FAPPKEY` varchar(36) NOT NULL DEFAULT ' ',
  `FCLOUDKEY` varchar(36) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FBIZCLOUD` varchar(36) NOT NULL DEFAULT ' ',
  `FFACTORYPACKAGE` varchar(100) NOT NULL DEFAULT ' ',
  `FISPREINSDATA` char(1) NOT NULL DEFAULT '0',
  `FNAME` varchar(230) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_WF_COOPERATION_NUM` (`FNUMBER`),
  KEY `IDX_WF_COOPERATION_STATUS` (`FSTATUS`),
  KEY `IDX_WF_COOPERATION_ENABLE` (`FENABLE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_cooperationdef_l definition

CREATE TABLE `t_wf_cooperationdef_l` (
  `FPKID` varchar(18) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FNAME` varchar(230) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_COOPERATIONDEF_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_cooperationdef_r3 definition

CREATE TABLE `t_wf_cooperationdef_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_deadletterjob definition

CREATE TABLE `t_wf_deadletterjob` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(30) NOT NULL DEFAULT ' ',
  `FEXCLUSIVE` char(1) NOT NULL DEFAULT '0',
  `FEXECUTIONID` bigint NOT NULL DEFAULT '0',
  `FPROCESSINSTANCEID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FEXCEPTIONMSG` longtext,
  `FDUEDATE` datetime DEFAULT NULL,
  `FREPEAT` varchar(30) NOT NULL DEFAULT ' ',
  `FHANDLERTYPE` varchar(30) NOT NULL DEFAULT ' ',
  `FHANDLERCFG` longtext,
  `FBUSINESSKEY` varchar(36) NOT NULL DEFAULT ' ',
  `FOPERATION` varchar(300) NOT NULL DEFAULT ' ',
  `FERRORCODE` varchar(100) NOT NULL DEFAULT ' ',
  `FERRORTYPE` varchar(30) NOT NULL DEFAULT ' ',
  `FSOLUTION` varchar(2000) NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FEXCEPTIONSTACKMSG` longtext,
  `FELEMENTID` varchar(80) NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FSRCJOBID` bigint NOT NULL DEFAULT '0',
  `FROOTTRACENO` varchar(100) NOT NULL DEFAULT ' ',
  `FRETRIES` int NOT NULL DEFAULT '0',
  `FNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FENTRABILLNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FSUBJECT` varchar(2000) NOT NULL DEFAULT ' ',
  `FELEMENTNAME` varchar(500) NOT NULL DEFAULT ' ',
  `FBIZTRACENO` varchar(255) NOT NULL DEFAULT ' ',
  `FORGUNITID` bigint NOT NULL DEFAULT '0',
  `FORGVIEWID` varchar(50) NOT NULL DEFAULT ' ',
  `FPROCESSTYPE` varchar(100) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_DEADLETJOB_EXEC` (`FEXECUTIONID`),
  KEY `IDX_WF_DEADLETJOB_PROCDEF` (`FPROCDEFID`),
  KEY `IDX_WF_DEADLETJOB_PROC` (`FPROCESSINSTANCEID`),
  KEY `IDX_WF_DEADLETJOB_BUSKEY` (`FBUSINESSKEY`),
  KEY `IDX_WF_DEADLETTERJOB_DATE` (`FCREATEDATE`,`FMODIFYDATE`),
  KEY `IDX_WF_DEADJOB_TYPE_RETRIES` (`FRETRIES`,`FHANDLERTYPE`),
  KEY `IDX_WF_DEADJOB_ERRORTYPE` (`FERRORTYPE`),
  KEY `IDX_WF_DEADJOB_MODIFYDATE` (`FMODIFYDATE`,`FERRORTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_deadletterjob_l definition

CREATE TABLE `t_wf_deadletterjob_l` (
  `FPKID` varchar(36) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FENTRABILLNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FSUBJECT` varchar(2000) NOT NULL DEFAULT ' ',
  `FELEMENTNAME` varchar(500) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_DEADLETTERJOB_L_LOC` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_deadletterjob_r2 definition

CREATE TABLE `t_wf_deadletterjob_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_deadletterjob_r3 definition

CREATE TABLE `t_wf_deadletterjob_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_delegatesetting definition

CREATE TABLE `t_wf_delegatesetting` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FASSIGNORID` bigint NOT NULL DEFAULT '0',
  `FTRUSTEEID` bigint NOT NULL DEFAULT '0',
  `FENTRABILLID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FSENDMSG` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FRECEIVEMSG` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDELEGATETODO` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSCOPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDELEGATERULE` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FDELEGATEEXPRESSION` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FACTIVITYID` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDELERULESHOWTEXT` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYNAME` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_DELEGATESET_ASSIGNOR` (`FASSIGNORID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_delegatesetting_l definition

CREATE TABLE `t_wf_delegatesetting_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDELERULESHOWTEXT` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYNAME` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_DELEGATESETTING_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_delegatesetting_r3 definition

CREATE TABLE `t_wf_delegatesetting_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_deployment definition

CREATE TABLE `t_wf_deployment` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) NOT NULL DEFAULT ' ',
  `FCATEGORY` varchar(50) NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FDEPLOYTIME` datetime DEFAULT NULL,
  `FENGINEVERSION` varchar(36) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_DEPLOYMENT_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_deployment_r2 definition

CREATE TABLE `t_wf_deployment_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_deployment_r3 definition

CREATE TABLE `t_wf_deployment_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_deploysql definition

CREATE TABLE `t_wf_deploysql` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FFILENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILECONTENT` longtext COLLATE utf8mb4_unicode_ci,
  `FEXECUTIONTIME` datetime DEFAULT NULL,
  `FISSUCCESS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FERRORINFO` longtext COLLATE utf8mb4_unicode_ci,
  `FTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_DEPLOYSQL_FILENAME` (`FFILENAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_deploysql_r3 definition

CREATE TABLE `t_wf_deploysql_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_deploysqldetail definition

CREATE TABLE `t_wf_deploysqldetail` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCONTENT` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WF_DEPLOYSQLDETAIL` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_detaillog definition

CREATE TABLE `t_wf_detaillog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBUSINESSKEY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FENTITYNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FSUBPROCESSINSTANCEID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOWNER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBACTIVITYNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREJECTACTIVITYID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREJECTACTIVITYNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTID` bigint NOT NULL DEFAULT '0',
  `FCURRENTSUBJECT` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCATEGORY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOWNERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FOWNERAVATAR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXECUTIONTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHANDLESTATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FGROUPID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERRORMESSAGE` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTERMINALWAY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTAVATAR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDECISIONTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANNEL` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMESSAGEID` bigint NOT NULL DEFAULT '0',
  `FASSIGNEEID` bigint NOT NULL DEFAULT '0',
  `FASSIGNEE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSIGNEEAVATAR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTNAME` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPINION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODEBUSINESSKEY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODEENTITYNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_DETAILLOG_BUSKEY` (`FBUSINESSKEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_detaillog_l definition

CREATE TABLE `t_wf_detaillog_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBACTIVITYNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENTSUBJECT` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOWNER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSIGNEE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPINION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTNAME` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_DETAILLOG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_detaillog_r3 definition

CREATE TABLE `t_wf_detaillog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_devopsindicator definition

CREATE TABLE `t_wf_devopsindicator` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMVALUE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMDISPLAYVALUE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNT` int NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FPARAM` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENDTIMES` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_DEVOPSINDICATOR_DATE` (`FCREATEDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_devopsindicator_l definition

CREATE TABLE `t_wf_devopsindicator_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMDISPLAYVALUE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_DEVOPSINDICATOR_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_devopsindicator_r3 definition

CREATE TABLE `t_wf_devopsindicator_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_devopsrejectbills definition

CREATE TABLE `t_wf_devopsrejectbills` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBUSINESSKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREJECTTIMES` int NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_DEVOPSRJTBILL_ENTITY` (`FENTITYNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_devopsrejectbills_l definition

CREATE TABLE `t_wf_devopsrejectbills_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_DEVOPSREJECTBILLS_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_devopsrejectbills_r3 definition

CREATE TABLE `t_wf_devopsrejectbills_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_dingtodo definition

CREATE TABLE `t_wf_dingtodo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FDTPLID` varchar(200) NOT NULL DEFAULT ' ',
  `FDPROCINSTID` varchar(200) NOT NULL DEFAULT ' ',
  `FINSTSTATE` varchar(100) NOT NULL DEFAULT ' ',
  `FINSTRESLUT` varchar(100) NOT NULL DEFAULT ' ',
  `FINSTRETRIES` int NOT NULL DEFAULT '0',
  `FDTODOID` varchar(200) NOT NULL DEFAULT ' ',
  `FTODOSTATE` varchar(100) NOT NULL DEFAULT ' ',
  `FTODORESULT` varchar(100) NOT NULL DEFAULT ' ',
  `FTODORETIES` int NOT NULL DEFAULT '0',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_DINGTODO` (`FTASKID`,`FDTODOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_dingtpl definition

CREATE TABLE `t_wf_dingtpl` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTITYNUMBER` varchar(100) NOT NULL DEFAULT ' ',
  `FTPLID` varchar(200) NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(200) NOT NULL DEFAULT ' ',
  `FTPLNAME` varchar(200) NOT NULL DEFAULT ' ',
  `FTPLDESCRIPTION` varchar(500) NOT NULL DEFAULT ' ',
  `FCORPID` varchar(50) NOT NULL DEFAULT ' ',
  `FAGENTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_DINGTPL` (`FENTITYNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_dingtpl_l definition

CREATE TABLE `t_wf_dingtpl_l` (
  `FPKID` varchar(18) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(200) NOT NULL DEFAULT ' ',
  `FTPLNAME` varchar(200) NOT NULL DEFAULT ' ',
  `FTPLDESCRIPTION` varchar(500) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_DINGTPL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_durationdetail definition

CREATE TABLE `t_wf_durationdetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSINESSKEY` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FACTID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FSUSPENDTIME` datetime DEFAULT NULL,
  `FUNDOSUSPTIME` datetime DEFAULT NULL,
  `FSUSPDURATION` bigint NOT NULL DEFAULT '0',
  `FCALDURATION` bigint NOT NULL DEFAULT '0',
  `FREALDURATION` bigint NOT NULL DEFAULT '0',
  `FSUSPENDERID` bigint NOT NULL DEFAULT '0',
  `FERRORTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FPROCNAME` varchar(115) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYNAME` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUSPENDREASON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FACTINSTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_DURATIONDETAIL` (`FPROCINSTID`,`FACTID`),
  KEY `IDX_WF_DURATIONDETAIL_TTU` (`FTASKID`,`FTYPE`,`FUNDOSUSPTIME`),
  KEY `IDX_WF_DURATIONDETAIL_ACTINST` (`FACTINSTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_durationdetail_l definition

CREATE TABLE `t_wf_durationdetail_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCNAME` varchar(115) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYNAME` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUSPENDREASON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_DURATIONDETAIL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_durationdetail_r3 definition

CREATE TABLE `t_wf_durationdetail_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_dynconfscheme definition

CREATE TABLE `t_wf_dynconfscheme` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(255) NOT NULL DEFAULT ' ',
  `FCONDITIONID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FBPMNJSON` bigint NOT NULL DEFAULT '0',
  `FJSONPATCH` bigint NOT NULL DEFAULT '0',
  `FGRAPHXML` bigint NOT NULL DEFAULT '0',
  `FPARENTSCHEME` bigint NOT NULL DEFAULT '0',
  `FSTATE` varchar(30) NOT NULL DEFAULT ' ',
  `FDEFAULT` char(1) NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FCONDITIONEXPRESSION` longtext,
  `FSOURCEKEY` varchar(255) NOT NULL DEFAULT ' ',
  `FNAME` varchar(115) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) NOT NULL DEFAULT ' ',
  `FCONDITIONTEXT` varchar(184) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_DYNCONFSCHEME` (`FPROCDEFID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_dynconfscheme_l definition

CREATE TABLE `t_wf_dynconfscheme_l` (
  `FPKID` varchar(18) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FNAME` varchar(115) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) NOT NULL DEFAULT ' ',
  `FCONDITIONTEXT` varchar(184) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_DYNAMICCONFSCHEME_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_dynconfscheme_r2 definition

CREATE TABLE `t_wf_dynconfscheme_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_dynconfscheme_r3 definition

CREATE TABLE `t_wf_dynconfscheme_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_dynmodelconfig definition

CREATE TABLE `t_wf_dynmodelconfig` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FAPPID` varchar(36) NOT NULL DEFAULT ' ',
  `FSTENCILTYPE` varchar(100) NOT NULL DEFAULT ' ',
  `FSTENCILTYPENAME` varchar(100) NOT NULL DEFAULT ' ',
  `FCUSTOMRUNTIMECONFIG` longtext,
  `FCUSTOMDEFCONFIG` longtext,
  `FBUILTIN` char(1) NOT NULL DEFAULT '0',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FCUSTOMUICONFIG` longtext,
  `FISV` varchar(30) NOT NULL DEFAULT 'kingdee',
  `FCLOUDID` varchar(500) NOT NULL DEFAULT ' ',
  `FLIFECYCLECONFIG` varchar(3000) NOT NULL DEFAULT ' ',
  `FMANDATORY` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_DYNMODELCONFIG_APPID` (`FAPPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_dynmodelconfig_r2 definition

CREATE TABLE `t_wf_dynmodelconfig_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_dynmodelconfig_r3 definition

CREATE TABLE `t_wf_dynmodelconfig_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_dynresource definition

CREATE TABLE `t_wf_dynresource` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(70) NOT NULL DEFAULT ' ',
  `FCONTENT` longtext,
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FACTIVITYID` varchar(255) NOT NULL DEFAULT ' ',
  `FACTINSTID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FTYPE` varchar(50) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_DYNRESOURCE_TYPE` (`FTYPE`),
  KEY `IDX_WF_DYNRESOURCE_PROC` (`FPROCINSTID`,`FPROCDEFID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_dynresource_l definition

CREATE TABLE `t_wf_dynresource_l` (
  `FPKID` varchar(36) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) NOT NULL DEFAULT ' ',
  `FCONTENT` longtext,
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_DYNRESOURCE_LOCALEID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_dynresource_r2 definition

CREATE TABLE `t_wf_dynresource_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_dynresource_r3 definition

CREATE TABLE `t_wf_dynresource_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_eventsubscr definition

CREATE TABLE `t_wf_eventsubscr` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FEVENTTYPE` varchar(30) NOT NULL DEFAULT ' ',
  `FEVENTNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FEXECUTIONID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FACTIVITYID` varchar(255) NOT NULL DEFAULT ' ',
  `FCONFIGURATION` varchar(255) NOT NULL DEFAULT ' ',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FVERSION` varchar(50) NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FBUSINESSKEY` varchar(36) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_EVENT_SUBSCR_EXEC_ID` (`FEXECUTIONID`),
  KEY `IDX_WF_EVENTSUBSCR_EVENTNAME` (`FEVENTNAME`),
  KEY `IDX_WF_EVENTSUBSC_PROACTTYPE` (`FPROCINSTID`,`FACTIVITYID`,`FEVENTTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_eventsubscr_r2 definition

CREATE TABLE `t_wf_eventsubscr_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_eventsubscr_r3 definition

CREATE TABLE `t_wf_eventsubscr_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_evtinstancecollec_r3 definition

CREATE TABLE `t_wf_evtinstancecollec_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_evtinstancecollect definition

CREATE TABLE `t_wf_evtinstancecollect` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTID` bigint NOT NULL DEFAULT '0',
  `FSUBSCRIPTIONID` bigint NOT NULL DEFAULT '0',
  `FSERVICEID` bigint NOT NULL DEFAULT '0',
  `FTOTAL` int NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_EVTINSTCOLLECT_NUMBER` (`FNUMBER`),
  KEY `IDX_WF_EVTINSTCOLLECT_CREDATE` (`FCREATEDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_evtlog definition

CREATE TABLE `t_wf_evtlog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(255) NOT NULL DEFAULT ' ',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FEXECUTIONID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FTIMESTAMP` datetime DEFAULT NULL,
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FDATA` longtext,
  `FBUSINESSKEY` varchar(50) NOT NULL DEFAULT ' ',
  `FBILLNO` varchar(255) DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FJOBID` bigint NOT NULL DEFAULT '0',
  `FSRCJOBID` bigint NOT NULL DEFAULT '0',
  `FJOBTYPE` varchar(100) NOT NULL DEFAULT ' ',
  `FTRACENO` varchar(100) NOT NULL DEFAULT ' ',
  `FELEMENTID` varchar(200) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_EVTLOG_PROC` (`FPROCINSTID`),
  KEY `IDX_WF_EVTLOG_BILLNO` (`FBILLNO`),
  KEY `IDX_WF_EVTLOG_DATETIMESTAMP` (`FCREATEDATE`,`FTIMESTAMP`),
  KEY `IDX_WF_EVTLOG_TIMESTAMP` (`FTIMESTAMP`),
  KEY `IDX_WF_EVTLOG_BUSKEYJOBTYPE` (`FBUSINESSKEY`,`FJOBTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_evtlog_r2 definition

CREATE TABLE `t_wf_evtlog_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_evtlog_r3 definition

CREATE TABLE `t_wf_evtlog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_exceptedentity definition

CREATE TABLE `t_wf_exceptedentity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTITYNUMBER` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_EXCEPTEDENTITY_ENTNUM` (`FENTITYNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_exceptedentity_l definition

CREATE TABLE `t_wf_exceptedentity_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_EXCEPTEDENTITY_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_exceptedentity_r3 definition

CREATE TABLE `t_wf_exceptedentity_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_execution definition

CREATE TABLE `t_wf_execution` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FBUSINESSKEY` varchar(36) NOT NULL DEFAULT ' ',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FSUPEREXEC` bigint NOT NULL DEFAULT '0',
  `FROOTPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FACTID` varchar(2000) NOT NULL DEFAULT ' ',
  `FISACTIVE` char(1) NOT NULL DEFAULT '1',
  `FISCONCURRENT` char(1) NOT NULL DEFAULT '0',
  `FISSCOPE` char(1) NOT NULL DEFAULT '0',
  `FISEVENTSCOPE` char(1) NOT NULL DEFAULT '0',
  `FISMIROOT` char(1) NOT NULL DEFAULT '0',
  `FSUSPENSIONSTATE` varchar(50) NOT NULL DEFAULT ' ',
  `FCACHEDENTSTATE` smallint NOT NULL DEFAULT '0',
  `FSTARTUSERID` bigint NOT NULL DEFAULT '0',
  `FLOCKTIME` datetime DEFAULT NULL,
  `FISCOUNTENABLED` char(1) NOT NULL DEFAULT '0',
  `FEVTSUBSCRCOUNT` int NOT NULL DEFAULT '0',
  `FTASKCOUNT` int NOT NULL DEFAULT '0',
  `FJOBCOUNT` int NOT NULL DEFAULT '0',
  `FTIMERJOBCOUNT` int NOT NULL DEFAULT '0',
  `FSUSPJOBCOUNT` int NOT NULL DEFAULT '0',
  `FDEADLETTERJOBCOUNT` int NOT NULL DEFAULT '0',
  `FVARCOUNT` int NOT NULL DEFAULT '0',
  `FIDLINKCOUNT` int NOT NULL DEFAULT '0',
  `FENTITYNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FACTINSTID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FMAINORGID` bigint NOT NULL DEFAULT '0',
  `FSCHEMEID` bigint NOT NULL DEFAULT '0',
  `FTESTINGPLANID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(255) NOT NULL DEFAULT ' ',
  `FNAME` varchar(500) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) NOT NULL DEFAULT ' ',
  `FENTRABILLNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FSUBJECT` varchar(3000) NOT NULL DEFAULT ' ',
  `FACTIVITYNAME` varchar(500) NOT NULL DEFAULT ' ',
  `FBILLTYPE` varchar(50) NOT NULL DEFAULT ' ',
  `FBUSINESSID` varchar(255) NOT NULL DEFAULT ' ',
  `FBIZTRACENO` varchar(255) NOT NULL DEFAULT ' ',
  `FBATCHNUMBER` varchar(255) NOT NULL DEFAULT ' ',
  `FPROCESSTYPE` varchar(30) NOT NULL DEFAULT 'AuditFlow',
  `FORGVIEWID` varchar(50) NOT NULL DEFAULT ' ',
  `FSTARUSERNAMEFORMAT` varchar(500) NOT NULL DEFAULT ' ',
  `FPRESENTASSIGNEE` varchar(2000) NOT NULL DEFAULT ' ',
  `FPRIORITYSHOW` varchar(50) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_EXEC_BUSKEY` (`FBUSINESSKEY`),
  KEY `IDX_WF_EXEC_PROC_INST_ID` (`FPROCINSTID`),
  KEY `IDX_WF_EXEC_ROOT` (`FROOTPROCINSTID`),
  KEY `IDX_WF_EXECUTION_PARENT` (`FPARENTID`),
  KEY `IDX_WF_EXECUTION_PROC` (`FPROCDEFID`),
  KEY `IDX_WF_EXECUTION_SUPER` (`FSUPEREXEC`),
  KEY `IDX_WF_EXECUTION_TC_COUNT` (`FCREATORID`,`FPARENTID`,`FBILLTYPE`),
  KEY `IDX_WF_EXECUTION_CREATEDATE` (`FCREATEDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_execution_l definition

CREATE TABLE `t_wf_execution_l` (
  `FPKID` varchar(36) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) NOT NULL DEFAULT ' ',
  `FNAME` varchar(500) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) NOT NULL DEFAULT ' ',
  `FENTRABILLNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FSUBJECT` varchar(3000) NOT NULL DEFAULT ' ',
  `FACTIVITYNAME` varchar(500) NOT NULL DEFAULT ' ',
  `FSTARUSERNAMEFORMAT` varchar(500) NOT NULL DEFAULT ' ',
  `FPRESENTASSIGNEE` varchar(2000) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_EXECUTION_LOCALEID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_execution_r2 definition

CREATE TABLE `t_wf_execution_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_execution_r3 definition

CREATE TABLE `t_wf_execution_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_expressionext definition

CREATE TABLE `t_wf_expressionext` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTITYNUMBER` varchar(100) NOT NULL DEFAULT ' ',
  `FEXPRESSIONTEMPLATE` varchar(100) NOT NULL DEFAULT ' ',
  `FSTRUCTURENUMBER` varchar(100) NOT NULL DEFAULT ' ',
  `FPARSECLASS` varchar(255) NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(100) NOT NULL DEFAULT ' ',
  `FCONTROLTYPE` varchar(100) NOT NULL DEFAULT ' ',
  `FVALUETYPE` varchar(100) NOT NULL DEFAULT ' ',
  `FCOMPARETYPE` varchar(100) NOT NULL DEFAULT ' ',
  `FHASQUOTES` char(1) NOT NULL DEFAULT '0',
  `FVALUEENTITYNUMBER` varchar(100) NOT NULL DEFAULT ' ',
  `FORDER` int NOT NULL DEFAULT '0',
  `FVALUECOMBOITEMS` varchar(2000) NOT NULL DEFAULT ' ',
  `FUSECOUNT` int NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FISPREINSDATA` char(1) NOT NULL DEFAULT '0',
  `FNAME` varchar(230) NOT NULL DEFAULT ' ',
  `FTYPE` varchar(50) NOT NULL DEFAULT ' ',
  `FGROUPID` varchar(100) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_EXPRESSIONEXT` (`FENTITYNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_expressionext_l definition

CREATE TABLE `t_wf_expressionext_l` (
  `FPKID` varchar(18) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(36) NOT NULL DEFAULT ' ',
  `FNAME` varchar(230) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_expressionext_r2 definition

CREATE TABLE `t_wf_expressionext_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_expressionext_r3 definition

CREATE TABLE `t_wf_expressionext_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_failedjob definition

CREATE TABLE `t_wf_failedjob` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(30) NOT NULL DEFAULT ' ',
  `FEXECUTIONID` bigint NOT NULL DEFAULT '0',
  `FPROCESSINSTANCEID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FHANDLERTYPE` varchar(30) NOT NULL DEFAULT ' ',
  `FHANDLERCFG` longtext,
  `FOPERATION` varchar(300) NOT NULL DEFAULT ' ',
  `FELEMENTID` varchar(80) NOT NULL DEFAULT ' ',
  `FERRORTYPE` varchar(30) NOT NULL DEFAULT ' ',
  `FERRORCODE` varchar(100) NOT NULL DEFAULT ' ',
  `FEXCEPTIONMSG` longtext,
  `FEXCEPTIONSTACKMSG` longtext,
  `FENTITYNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FBUSINESSKEY` varchar(30) NOT NULL DEFAULT ' ',
  `FSOLUTION` varchar(2000) NOT NULL DEFAULT ' ',
  `FROOTTRACENO` varchar(100) NOT NULL DEFAULT ' ',
  `FOCCURRENCETIME` datetime DEFAULT NULL,
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FRETRIES` int NOT NULL DEFAULT '0',
  `FCHANNELTYPE` varchar(50) NOT NULL DEFAULT 'yunzhijia',
  `FNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FELEMENTNAME` varchar(500) NOT NULL DEFAULT ' ',
  `FSUBJECT` varchar(2000) NOT NULL DEFAULT ' ',
  `FENTRABILLNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FBIZTRACENO` varchar(255) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_FAILEDJOB_EXEC` (`FEXECUTIONID`),
  KEY `IDX_WF_FAILEDJOB_PROCINST` (`FPROCESSINSTANCEID`),
  KEY `IDX_WF_FAILEDJOB_PROCDEF` (`FPROCDEFID`),
  KEY `IDX_WF_FAILEDJOB_RETRIES` (`FRETRIES`),
  KEY `IDX_WF_FAILEDJOB_OCCURTIME` (`FOCCURRENCETIME`),
  KEY `IDX_WF_FAILEDJOB_BUSKEY` (`FBUSINESSKEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_failedjob_l definition

CREATE TABLE `t_wf_failedjob_l` (
  `FPKID` varchar(36) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FELEMENTNAME` varchar(500) NOT NULL DEFAULT ' ',
  `FSUBJECT` varchar(2000) NOT NULL DEFAULT ' ',
  `FENTRABILLNAME` varchar(255) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_FAILEDJOB_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_failedjob_r3 definition

CREATE TABLE `t_wf_failedjob_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_feedback definition

CREATE TABLE `t_wf_feedback` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FBUSINESSKEY` varchar(50) NOT NULL DEFAULT ' ',
  `FFEEDBACKMSG` longtext,
  `FFEEDBACKIMG` varchar(255) NOT NULL DEFAULT ' ',
  `FFEEDBACKATTACH` varchar(255) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_FEEDBACK_BUSIKEY` (`FBUSINESSKEY`),
  KEY `IDX_WF_FEEDBACK_PROC` (`FPROCINSTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_feedback_l definition

CREATE TABLE `t_wf_feedback_l` (
  `FPKID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFEEDBACKMSG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FPKID`),
  KEY `IDX_T_WF_FEEDBACK_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_feedback_r2 definition

CREATE TABLE `t_wf_feedback_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_feedback_r3 definition

CREATE TABLE `t_wf_feedback_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_gebytearray definition

CREATE TABLE `t_wf_gebytearray` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FDEPLOYMENTID` bigint NOT NULL DEFAULT '0',
  `FCONTENT` longtext,
  `FGENERATED` char(1) NOT NULL DEFAULT '0',
  `FCURRENTLANGUAGE` varchar(8) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_GEBYTEARRAY_DPY` (`FDEPLOYMENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_gebytearray_l definition

CREATE TABLE `t_wf_gebytearray_l` (
  `FPKID` varchar(36) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) NOT NULL DEFAULT ' ',
  `FCONTENT` longtext,
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_GEBYTEARRAY_LOCALEID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_gebytearray_r2 definition

CREATE TABLE `t_wf_gebytearray_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_gebytearray_r3 definition

CREATE TABLE `t_wf_gebytearray_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hiactinst definition

CREATE TABLE `t_wf_hiactinst` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FEXECUTIONID` bigint NOT NULL DEFAULT '0',
  `FACTID` varchar(255) NOT NULL DEFAULT ' ',
  `FPARENTTASKID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FCALLPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FACTTYPE` varchar(50) NOT NULL DEFAULT ' ',
  `FASSIGNEEID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FDURATION` bigint NOT NULL DEFAULT '0',
  `FSOURCEELEMENTID` bigint NOT NULL DEFAULT '0',
  `FTARGETELEMENTID` bigint NOT NULL DEFAULT '0',
  `FEXECUTIONTYPE` varchar(30) NOT NULL DEFAULT ' ',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FSTEP` int NOT NULL DEFAULT '0',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FCYCLE` varchar(255) NOT NULL DEFAULT ' ',
  `FJOINFLAG` varchar(2000) NOT NULL DEFAULT ' ',
  `FFORKPATH` varchar(2000) NOT NULL DEFAULT ' ',
  `FACTNAME` varchar(500) NOT NULL DEFAULT ' ',
  `FASSIGNEE` varchar(115) NOT NULL DEFAULT ' ',
  `FSKIPREASON` varchar(2000) NOT NULL DEFAULT ' ',
  `FDELETEREASON` varchar(2000) NOT NULL DEFAULT ' ',
  `FREALDURATION` bigint NOT NULL DEFAULT '0',
  `FBIZTRACENO` varchar(255) NOT NULL DEFAULT ' ',
  `FBUSINESSKEY` varchar(36) NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(255) NOT NULL DEFAULT ' ',
  `FBILLNO` varchar(255) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_HI_ACT_INST_END` (`FENDTIME`),
  KEY `IDX_WF_HI_ACT_INST_EXEC` (`FEXECUTIONID`,`FACTID`),
  KEY `IDX_WF_HI_ACT_INST_PROCINST` (`FPROCINSTID`,`FACTID`),
  KEY `IDX_WF_HI_ACT_INST_START` (`FCREATEDATE`),
  KEY `IDX_WF_HIACTINST_TASKID` (`FTASKID`,`FSTEP`),
  KEY `IDX_WF_HIACTINST_BUSINESSKEY` (`FBUSINESSKEY`,`FENTITYNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hiactinst_l definition

CREATE TABLE `t_wf_hiactinst_l` (
  `FPKID` varchar(36) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) NOT NULL DEFAULT ' ',
  `FACTNAME` varchar(500) NOT NULL DEFAULT ' ',
  `FASSIGNEE` varchar(115) NOT NULL DEFAULT ' ',
  `FSKIPREASON` varchar(2000) NOT NULL DEFAULT ' ',
  `FDELETEREASON` varchar(2000) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_HIACTINST_LOCALEID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hiactinst_r2 definition

CREATE TABLE `t_wf_hiactinst_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hiactinst_r3 definition

CREATE TABLE `t_wf_hiactinst_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hiattachment definition

CREATE TABLE `t_wf_hiattachment` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(50) NOT NULL DEFAULT ' ',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FCONTENTID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FURLID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_HIATTACHMENT_TASK` (`FTASKID`),
  KEY `IDX_WF_HIATTACHMENT_PROC` (`FPROCINSTID`),
  KEY `IDX_WF_HIATTACHMENT_CONTID` (`FCONTENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hiattachment_l definition

CREATE TABLE `t_wf_hiattachment_l` (
  `FPKID` varchar(36) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_HIATTACHMENT_LOCALEID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hiattachment_r2 definition

CREATE TABLE `t_wf_hiattachment_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hiattachment_r3 definition

CREATE TABLE `t_wf_hiattachment_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hiauditpointinst definition

CREATE TABLE `t_wf_hiauditpointinst` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCESSINSTANCEID` bigint NOT NULL DEFAULT '0',
  `FEXECUTIONID` bigint NOT NULL DEFAULT '0',
  `FACTIVITYINSTANCEID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FACTID` varchar(255) NOT NULL DEFAULT ' ',
  `FBUSINESSKEY` varchar(50) NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FTYPE` varchar(50) NOT NULL DEFAULT ' ',
  `FBUSINESSRULE` longtext,
  `FCHECKRESULT` varchar(50) NOT NULL DEFAULT ' ',
  `FISNEEDREASON` char(1) NOT NULL DEFAULT '0',
  `FFAILEDEXPRESSION` longtext,
  `FISNEEDMARK` char(1) NOT NULL DEFAULT '0',
  `FISIMMEDIATELY` char(1) NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FASSIGNEEID` bigint NOT NULL DEFAULT '0',
  `FDESCEXPRESSION` longtext,
  `FAUDITPOINTSEQ` int NOT NULL DEFAULT '0',
  `FDISPLAYNAME` varchar(1000) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) NOT NULL DEFAULT ' ',
  `FFAILEDREASON` varchar(2000) NOT NULL DEFAULT ' ',
  `FASSIGNEENAME` varchar(100) NOT NULL DEFAULT ' ',
  `FCONDITION` longtext,
  `FISDISPLAY` char(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_HIAUDITPOINTINST_TASK` (`FTASKID`),
  KEY `IDX_WF_HIAUDITPOINT_PROC_ACT` (`FPROCESSINSTANCEID`,`FACTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hiauditpointinst_l definition

CREATE TABLE `t_wf_hiauditpointinst_l` (
  `FPKID` varchar(18) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FDISPLAYNAME` varchar(1000) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) NOT NULL DEFAULT ' ',
  `FFAILEDREASON` varchar(2000) NOT NULL DEFAULT ' ',
  `FASSIGNEENAME` varchar(100) NOT NULL DEFAULT ' ',
  `FFAILEDEXPRESSION` longtext,
  `FDESCEXPRESSION` longtext,
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_HIAUDITPOINTINST_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hiauditpointinst_r3 definition

CREATE TABLE `t_wf_hiauditpointinst_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hicomment definition

CREATE TABLE `t_wf_hicomment` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(100) NOT NULL DEFAULT ' ',
  `FTIME` datetime DEFAULT NULL,
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FACTIVITYID` varchar(255) NOT NULL DEFAULT ' ',
  `FRESULTNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FDECISIONTYPE` varchar(50) NOT NULL DEFAULT ' ',
  `FGROUPID` varchar(50) NOT NULL DEFAULT ' ',
  `FBACKTOBACK` char(1) NOT NULL DEFAULT '0',
  `FBUSINESSKEY` varchar(36) NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FOWNERID` bigint NOT NULL DEFAULT '0',
  `FBIZIDENTIFYKEY` varchar(255) NOT NULL DEFAULT ' ',
  `FISPUBLIC` char(1) NOT NULL DEFAULT '0',
  `FSTEP` int NOT NULL DEFAULT '0',
  `FMESSAGE` varchar(2000) NOT NULL DEFAULT ' ',
  `FRESULTNAME` varchar(115) NOT NULL DEFAULT ' ',
  `FASSIGNEE` varchar(500) NOT NULL DEFAULT ' ',
  `FACTIVITYNAME` varchar(500) NOT NULL DEFAULT ' ',
  `FSUBACTIVITYNAME` varchar(230) NOT NULL DEFAULT ' ',
  `FUSERNAMEFORMATTER` varchar(500) NOT NULL DEFAULT ' ',
  `FCOORDINVITEOPINION` longtext,
  `FSUBPROCESSINSTANCEID` bigint NOT NULL DEFAULT '0',
  `FTERMINALWAY` varchar(500) NOT NULL DEFAULT ' ',
  `FRICHTEXTMESSAGE` longtext,
  `FTRUSTNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FCURRENTSUBJECT` varchar(3000) NOT NULL DEFAULT ' ',
  `FSENSITIVEFIELDCHANGE` longtext,
  `FBILLNO` varchar(255) NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(115) NOT NULL DEFAULT ' ',
  `FSENDERNAMEFORMAT` varchar(255) NOT NULL DEFAULT ' ',
  `FSTARTNAMEFORMAT` varchar(255) NOT NULL DEFAULT ' ',
  `FSTARTERID` bigint NOT NULL DEFAULT '0',
  `FPRESENTASSIGNEE` varchar(1000) NOT NULL DEFAULT ' ',
  `FPROCESSINGMOBILEPAGE` varchar(50) NOT NULL DEFAULT ' ',
  `FPROCESSINGPAGE` varchar(50) NOT NULL DEFAULT ' ',
  `FHANDLESTATE` varchar(30) NOT NULL DEFAULT ' ',
  `FCATEGORY` varchar(50) NOT NULL DEFAULT ' ',
  `FSENDERNAME` varchar(400) NOT NULL DEFAULT ' ',
  `FSTARTNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FDELEGATEID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FEXECUTIONTYPE` varchar(30) NOT NULL DEFAULT ' ',
  `FISDISPLAY` char(1) NOT NULL DEFAULT '1',
  `FENDTYPE` varchar(30) NOT NULL DEFAULT '1',
  `FBILLTYPE` varchar(50) NOT NULL DEFAULT ' ',
  `FEXTENDDATE` datetime DEFAULT NULL,
  `FEXTENDNUMBER` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEXTENDFORMAT` longtext,
  `FEXTENDSTR1` varchar(255) NOT NULL DEFAULT ' ',
  `FEXTENDSTR2` varchar(255) NOT NULL DEFAULT ' ',
  `FEXTENDMULSTR1` varchar(255) NOT NULL DEFAULT ' ',
  `FEXTENDMULSTR2` varchar(255) NOT NULL DEFAULT ' ',
  `FPROCESSTYPE` varchar(30) NOT NULL DEFAULT 'AuditFlow',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_HICOMMENT_PROC` (`FPROCINSTID`),
  KEY `IDX_WF_HICOMMENT_ENUM` (`FENTITYNUMBER`),
  KEY `IDX_WF_HICOMMENT_BUSINESSKEY` (`FBUSINESSKEY`),
  KEY `IDX_WF_HICOMMENT_TASK` (`FTASKID`,`FTYPE`),
  KEY `IDX_WF_HICOMMENT_USERID` (`FUSERID`,`FTYPE`,`FEXECUTIONTYPE`),
  KEY `IDX_WF_HICOMMENT_OWNER` (`FOWNERID`,`FTYPE`,`FEXECUTIONTYPE`),
  KEY `IDX_WF_HICOMMENT_TIME` (`FTIME`),
  KEY `IDX_WF_HICOMMENT_DELEGATEID` (`FDELEGATEID`,`FTYPE`,`FEXECUTIONTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hicomment_a definition

CREATE TABLE `t_wf_hicomment_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FEXTENDDATE2` datetime DEFAULT NULL,
  `FEXTENDNUMBER2` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_HICOMMENT_A_EXTDATE` (`FEXTENDDATE2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_hicomment_l definition

CREATE TABLE `t_wf_hicomment_l` (
  `FPKID` varchar(36) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) NOT NULL DEFAULT ' ',
  `FMESSAGE` varchar(2000) NOT NULL DEFAULT ' ',
  `FRESULTNAME` varchar(115) NOT NULL DEFAULT ' ',
  `FASSIGNEE` varchar(500) NOT NULL DEFAULT ' ',
  `FACTIVITYNAME` varchar(500) NOT NULL DEFAULT ' ',
  `FSUBACTIVITYNAME` varchar(230) NOT NULL DEFAULT ' ',
  `FUSERNAMEFORMATTER` varchar(500) NOT NULL DEFAULT ' ',
  `FCOORDINVITEOPINION` longtext,
  `FTRUSTNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FCURRENTSUBJECT` varchar(3000) NOT NULL DEFAULT ' ',
  `FSENSITIVEFIELDCHANGE` longtext,
  `FENTITYNAME` varchar(115) NOT NULL DEFAULT ' ',
  `FSENDERNAMEFORMAT` varchar(255) NOT NULL DEFAULT ' ',
  `FSTARTNAMEFORMAT` varchar(255) NOT NULL DEFAULT ' ',
  `FPRESENTASSIGNEE` varchar(1000) NOT NULL DEFAULT ' ',
  `FSENDERNAME` varchar(400) NOT NULL DEFAULT ' ',
  `FSTARTNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FEXTENDMULSTR1` varchar(255) NOT NULL DEFAULT ' ',
  `FEXTENDMULSTR2` varchar(255) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_HICOMMENT_LOCALEID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hicomment_r2 definition

CREATE TABLE `t_wf_hicomment_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hicomment_r3 definition

CREATE TABLE `t_wf_hicomment_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hiconditioninst definition

CREATE TABLE `t_wf_hiconditioninst` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FEXECUTIONID` bigint NOT NULL DEFAULT '0',
  `FACTIVITYID` varchar(255) NOT NULL DEFAULT ' ',
  `FACTINSTID` bigint NOT NULL DEFAULT '0',
  `FCONDITIONALRULEID` bigint NOT NULL DEFAULT '0',
  `FVERSION` varchar(36) NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FDURATION` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FKEY` varchar(500) NOT NULL DEFAULT ' ',
  `FLOGMSG` longtext,
  `FEXPRESSION` longtext,
  `FBUSINESSKEY` varchar(150) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_HICONDITIONINST_PROC` (`FPROCINSTID`),
  KEY `IDX_WF_HICONDINST_BUSKEYACTID` (`FBUSINESSKEY`,`FACTIVITYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hiconditioninst_r2 definition

CREATE TABLE `t_wf_hiconditioninst_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hiconditioninst_r3 definition

CREATE TABLE `t_wf_hiconditioninst_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hiconditionrule definition

CREATE TABLE `t_wf_hiconditionrule` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCONDITIONALRULEID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FVALIDTIME` datetime DEFAULT NULL,
  `FINVALIDTIME` datetime DEFAULT NULL,
  `FEXPRESSION` longtext,
  `FPLUGIN` longtext,
  `FVERSION` varchar(36) NOT NULL DEFAULT ' ',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FCREATEDATE` datetime DEFAULT NULL,
  `FSHOWTEXT` varchar(184) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_HICONDITIONRULE_PDEF` (`FPROCDEFID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hiconditionrule_l definition

CREATE TABLE `t_wf_hiconditionrule_l` (
  `FPKID` varchar(36) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) NOT NULL DEFAULT ' ',
  `FSHOWTEXT` varchar(184) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_HICONDITIONRULE_LOC` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hiconditionrule_r2 definition

CREATE TABLE `t_wf_hiconditionrule_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hiconditionrule_r3 definition

CREATE TABLE `t_wf_hiconditionrule_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hidelegatesetting definition

CREATE TABLE `t_wf_hidelegatesetting` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FDELEGATEID` bigint NOT NULL DEFAULT '0',
  `FASSIGNORID` bigint NOT NULL DEFAULT '0',
  `FTRUSTEEID` bigint NOT NULL DEFAULT '0',
  `FENTRABILLID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FSENDMSG` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FRECEIVEMSG` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDELEGATETODO` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSCOPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDELEGATERULE` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FDELEGATEEXPRESSION` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FACTIVITYID` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDELERULESHOWTEXT` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYNAME` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_HIDELEGATESETTING` (`FDELEGATEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_hidelegatesetting_l definition

CREATE TABLE `t_wf_hidelegatesetting_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDELERULESHOWTEXT` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYNAME` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_HIDELEGATESETTING_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_hidelegatesetting_r3 definition

CREATE TABLE `t_wf_hidelegatesetting_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_hidynresource definition

CREATE TABLE `t_wf_hidynresource` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(70) NOT NULL DEFAULT ' ',
  `FCONTENT` longtext,
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FACTIVITYID` varchar(255) NOT NULL DEFAULT ' ',
  `FACTINSTID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FDURATION` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FDELETEREASON` varchar(2000) NOT NULL DEFAULT ' ',
  `FTYPE` varchar(50) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_HIDYNRESOURCE_PROC` (`FPROCDEFID`,`FPROCINSTID`),
  KEY `IDX_WF_HIDYNRESOURCE_TYPE` (`FTYPE`),
  KEY `IDX_WF_HIDYNRESOURCE_PROCINST` (`FPROCINSTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hidynresource_l definition

CREATE TABLE `t_wf_hidynresource_l` (
  `FPKID` varchar(36) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) NOT NULL DEFAULT ' ',
  `FCONTENT` longtext,
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_HIDYNRESOURCE_LOCALEID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hidynresource_r2 definition

CREATE TABLE `t_wf_hidynresource_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hidynresource_r3 definition

CREATE TABLE `t_wf_hidynresource_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hifeedback definition

CREATE TABLE `t_wf_hifeedback` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FBUSINESSKEY` varchar(50) NOT NULL DEFAULT ' ',
  `FFEEDBACKMSG` longtext,
  `FFEEDBACKIMG` varchar(255) NOT NULL DEFAULT ' ',
  `FFEEDBACKATTACH` varchar(255) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_HIFEEDBACK_BUSIKEY` (`FBUSINESSKEY`),
  KEY `IDX_WF_HIFEEDBACK_PROC` (`FPROCINSTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hifeedback_l definition

CREATE TABLE `t_wf_hifeedback_l` (
  `FPKID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFEEDBACKMSG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_HIFEEDBACK_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_hifeedback_r2 definition

CREATE TABLE `t_wf_hifeedback_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hifeedback_r3 definition

CREATE TABLE `t_wf_hifeedback_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hijobrecord definition

CREATE TABLE `t_wf_hijobrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCKEXPTIME` datetime DEFAULT NULL,
  `FLOCKOWNERID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXCLUSIVE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
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
  `FOPERATION` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FELEMENTID` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FSRCJOBID` bigint NOT NULL DEFAULT '0',
  `FROOTTRACENO` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXECUTOR` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUCCESS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FENDTIME` datetime DEFAULT NULL,
  `FDURATION` bigint NOT NULL DEFAULT '0',
  `FSTATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROOTJOBID` bigint NOT NULL DEFAULT '0',
  `FBIZTRACENO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGUNITID` bigint NOT NULL DEFAULT '0',
  `FORGVIEWID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_HIJOBRECORD_BUSKEYSTAT` (`FBUSINESSKEY`,`FSTATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_hijobrecord_r3 definition

CREATE TABLE `t_wf_hijobrecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_himessage definition

CREATE TABLE `t_wf_himessage` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTYPE` bigint NOT NULL DEFAULT '0',
  `FCONTENTURL` varchar(1000) NOT NULL DEFAULT ' ',
  `FSENDER` varchar(100) NOT NULL DEFAULT ' ',
  `FSENDTIME` datetime DEFAULT NULL,
  `FREADSTATE` varchar(30) NOT NULL DEFAULT ' ',
  `FREADTIME` datetime DEFAULT NULL,
  `FENTITYNUMBER` varchar(100) NOT NULL DEFAULT ' ',
  `FOPERATION` varchar(100) NOT NULL DEFAULT ' ',
  `FBIZDATAID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FDELETEDATE` datetime DEFAULT NULL,
  `FSOURCE` varchar(100) NOT NULL DEFAULT ' ',
  `FMOBCONTENTURL` varchar(1000) NOT NULL DEFAULT ' ',
  `FCHANNELS` varchar(200) NOT NULL DEFAULT ' ',
  `FSENDERNAME` varchar(230) NOT NULL DEFAULT ' ',
  `FTITLE` varchar(500) NOT NULL DEFAULT ' ',
  `FCONTENT` longtext,
  `FTAG` varchar(230) NOT NULL DEFAULT ' ',
  `FTOALL` char(1) NOT NULL DEFAULT '0',
  `FCONTENT_TAG` longtext,
  `FDELETEREASON` varchar(50) NOT NULL DEFAULT ' ',
  `FCONFIG` varchar(2000) NOT NULL DEFAULT ' ',
  `FTPLSCENE` varchar(200) NOT NULL DEFAULT ' ',
  `FCONTENT_SUMMARY` varchar(2000) NOT NULL DEFAULT ' ',
  `FNESTENTITYNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FNESTBILLID` bigint NOT NULL DEFAULT '0',
  `FNESTBILLNO` varchar(255) NOT NULL DEFAULT ' ',
  `FNESTAPPID` varchar(100) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_HIMESSAGE_TYPE` (`FTYPE`),
  KEY `IDX_WF_HIMESSAGE_TAG` (`FTAG`),
  KEY `IDX_WF_HIMESSAGE_ENTNUMBER` (`FENTITYNUMBER`),
  KEY `IDX_WF_HIMESSAGE_CREATEDATE` (`FCREATEDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_himessage_l definition

CREATE TABLE `t_wf_himessage_l` (
  `FPKID` varchar(36) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) NOT NULL DEFAULT ' ',
  `FTITLE` varchar(500) NOT NULL DEFAULT ' ',
  `FCONTENT` longtext,
  `FTAG` varchar(230) NOT NULL DEFAULT ' ',
  `FSENDERNAME` varchar(230) NOT NULL DEFAULT ' ',
  `FCONTENT_TAG` varchar(2000) NOT NULL DEFAULT ' ',
  `FCONTENT_SUMMARY` varchar(2000) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_HIMESSAGE_LOCALEID` (`FID`,`FLOCALEID`),
  KEY `IDX_WF_HIMESSAGE_L_TAG` (`FTAG`),
  KEY `IDX_WF_HIMESSAGE_L_TITLE` (`FTITLE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_himessage_r3 definition

CREATE TABLE `t_wf_himessage_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_himsgfail definition

CREATE TABLE `t_wf_himsgfail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMESSAGEID` bigint NOT NULL DEFAULT '0',
  `FUSERIDS` longtext COLLATE utf8mb4_unicode_ci,
  `FPUBACCNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTPLSCENE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANNEL` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSERVICECLASS` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRETRY` int NOT NULL DEFAULT '0',
  `FSTATE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREASON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FTITLE` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENDERNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANNELNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIG` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEMPLATE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOALL` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCHANNELCONTENT` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FDELETEDATE` datetime DEFAULT NULL,
  `FDELETEREASON` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRUNTIMECONFIG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_HIMSGFAIL_MSGID` (`FMESSAGEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_himsgfail_l definition

CREATE TABLE `t_wf_himsgfail_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTITLE` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENDERNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANNELNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANNELCONTENT` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_HIMSGFAIL_L` (`FID`,`FLOCALEID`),
  KEY `IDX_WF_HIMSGFAIL_L_CNAME` (`FCHANNELNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_himsgfail_r3 definition

CREATE TABLE `t_wf_himsgfail_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_himsgreceiver definition

CREATE TABLE `t_wf_himsgreceiver` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMESSAGEID` bigint NOT NULL DEFAULT '0',
  `FRECEIVERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FDELETEDATE` datetime DEFAULT NULL,
  `FREADSTATE` varchar(30) NOT NULL DEFAULT ' ',
  `FREADTIME` datetime DEFAULT NULL,
  `FTERMINALWAY` varchar(500) NOT NULL DEFAULT ' ',
  `FDELETEREASON` varchar(50) NOT NULL DEFAULT ' ',
  `FPOPUP` char(1) NOT NULL DEFAULT '0',
  `FTYPE` bigint NOT NULL DEFAULT '0',
  `FSENDER` varchar(100) NOT NULL DEFAULT ' ',
  `FSENDERNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(100) NOT NULL DEFAULT ' ',
  `FOPERATION` varchar(100) NOT NULL DEFAULT ' ',
  `FSOURCE` varchar(100) NOT NULL DEFAULT ' ',
  `FBIZDATAID` bigint NOT NULL DEFAULT '0',
  `FTOALL` char(1) NOT NULL DEFAULT '0',
  `FTITLE` varchar(500) NOT NULL DEFAULT ' ',
  `FTAG` varchar(100) NOT NULL DEFAULT ' ',
  `FTPLSCENE` varchar(200) NOT NULL DEFAULT ' ',
  `FCONFIG` varchar(2000) NOT NULL DEFAULT ' ',
  `FCONTENT_SUMMARY` varchar(255) NOT NULL DEFAULT ' ',
  `FCONTENTURL` varchar(1000) NOT NULL DEFAULT ' ',
  `FNESTENTITYNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FNESTBILLID` bigint NOT NULL DEFAULT '0',
  `FNESTBILLNO` varchar(255) NOT NULL DEFAULT ' ',
  `FNESTAPPID` varchar(100) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_HIMSGRECEIVER_MSG` (`FMESSAGEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_himsgreceiver_l definition

CREATE TABLE `t_wf_himsgreceiver_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENDERNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTITLE` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAG` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTENT_SUMMARY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_HIMSGRECEIVER_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_himsgreceiver_r3 definition

CREATE TABLE `t_wf_himsgreceiver_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hiparticipant definition

CREATE TABLE `t_wf_hiparticipant` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(30) NOT NULL DEFAULT ' ',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FPARENTTASKID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FOWNERID` bigint NOT NULL DEFAULT '0',
  `FTRANSFEROPINION` varchar(2000) NOT NULL DEFAULT ' ',
  `FSUBSCRIBESIGN` char(1) NOT NULL DEFAULT '1',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FDURATION` bigint NOT NULL DEFAULT '0',
  `FENDTIME` datetime DEFAULT NULL,
  `FPRIORITY` int NOT NULL DEFAULT '0',
  `FCOMPOSITETASKID` bigint NOT NULL DEFAULT '0',
  `FUSERNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FUSERNAMEFORMATTER` varchar(500) NOT NULL DEFAULT ' ',
  `FDELEGATEID` bigint NOT NULL DEFAULT '0',
  `FISDISPLAY` char(1) NOT NULL DEFAULT '1',
  `FTRUSTNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FTRUSTNAMEFORMAT` varchar(500) NOT NULL DEFAULT ' ',
  `FCURRENTSUBJECT` varchar(3000) NOT NULL DEFAULT ' ',
  `FREADTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_HI_IDENT_LNK_PROCINST` (`FPROCINSTID`),
  KEY `IDX_WF_HI_IDENT_LNK_TASK` (`FTASKID`),
  KEY `IDX_WF_HI_IDENT_LNK_USER` (`FUSERID`),
  KEY `IDX_WF_HIIDENLINK_PTASK_SUB` (`FPARENTTASKID`,`FSUBSCRIBESIGN`),
  KEY `IDX_WF_HIIDENTLNK_COMPTASK` (`FCOMPOSITETASKID`),
  KEY `IDX_WF_HIIDENTLNK_OWNERID` (`FOWNERID`,`FTYPE`,`FENDTIME`,`FDELEGATEID`),
  KEY `IDX_WF_HIIDENTLNK_CREATEDATE` (`FCREATEDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hiparticipant_l definition

CREATE TABLE `t_wf_hiparticipant_l` (
  `FPKID` varchar(18) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FUSERNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FTRANSFEROPINION` varchar(2000) NOT NULL DEFAULT ' ',
  `FUSERNAMEFORMATTER` varchar(500) NOT NULL DEFAULT ' ',
  `FTRUSTNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FTRUSTNAMEFORMAT` varchar(500) NOT NULL DEFAULT ' ',
  `FCURRENTSUBJECT` varchar(3000) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_HIPARTICIPANT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hiparticipant_r2 definition

CREATE TABLE `t_wf_hiparticipant_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hiparticipant_r3 definition

CREATE TABLE `t_wf_hiparticipant_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hiproccompact definition

CREATE TABLE `t_wf_hiproccompact` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FBUSINESSKEY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCESSTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'AuditFlow',
  `FACTINFO` longtext COLLATE utf8mb4_unicode_ci,
  `FBIZTRACENO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_HIPROCCOMPACT_PROCDEF` (`FPROCDEFID`),
  KEY `IDX_WF_HIPROCCOMPACT_PROCINST` (`FPROCINSTID`),
  KEY `IDX_WF_HIPROCCOMPACT_BUSKEY` (`FBUSINESSKEY`,`FENTITYNUMBER`),
  KEY `IDX_WF_HIPROCCOMPACT_BILLNO` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_hiproccompact_r3 definition

CREATE TABLE `t_wf_hiproccompact_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_hiproccompactrel definition

CREATE TABLE `t_wf_hiproccompactrel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FBUSINESSKEY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_HIPROCCOMPREL_BUSKEY` (`FBUSINESSKEY`,`FENTITYNUMBER`),
  KEY `IDX_WF_HIPROCCOMPREL_PROCINST` (`FPROCINSTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_hiproccompactrel_r3 definition

CREATE TABLE `t_wf_hiproccompactrel_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_hiprocinst definition

CREATE TABLE `t_wf_hiprocinst` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FBUSINESSKEY` varchar(36) NOT NULL DEFAULT ' ',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FENDTIME` datetime DEFAULT NULL,
  `FDURATION` bigint NOT NULL DEFAULT '0',
  `FSTARTUSERID` bigint NOT NULL DEFAULT '0',
  `FSTARTACTID` varchar(255) NOT NULL DEFAULT ' ',
  `FENDACTID` varchar(255) NOT NULL DEFAULT ' ',
  `FSUPERPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FDELETEREASON` varchar(2000) NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(36) NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FSCHEMEID` bigint NOT NULL DEFAULT '0',
  `FMAINORGID` bigint NOT NULL DEFAULT '0',
  `FTESTINGPLANID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(255) NOT NULL DEFAULT ' ',
  `FENDTYPE` varchar(10) NOT NULL DEFAULT '10',
  `FNAME` varchar(500) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) NOT NULL DEFAULT ' ',
  `FSUBJECT` varchar(3000) NOT NULL DEFAULT ' ',
  `FACTIVITYNAME` varchar(500) NOT NULL DEFAULT ' ',
  `FENTRABILLNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FSTARTNAME` varchar(200) NOT NULL DEFAULT ' ',
  `FREALDURATION` bigint NOT NULL DEFAULT '0',
  `FBILLTYPE` varchar(50) NOT NULL DEFAULT ' ',
  `FBUSINESSID` varchar(255) NOT NULL DEFAULT ' ',
  `FBIZTRACENO` varchar(255) NOT NULL DEFAULT ' ',
  `FPROCESSTYPE` varchar(30) NOT NULL DEFAULT 'AuditFlow',
  `FORGVIEWID` varchar(50) NOT NULL DEFAULT ' ',
  `FSTARUSERNAMEFORMAT` varchar(500) NOT NULL DEFAULT ' ',
  `FPRIORITYSHOW` varchar(50) NOT NULL DEFAULT ' ',
  `FROOTPROCESSINSTANCEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_HI_PRO_I_BUSKEY` (`FBUSINESSKEY`),
  KEY `IDX_WF_HI_PRO_INST_END` (`FENDTIME`),
  KEY `IDX_WF_HIPROC_CREATEDATE` (`FCREATEDATE`),
  KEY `IDX_WF_HIPROC_ENDTYPE` (`FENDTYPE`),
  KEY `IDX_WF_HIPROCINST_TC_COUNT` (`FCREATORID`,`FENDTIME`,`FBILLTYPE`),
  KEY `IDX_WF_HIPROC_TRACENO_TYPE` (`FBIZTRACENO`,`FPROCESSTYPE`),
  KEY `IDX_WF_HIPROC_SPROCINST` (`FSUPERPROCINSTID`),
  KEY `IDX_WF_HIPROC_PROCDEF` (`FPROCDEFID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hiprocinst_l definition

CREATE TABLE `t_wf_hiprocinst_l` (
  `FPKID` varchar(36) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) NOT NULL DEFAULT ' ',
  `FNAME` varchar(500) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) NOT NULL DEFAULT ' ',
  `FSUBJECT` varchar(3000) NOT NULL DEFAULT ' ',
  `FACTIVITYNAME` varchar(500) NOT NULL DEFAULT ' ',
  `FENTRABILLNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FSTARTNAME` varchar(200) NOT NULL DEFAULT ' ',
  `FSTARUSERNAMEFORMAT` varchar(500) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_HIPROCINST_LOCALEID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hiprocinst_r2 definition

CREATE TABLE `t_wf_hiprocinst_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hiprocinst_r3 definition

CREATE TABLE `t_wf_hiprocinst_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hitaskinst definition

CREATE TABLE `t_wf_hitaskinst` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FTASKDEFKEY` varchar(255) NOT NULL DEFAULT ' ',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FEXECUTIONID` bigint NOT NULL DEFAULT '0',
  `FPARENTTASKID` bigint NOT NULL DEFAULT '0',
  `FOWNER` varchar(100) NOT NULL DEFAULT ' ',
  `FASSIGNEE` varchar(255) NOT NULL DEFAULT ' ',
  `FCLAIMTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FDURATION` bigint NOT NULL DEFAULT '0',
  `FDELETEREASON` longtext,
  `FPRIORITY` int NOT NULL DEFAULT '0',
  `FDUEDATE` datetime DEFAULT NULL,
  `FFORMKEY` varchar(36) NOT NULL DEFAULT ' ',
  `FCATEGORY` varchar(100) NOT NULL DEFAULT ' ',
  `FISDISPLAY` char(1) NOT NULL DEFAULT '1',
  `FSTARTERID` bigint NOT NULL DEFAULT '0',
  `FSENDERID` longtext,
  `FENTITYNUMBER` varchar(255) NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FASSIGNEEID` bigint NOT NULL DEFAULT '0',
  `FOWNERID` bigint NOT NULL DEFAULT '0',
  `FEXECUTIONTYPE` varchar(50) NOT NULL DEFAULT ' ',
  `FBUSINESSKEY` varchar(36) NOT NULL DEFAULT ' ',
  `FYZJGROUPID` varchar(255) NOT NULL DEFAULT ' ',
  `FPROCESSINGPAGE` varchar(50) NOT NULL DEFAULT ' ',
  `FHANDLESTATE` varchar(30) NOT NULL DEFAULT ' ',
  `FMOBILEFORMKEY` varchar(50) NOT NULL DEFAULT ' ',
  `FDELEGATION` varchar(30) NOT NULL DEFAULT ' ',
  `FBILLNO` varchar(255) NOT NULL DEFAULT ' ',
  `FPROCESSINGMOBILEPAGE` varchar(50) NOT NULL DEFAULT ' ',
  `FENDTYPE` varchar(30) NOT NULL DEFAULT '1',
  `FSOURCE` varchar(100) NOT NULL DEFAULT ' ',
  `FVALIDATEOPERATION` varchar(500) NOT NULL DEFAULT ' ',
  `FNAME` varchar(500) NOT NULL DEFAULT ' ',
  `FSUBACTIVITYNAME` varchar(200) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) NOT NULL DEFAULT ' ',
  `FSUBJECT` varchar(3000) NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(115) NOT NULL DEFAULT ' ',
  `FSENDERNAME` varchar(1000) NOT NULL DEFAULT ' ',
  `FSTARTNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FPARTICIPANTNAME` varchar(500) NOT NULL DEFAULT ' ',
  `FGROUPNUMBER` bigint NOT NULL DEFAULT '0',
  `FREALDURATION` bigint NOT NULL DEFAULT '0',
  `FBATCHOP` varchar(30) NOT NULL DEFAULT ' ',
  `FBILLTYPE` varchar(50) NOT NULL DEFAULT ' ',
  `FBIZTRACENO` varchar(255) NOT NULL DEFAULT ' ',
  `FSENDERNAMEFORMAT` varchar(500) NOT NULL DEFAULT ' ',
  `FSTARTNAMEFORMAT` varchar(500) NOT NULL DEFAULT ' ',
  `FORGUNITID` bigint NOT NULL DEFAULT '0',
  `FORGVIEWID` varchar(50) NOT NULL DEFAULT ' ',
  `FPRESENTASSIGNEE` varchar(2000) NOT NULL DEFAULT ' ',
  `FPROCESSTYPE` varchar(100) NOT NULL DEFAULT ' ',
  `FCONTROL` varchar(300) NOT NULL DEFAULT ' ',
  `FEXTENDDATE` datetime DEFAULT NULL,
  `FEXTENDNUMBER` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEXTENDFORMAT` longtext,
  `FEXTENDSTR1` varchar(255) NOT NULL DEFAULT ' ',
  `FEXTENDSTR2` varchar(255) NOT NULL DEFAULT ' ',
  `FEXTENDMULSTR1` varchar(255) NOT NULL DEFAULT ' ',
  `FEXTENDMULSTR2` varchar(255) NOT NULL DEFAULT ' ',
  `FCAPTIONPC` varchar(300) NOT NULL DEFAULT ' ',
  `FCAPTIONMOB` varchar(300) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_HI_TASK_INST_PROCINST` (`FPROCINSTID`),
  KEY `IDX_WF_HITASKINST_TC_COUNT` (`FASSIGNEEID`,`FENDTIME`,`FISDISPLAY`,`FEXECUTIONTYPE`,`FENDTYPE`),
  KEY `IDX_WF_HITASK_ENTITYNUMBER` (`FENTITYNUMBER`),
  KEY `IDX_WF_HITASK_PTASKID` (`FPARENTTASKID`),
  KEY `IDX_WF_HITASK_BILLTYPE` (`FBILLTYPE`),
  KEY `IDX_WF_HITASK_BUSINESSKEY` (`FBUSINESSKEY`),
  KEY `IDX_WF_HITASK_ENDTIMEPROCDEF` (`FENDTIME`,`FPROCDEFID`,`FCATEGORY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hitaskinst_a definition

CREATE TABLE `t_wf_hitaskinst_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FEXTENDDATE2` datetime DEFAULT NULL,
  `FEXTENDNUMBER2` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_HITASKINST_A_EXTDATE` (`FEXTENDDATE2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_hitaskinst_l definition

CREATE TABLE `t_wf_hitaskinst_l` (
  `FPKID` varchar(36) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) NOT NULL DEFAULT ' ',
  `FNAME` varchar(500) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) NOT NULL DEFAULT ' ',
  `FSUBJECT` varchar(3000) NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(115) NOT NULL DEFAULT ' ',
  `FSENDERNAME` varchar(1000) NOT NULL DEFAULT ' ',
  `FSTARTNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FSUBACTIVITYNAME` varchar(200) NOT NULL DEFAULT ' ',
  `FPARTICIPANTNAME` varchar(3000) NOT NULL DEFAULT ' ',
  `FASSIGNEE` varchar(255) NOT NULL DEFAULT ' ',
  `FSENDERNAMEFORMAT` varchar(500) NOT NULL DEFAULT ' ',
  `FSTARTNAMEFORMAT` varchar(500) NOT NULL DEFAULT ' ',
  `FPRESENTASSIGNEE` varchar(2000) NOT NULL DEFAULT ' ',
  `FEXTENDMULSTR1` varchar(255) NOT NULL DEFAULT ' ',
  `FEXTENDMULSTR2` varchar(255) NOT NULL DEFAULT ' ',
  `FCAPTIONPC` varchar(300) NOT NULL DEFAULT ' ',
  `FCAPTIONMOB` varchar(300) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_HITASKINST_LOCALEID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hitaskinst_r2 definition

CREATE TABLE `t_wf_hitaskinst_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hitaskinst_r3 definition

CREATE TABLE `t_wf_hitaskinst_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hiuseractinst definition

CREATE TABLE `t_wf_hiuseractinst` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCURRENTACTID` varchar(80) NOT NULL DEFAULT ' ',
  `FLASTUSERNODEACTID` varchar(80) NOT NULL DEFAULT ' ',
  `FBUSINESSKEY` varchar(36) NOT NULL DEFAULT ' ',
  `FPROINSTID` bigint NOT NULL DEFAULT '0',
  `FPATHJSON` longtext,
  `FLASTNODECID` bigint NOT NULL DEFAULT '0',
  `FCURRENTACTINSTID` bigint NOT NULL DEFAULT '0',
  `FLASTNODEACTINSTID` bigint NOT NULL DEFAULT '0',
  `FEXECUTIONID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FENDTIME` datetime DEFAULT NULL,
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FJOINFLAG` varchar(255) NOT NULL DEFAULT ' ',
  `FCURRENTEXECUTIONID` bigint NOT NULL DEFAULT '0',
  `FENDTYPE` varchar(100) NOT NULL DEFAULT ' ',
  `FLASTNODENAME` varchar(500) NOT NULL DEFAULT ' ',
  `FCURRENTNODENAME` varchar(500) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_HIUSERACTINST_NODEID` (`FCURRENTACTID`),
  KEY `IDX_WF_HIUSERACTINST_PROCID` (`FPROINSTID`),
  KEY `IDX_WF_HIUSERACTINST_EXECID` (`FCURRENTEXECUTIONID`),
  KEY `IDX_WF_HIUSERACTINST_BUSKEY` (`FBUSINESSKEY`),
  KEY `IDX_WF_HIUSERACT_CURINSTID` (`FCURRENTACTINSTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hiuseractinst_l definition

CREATE TABLE `t_wf_hiuseractinst_l` (
  `FPKID` varchar(36) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) NOT NULL DEFAULT ' ',
  `FLASTNODENAME` varchar(500) NOT NULL DEFAULT ' ',
  `FCURRENTNODENAME` varchar(500) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_HIUSERACT_L_ID_LOCID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hiuseractinst_r3 definition

CREATE TABLE `t_wf_hiuseractinst_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hivarinst definition

CREATE TABLE `t_wf_hivarinst` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FEXECUTIONID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FVARTYPE` varchar(100) NOT NULL DEFAULT ' ',
  `FDOUBLE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FLONG` bigint NOT NULL DEFAULT '0',
  `FTIME` datetime DEFAULT NULL,
  `FTEXT` longtext,
  `FTEXT2` longtext,
  `FACTINSTID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_HI_PROCVAR_NAME_TYPE` (`FNAME`,`FVARTYPE`),
  KEY `IDX_WF_HI_PROCVAR_TASK_ID` (`FTASKID`),
  KEY `IDX_WF_HI_PROCVAR_EXEC_NAME` (`FEXECUTIONID`,`FNAME`),
  KEY `IDX_WF_HI_PROCVAR_INST_NAME` (`FPROCINSTID`,`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hivarinst_r2 definition

CREATE TABLE `t_wf_hivarinst_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_hivarinst_r3 definition

CREATE TABLE `t_wf_hivarinst_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_idempotent definition

CREATE TABLE `t_wf_idempotent` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FXID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULT` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FVALUE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSINESSKEY` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FINSTANCEID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FACTIVITYID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTINSTID` bigint NOT NULL DEFAULT '0',
  `FSCENE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_IDEMPOTENT` (`FXID`),
  KEY `IDX_WF_IDEMPOTENT_INSTID` (`FINSTANCEID`),
  KEY `IDX_WF_IDEMPOTENT_BUSKEY` (`FBUSINESSKEY`,`FACTINSTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_idempotent_r3 definition

CREATE TABLE `t_wf_idempotent_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_indicatorinfomana_r3 definition

CREATE TABLE `t_wf_indicatorinfomana_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_indicatorinfomanage definition

CREATE TABLE `t_wf_indicatorinfomanage` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FGROUP` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_INDICATORINFO_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_job definition

CREATE TABLE `t_wf_job` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(30) NOT NULL DEFAULT ' ',
  `FLOCKEXPTIME` datetime DEFAULT NULL,
  `FLOCKOWNERID` varchar(100) NOT NULL DEFAULT ' ',
  `FEXCLUSIVE` char(1) NOT NULL DEFAULT '1',
  `FEXECUTIONID` bigint NOT NULL DEFAULT '0',
  `FPROCESSINSTANCEID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FRETRIES` int NOT NULL DEFAULT '3',
  `FEXCEPTIONMSG` varchar(2000) NOT NULL DEFAULT ' ',
  `FDUEDATE` datetime DEFAULT NULL,
  `FREPEAT` varchar(30) NOT NULL DEFAULT ' ',
  `FHANDLERTYPE` varchar(30) NOT NULL DEFAULT ' ',
  `FHANDLERCFG` varchar(2000) NOT NULL DEFAULT ' ',
  `FBUSINESSKEY` varchar(36) NOT NULL DEFAULT ' ',
  `FOPERATION` varchar(100) NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FELEMENTID` varchar(80) NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FSRCJOBID` bigint NOT NULL DEFAULT '0',
  `FROOTTRACENO` varchar(100) NOT NULL DEFAULT ' ',
  `FEXECUTOR` varchar(100) NOT NULL DEFAULT ' ',
  `FSUCCESS` char(1) NOT NULL DEFAULT '1',
  `FENDTIME` datetime DEFAULT NULL,
  `FDURATION` bigint NOT NULL DEFAULT '0',
  `FSTATE` varchar(50) NOT NULL DEFAULT ' ',
  `FSOURCE` varchar(60) NOT NULL DEFAULT ' ',
  `FROOTJOBID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_JOB_EXECUTION_ID` (`FEXECUTIONID`),
  KEY `IDX_WF_JOB_PROC_DEF_ID` (`FPROCDEFID`),
  KEY `IDX_WF_JOB_PROCESS_INSTANCE_ID` (`FPROCESSINSTANCEID`),
  KEY `IDX_WF_JOB_EXPTIME` (`FLOCKEXPTIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_joblog definition

CREATE TABLE `t_wf_joblog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCESSINSTANCEID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FEXECUTIONID` bigint NOT NULL DEFAULT '0',
  `FBUSINESSKEY` varchar(36) NOT NULL DEFAULT ' ',
  `FEXECUTOR` varchar(100) NOT NULL DEFAULT ' ',
  `FTASKID` varchar(100) NOT NULL DEFAULT ' ',
  `FEXCEPTIONMSG` longtext,
  `FSUCCESS` char(1) NOT NULL DEFAULT '1',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FCONFIGURATION` varchar(2000) NOT NULL DEFAULT ' ',
  `FELEMENTID` varchar(200) NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(100) NOT NULL DEFAULT ' ',
  `FENDTIME` datetime DEFAULT NULL,
  `FDURATION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTATE` varchar(20) NOT NULL DEFAULT ' ',
  `FJOBID` bigint NOT NULL DEFAULT '0',
  `FRETRIES` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_JOBLOG_PROC` (`FPROCESSINSTANCEID`),
  KEY `IDX_WF_JOBLOG_BUSIKEY` (`FBUSINESSKEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_joblog_r2 definition

CREATE TABLE `t_wf_joblog_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_joblog_r3 definition

CREATE TABLE `t_wf_joblog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_jobrecord definition

CREATE TABLE `t_wf_jobrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(30) NOT NULL DEFAULT ' ',
  `FLOCKEXPTIME` datetime DEFAULT NULL,
  `FLOCKOWNERID` varchar(100) NOT NULL DEFAULT ' ',
  `FEXCLUSIVE` char(1) NOT NULL DEFAULT '0',
  `FEXECUTIONID` bigint NOT NULL DEFAULT '0',
  `FPROCESSINSTANCEID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FRETRIES` int NOT NULL DEFAULT '3',
  `FEXCEPTIONMSG` longtext,
  `FDUEDATE` datetime DEFAULT NULL,
  `FREPEAT` varchar(30) NOT NULL DEFAULT ' ',
  `FHANDLERTYPE` varchar(30) NOT NULL DEFAULT ' ',
  `FHANDLERCFG` longtext,
  `FBUSINESSKEY` varchar(36) NOT NULL DEFAULT ' ',
  `FOPERATION` varchar(300) NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FELEMENTID` varchar(80) NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FSRCJOBID` bigint NOT NULL DEFAULT '0',
  `FROOTTRACENO` varchar(100) NOT NULL DEFAULT ' ',
  `FEXECUTOR` varchar(100) NOT NULL DEFAULT ' ',
  `FSUCCESS` char(1) NOT NULL DEFAULT '1',
  `FENDTIME` datetime DEFAULT NULL,
  `FDURATION` bigint NOT NULL DEFAULT '0',
  `FSTATE` varchar(50) NOT NULL DEFAULT ' ',
  `FSOURCE` varchar(60) NOT NULL DEFAULT ' ',
  `FROOTJOBID` bigint NOT NULL DEFAULT '0',
  `FBIZTRACENO` varchar(255) NOT NULL DEFAULT ' ',
  `FORGUNITID` bigint NOT NULL DEFAULT '0',
  `FORGVIEWID` varchar(50) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_JOBRECORD_ROOTJOBID` (`FROOTJOBID`),
  KEY `IDX_WF_JOBRECORD_EXECUTION` (`FEXECUTIONID`),
  KEY `IDX_WF_JOBRECORD_PROCDEF` (`FPROCDEFID`),
  KEY `IDX_WF_JOBRECORD_PROCINST` (`FPROCESSINSTANCEID`),
  KEY `IDX_WF_JOBRECORD_LOCKSTATE` (`FLOCKEXPTIME`,`FSTATE`),
  KEY `IDX_WF_JOBREC_BUSKEY_STATE` (`FBUSINESSKEY`,`FSTATE`),
  KEY `IDX_WF_JOBRECORD_HANDLERTYPE` (`FHANDLERTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_jobrecord_r2 definition

CREATE TABLE `t_wf_jobrecord_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_jobrecord_r3 definition

CREATE TABLE `t_wf_jobrecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_keyauditor definition

CREATE TABLE `t_wf_keyauditor` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGUNIT` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_KEYAUDITOR_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_keyauditor_l definition

CREATE TABLE `t_wf_keyauditor_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_KEYAUDITOR_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_keyauditor_r3 definition

CREATE TABLE `t_wf_keyauditor_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_keyauditorentry definition

CREATE TABLE `t_wf_keyauditorentry` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_KEYAUDITORENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_manageprocess definition

CREATE TABLE `t_wf_manageprocess` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCKEY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTRATEGY` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_MANAGEPROCESS` (`FPROCKEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_manageprocessentry definition

CREATE TABLE `t_wf_manageprocessentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FORGTYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WF_MANAGEPROCESSENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_mbillsumarycfgentry definition

CREATE TABLE `t_wf_mbillsumarycfgentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FENTRYLOCATION` varchar(36) NOT NULL DEFAULT ' ',
  `FENTRYLOCATIONID` varchar(36) NOT NULL DEFAULT ' ',
  `FFIELDKEY` varchar(36) NOT NULL DEFAULT ' ',
  `FISHEADFIELD` char(1) NOT NULL DEFAULT '0',
  `FFIELDTYPE` varchar(36) NOT NULL DEFAULT ' ',
  `FFIELDPERCEN` varchar(10) NOT NULL DEFAULT ' ',
  `FFONTCOLOR` varchar(36) NOT NULL DEFAULT ' ',
  `FFONTSIZE` int NOT NULL DEFAULT '0',
  `FFIELDID` varchar(36) NOT NULL DEFAULT ' ',
  `FISDEFAULTSHOW` char(1) NOT NULL DEFAULT '1',
  `FFIELDNAME` varchar(230) NOT NULL DEFAULT ' ',
  `FENTRYLOCATIONNAME` varchar(230) NOT NULL DEFAULT ' ',
  `FEDITABLE` char(1) NOT NULL DEFAULT '0',
  `FSHOWCONTENT` varchar(2000) NOT NULL DEFAULT ' ',
  `FCONTENT` varchar(2000) NOT NULL DEFAULT ' ',
  `FAGGREGATEFUNCTION` varchar(30) NOT NULL DEFAULT ' ',
  `FREFPARENTPROPFIELDID` varchar(50) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WF_MBILLSUMCFGENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_mbillsumarycfgentry_l definition

CREATE TABLE `t_wf_mbillsumarycfgentry_l` (
  `FPKID` varchar(18) NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FFIELDNAME` varchar(230) NOT NULL DEFAULT ' ',
  `FENTRYLOCATIONNAME` varchar(230) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_MBILLSUMCFGENTRY_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_mbillsummarycfg definition

CREATE TABLE `t_wf_mbillsummarycfg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) NOT NULL DEFAULT ' ',
  `FENABLE` varchar(30) NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPE` varchar(36) NOT NULL DEFAULT ' ',
  `FSUMMARYTPL` varchar(100) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDEFAULTROWS` bigint NOT NULL DEFAULT '0',
  `FDEFAULTDATAROWS` bigint NOT NULL DEFAULT '0',
  `FTPLNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FNAME` varchar(230) NOT NULL DEFAULT ' ',
  `FSCENE` varchar(50) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_MBILLSUMMARYCFG_NUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_mbillsummarycfg_l definition

CREATE TABLE `t_wf_mbillsummarycfg_l` (
  `FPKID` varchar(18) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FNAME` varchar(230) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_MBILLSUMMARYCFG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_mbillsummarycfg_r3 definition

CREATE TABLE `t_wf_mbillsummarycfg_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_message definition

CREATE TABLE `t_wf_message` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTYPE` bigint NOT NULL DEFAULT '0',
  `FCONTENTURL` varchar(1000) NOT NULL DEFAULT ' ',
  `FSENDER` varchar(100) NOT NULL DEFAULT ' ',
  `FSENDTIME` datetime DEFAULT NULL,
  `FREADSTATE` varchar(30) NOT NULL DEFAULT ' ',
  `FREADTIME` datetime DEFAULT NULL,
  `FENTITYNUMBER` varchar(100) NOT NULL DEFAULT ' ',
  `FOPERATION` varchar(100) NOT NULL DEFAULT ' ',
  `FBIZDATAID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FSOURCE` varchar(100) NOT NULL DEFAULT ' ',
  `FMOBCONTENTURL` varchar(1000) NOT NULL DEFAULT ' ',
  `FCHANNELS` varchar(300) NOT NULL DEFAULT ' ',
  `FSENDERNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FTITLE` varchar(500) NOT NULL DEFAULT ' ',
  `FCONTENT` longtext,
  `FTAG` varchar(100) NOT NULL DEFAULT ' ',
  `FTOALL` char(1) NOT NULL DEFAULT '0',
  `FCONFIG` varchar(2000) NOT NULL DEFAULT ' ',
  `FCONTENT_SUMMARY` varchar(2000) NOT NULL DEFAULT ' ',
  `FTPLSCENE` varchar(200) NOT NULL DEFAULT ' ',
  `FCONTENT_TAG` varchar(2000) NOT NULL DEFAULT ' ',
  `FNESTENTITYNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FNESTBILLID` bigint NOT NULL DEFAULT '0',
  `FNESTBILLNO` varchar(255) NOT NULL DEFAULT ' ',
  `FNESTAPPID` varchar(100) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_MESSAGE_TYPE` (`FTYPE`),
  KEY `IDX_WF_MESSAGE_CREATEDATE` (`FCREATEDATE`),
  KEY `IDX_WF_MESSAGE_TPLSCENE` (`FTPLSCENE`),
  KEY `IDX_WF_MESSAGE_TAG` (`FTAG`),
  KEY `IDX_WF_MESSAGE_ENTNUMBER` (`FENTITYNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_message_l definition

CREATE TABLE `t_wf_message_l` (
  `FPKID` varchar(36) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) NOT NULL DEFAULT ' ',
  `FTITLE` varchar(500) NOT NULL DEFAULT ' ',
  `FCONTENT` longtext,
  `FTAG` varchar(100) NOT NULL DEFAULT ' ',
  `FSENDERNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FCONTENT_SUMMARY` varchar(2000) NOT NULL DEFAULT ' ',
  `FCONTENT_TAG` varchar(2000) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_MESSAGE_LOCALEID` (`FID`,`FLOCALEID`),
  KEY `IDX_WF_MESSAGE_L_TAG` (`FTAG`),
  KEY `IDX_WF_MESSAGE_L_TITLE` (`FTITLE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_message_r3 definition

CREATE TABLE `t_wf_message_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_messageconfig definition

CREATE TABLE `t_wf_messageconfig` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FAVALIABLE` char(1) NOT NULL DEFAULT '1',
  `FSERVICENAME` varchar(100) NOT NULL DEFAULT ' ',
  `FSERVICEKEY` varchar(100) NOT NULL DEFAULT ' ',
  `FSERVICECLASS` varchar(400) NOT NULL DEFAULT ' ',
  `FDEFAULTSERVICE` char(1) NOT NULL DEFAULT '0',
  `FTPL` longtext,
  `FORG` bigint NOT NULL DEFAULT '0',
  `FCUSTOMPARAMS` varchar(2000) NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_MESSAGECONFIG_FKEY` (`FSERVICEKEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_messageconfig_r2 definition

CREATE TABLE `t_wf_messageconfig_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_messageconfig_r3 definition

CREATE TABLE `t_wf_messageconfig_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_mobilemap definition

CREATE TABLE `t_wf_mobilemap` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(30) NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FURL` varchar(300) NOT NULL DEFAULT ' ',
  `FSYSTYPEID` bigint NOT NULL DEFAULT '0',
  `FVEID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_MOBILEMAP_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_mobilemap_l definition

CREATE TABLE `t_wf_mobilemap_l` (
  `FPKID` varchar(36) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_MOBILEMAP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_mobilemap_r2 definition

CREATE TABLE `t_wf_mobilemap_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_mobilemap_r3 definition

CREATE TABLE `t_wf_mobilemap_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_model definition

CREATE TABLE `t_wf_model` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(255) NOT NULL DEFAULT ' ',
  `FCATEGORY` bigint NOT NULL DEFAULT '0',
  `FVERSION` varchar(36) NOT NULL DEFAULT ' ',
  `FDEPLOYMENTID` bigint NOT NULL DEFAULT '0',
  `FBPMNXMLID` bigint NOT NULL DEFAULT '0',
  `FPNGID` bigint NOT NULL DEFAULT '0',
  `FGRAPHID` bigint NOT NULL DEFAULT '0',
  `FENTRABILL` varchar(36) NOT NULL DEFAULT ' ',
  `FENTRABILLID` varchar(36) NOT NULL DEFAULT ' ',
  `FORGUNITID` bigint NOT NULL DEFAULT '0',
  `FOPERATION` varchar(300) NOT NULL DEFAULT ' ',
  `FPARENTPROCID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FPUBLISH` char(1) NOT NULL DEFAULT '0',
  `FDISCARD` char(1) NOT NULL DEFAULT '0',
  `FNAME` varchar(1024) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(3000) NOT NULL DEFAULT ' ',
  `FAPPLICATIONID` varchar(36) NOT NULL DEFAULT ' ',
  `FBUSINESSID` varchar(255) NOT NULL DEFAULT ' ',
  `FORGVIEWID` varchar(50) NOT NULL DEFAULT ' ',
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATENUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FTEMPLATEVERSION` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_MODEL_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_model_l definition

CREATE TABLE `t_wf_model_l` (
  `FPKID` varchar(36) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) NOT NULL DEFAULT ' ',
  `FNAME` varchar(1024) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(3000) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_MODEL_LOCALEID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_model_r2 definition

CREATE TABLE `t_wf_model_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_model_r3 definition

CREATE TABLE `t_wf_model_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_modeldatachangelo_r3 definition

CREATE TABLE `t_wf_modeldatachangelo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_modeldatachangelog definition

CREATE TABLE `t_wf_modeldatachangelog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FSCHEMEID` bigint NOT NULL DEFAULT '0',
  `FRESOURCEID` bigint NOT NULL DEFAULT '0',
  `FCONTENT` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_MODELDATACHANGELOG` (`FSCHEMEID`),
  KEY `IDX_WF_MODELDATALOG_PROCDEF` (`FPROCDEFID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_modelmodifylog definition

CREATE TABLE `t_wf_modelmodifylog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCNUM` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FSCHEMEID` bigint NOT NULL DEFAULT '0',
  `FELEMENTID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATION` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROPERTY` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOLDVAL` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FOLDVAL_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FCONTENT` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FCONTENT_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FELEMENT` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROPERTYNAME` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVISION` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FGROUP` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPNAME` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FELEMENTTYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FELEMENTTYPENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_MODELMODIFYLOG` (`FPROCDEFID`),
  KEY `IDX_WF_MODELMLOG_SCHEMETYPE` (`FSCHEMEID`,`FTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_modelmodifylog_l definition

CREATE TABLE `t_wf_modelmodifylog_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FELEMENT` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROPERTYNAME` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPNAME` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FELEMENTTYPENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_MODELMODIFYLOG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_modelmodifylog_r3 definition

CREATE TABLE `t_wf_modelmodifylog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_msgfail definition

CREATE TABLE `t_wf_msgfail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMESSAGEID` bigint NOT NULL DEFAULT '0',
  `FUSERIDS` longtext COLLATE utf8mb4_unicode_ci,
  `FPUBACCNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTPLSCENE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANNEL` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSERVICECLASS` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRETRY` int NOT NULL DEFAULT '0',
  `FSTATE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREASON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FTITLE` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENDERNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANNELNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIG` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEMPLATE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOALL` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCHANNELCONTENT` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FRUNTIMECONFIG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_MSGFAIL_MSGID` (`FMESSAGEID`),
  KEY `IDX_WF_MSGFAIL_DATECHLSTATE` (`FCREATEDATE`,`FCHANNEL`,`FSTATE`),
  KEY `IDX_WF_MSGFAIL_DATESTATETRY` (`FMODIFYDATE`,`FSTATE`,`FRETRY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_msgfail_l definition

CREATE TABLE `t_wf_msgfail_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTITLE` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENDERNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANNELNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANNELCONTENT` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_MSGFAIL_L` (`FID`,`FLOCALEID`),
  KEY `IDX_WF_MSGFAIL_L_CNAME` (`FCHANNELNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_msgfail_r3 definition

CREATE TABLE `t_wf_msgfail_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_msgreceiver definition

CREATE TABLE `t_wf_msgreceiver` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMESSAGEID` bigint NOT NULL DEFAULT '0',
  `FRECEIVERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FREADSTATE` varchar(30) NOT NULL DEFAULT ' ',
  `FREADTIME` datetime DEFAULT NULL,
  `FTERMINALWAY` varchar(500) NOT NULL DEFAULT ' ',
  `FPOPUP` char(1) NOT NULL DEFAULT '0',
  `FTYPE` bigint NOT NULL DEFAULT '0',
  `FSENDER` varchar(100) NOT NULL DEFAULT ' ',
  `FSENDERNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(100) NOT NULL DEFAULT ' ',
  `FOPERATION` varchar(100) NOT NULL DEFAULT ' ',
  `FSOURCE` varchar(100) NOT NULL DEFAULT ' ',
  `FBIZDATAID` bigint NOT NULL DEFAULT '0',
  `FTOALL` char(1) NOT NULL DEFAULT '0',
  `FTITLE` varchar(500) NOT NULL DEFAULT ' ',
  `FTAG` varchar(100) NOT NULL DEFAULT ' ',
  `FTPLSCENE` varchar(200) NOT NULL DEFAULT ' ',
  `FCONFIG` varchar(2000) NOT NULL DEFAULT ' ',
  `FCONTENT_SUMMARY` varchar(255) NOT NULL DEFAULT ' ',
  `FCONTENTURL` varchar(1000) NOT NULL DEFAULT ' ',
  `FNESTENTITYNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FNESTBILLID` bigint NOT NULL DEFAULT '0',
  `FNESTBILLNO` varchar(255) NOT NULL DEFAULT ' ',
  `FNESTAPPID` varchar(100) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_MSGRECEIVER_RECVER` (`FRECEIVERID`),
  KEY `IDX_WF_MSGRECEIVER_MSGREC` (`FMESSAGEID`,`FRECEIVERID`),
  KEY `IDX_WF_MSGRECEIVER_CREDATE` (`FCREATEDATE`),
  KEY `IDX_WF_MSGRECEIVER_MODDATE` (`FMODIFYDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_msgreceiver_l definition

CREATE TABLE `t_wf_msgreceiver_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENDERNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTITLE` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAG` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTENT_SUMMARY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_MSGRECEIVER_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_msgreceiver_r3 definition

CREATE TABLE `t_wf_msgreceiver_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_navigation definition

CREATE TABLE `t_wf_navigation` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) NOT NULL DEFAULT ' ',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FACTIVITSTATE` varchar(100) NOT NULL DEFAULT ' ',
  `FTASKCENTERRULEID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FNAME` varchar(500) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_NAVIGATION_CREATE` (`FCREATEDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_navigation_l definition

CREATE TABLE `t_wf_navigation_l` (
  `FPKID` varchar(36) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) NOT NULL DEFAULT ' ',
  `FNAME` varchar(115) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_NAVIGATION_LOCALEID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_navigation_r2 definition

CREATE TABLE `t_wf_navigation_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_navigation_r3 definition

CREATE TABLE `t_wf_navigation_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_nocode_hiactinst definition

CREATE TABLE `t_wf_nocode_hiactinst` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FEXECUTIONID` bigint NOT NULL DEFAULT '0',
  `FACTID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTTASKID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FCALLPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FACTTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSIGNEEID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FDURATION` bigint NOT NULL DEFAULT '0',
  `FSOURCEELEMENTID` bigint NOT NULL DEFAULT '0',
  `FTARGETELEMENTID` bigint NOT NULL DEFAULT '0',
  `FEXECUTIONTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FSTEP` int NOT NULL DEFAULT '0',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FCYCLE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOINFLAG` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORKPATH` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSIGNEE` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSKIPREASON` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDELETEREASON` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREALDURATION` bigint NOT NULL DEFAULT '0',
  `FBIZTRACENO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSINESSKEY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_NOCODE_HIACT_ENDTIME` (`FENDTIME`),
  KEY `IDX_WF_NOCODE_HIACT_EXECACTID` (`FEXECUTIONID`,`FACTID`),
  KEY `IDX_WF_NOCODE_HIACT_PROCACTID` (`FPROCINSTID`,`FACTID`),
  KEY `IDX_WF_NOCODE_HIACT_CREDATE` (`FCREATEDATE`),
  KEY `IDX_WF_NOCODE_HIACT_TASKSTEP` (`FTASKID`,`FSTEP`),
  KEY `IDX_WF_NOCODE_HIACT_ACTTYPE` (`FACTTYPE`),
  KEY `IDX_WF_NOCODE_HIACT_PARENTTASK` (`FPARENTTASKID`),
  KEY `IDX_WF_NOCODE_HIACT_BUSKEYENTI` (`FBUSINESSKEY`,`FENTITYNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nocode_hiactinst_l definition

CREATE TABLE `t_wf_nocode_hiactinst_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSIGNEE` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSKIPREASON` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDELETEREASON` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_NOCODE_HIACTINST_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nocode_hiactinst_r3 definition

CREATE TABLE `t_wf_nocode_hiactinst_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nocode_hicomment definition

CREATE TABLE `t_wf_nocode_hicomment` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTIME` datetime DEFAULT NULL,
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FACTIVITYID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDECISIONTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBACKTOBACK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBUSINESSKEY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOWNERID` bigint NOT NULL DEFAULT '0',
  `FBIZIDENTIFYKEY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPUBLIC` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSTEP` int NOT NULL DEFAULT '0',
  `FMESSAGE` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTNAME` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSIGNEE` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBACTIVITYNAME` varchar(230) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERNAMEFORMATTER` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOORDINVITEOPINION` longtext COLLATE utf8mb4_unicode_ci,
  `FSUBPROCESSINSTANCEID` bigint NOT NULL DEFAULT '0',
  `FTERMINALWAY` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRICHTEXTMESSAGE` longtext COLLATE utf8mb4_unicode_ci,
  `FTRUSTNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENTSUBJECT` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENSITIVEFIELDCHANGE` longtext COLLATE utf8mb4_unicode_ci,
  `FBILLNO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENDERNAMEFORMAT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTNAMEFORMAT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTERID` bigint NOT NULL DEFAULT '0',
  `FPRESENTASSIGNEE` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCESSINGMOBILEPAGE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCESSINGPAGE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHANDLESTATE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCATEGORY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENDERNAME` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDELEGATEID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FEXECUTIONTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISDISPLAY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FENDTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FBILLTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCESSTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'AuditFlow',
  `FEXTENDDATE` datetime DEFAULT NULL,
  `FEXTENDNUMBER` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEXTENDFORMAT` longtext COLLATE utf8mb4_unicode_ci,
  `FEXTENDSTR1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXTENDSTR2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXTENDSTR3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXTENDSTR4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXTENDSTR5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXTENDMULSTR1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXTENDMULSTR2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_NC_HICOMMENT_PROCTASK` (`FPROCINSTID`,`FTASKID`),
  KEY `IDX_WF_NC_HICOMMENT_TASKTYPEOW` (`FTASKID`,`FTYPE`,`FOWNERID`),
  KEY `IDX_WF_NC_HICOMMENT_USERTYPE` (`FUSERID`,`FTYPE`,`FEXECUTIONTYPE`),
  KEY `IDX_WF_NC_HICOMMENT_ENTINUMBER` (`FENTITYNUMBER`),
  KEY `IDX_WF_NC_HICOMMENT_OWNTYPE` (`FOWNERID`,`FTYPE`,`FEXECUTIONTYPE`),
  KEY `IDX_WF_NC_HICOMMENT_TIME` (`FTIME`),
  KEY `IDX_WF_NC_HICOMMENT_BUSKEY` (`FBUSINESSKEY`),
  KEY `IDX_WF_NC_HICOMMENT_DELGIDTYPE` (`FDELEGATEID`,`FTYPE`,`FEXECUTIONTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nocode_hicomment_a definition

CREATE TABLE `t_wf_nocode_hicomment_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FEXTENDDATE2` datetime DEFAULT NULL,
  `FEXTENDNUMBER2` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_NC_HICOMMENT_A_EXTDATE` (`FEXTENDDATE2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nocode_hicomment_l definition

CREATE TABLE `t_wf_nocode_hicomment_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMESSAGE` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTNAME` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSIGNEE` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBACTIVITYNAME` varchar(230) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERNAMEFORMATTER` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOORDINVITEOPINION` longtext COLLATE utf8mb4_unicode_ci,
  `FTRUSTNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENTSUBJECT` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENSITIVEFIELDCHANGE` longtext COLLATE utf8mb4_unicode_ci,
  `FENTITYNAME` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENDERNAMEFORMAT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTNAMEFORMAT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRESENTASSIGNEE` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENDERNAME` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXTENDMULSTR1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXTENDMULSTR2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_NOCODE_HICOMMENT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nocode_hicomment_r3 definition

CREATE TABLE `t_wf_nocode_hicomment_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nocode_hidynresou_r3 definition

CREATE TABLE `t_wf_nocode_hidynresou_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nocode_hidynresource definition

CREATE TABLE `t_wf_nocode_hidynresource` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTENT` longtext COLLATE utf8mb4_unicode_ci,
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FACTIVITYID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTINSTID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FDURATION` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FDELETEREASON` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_NC_HIDYNRES_PROCDEFINST` (`FPROCDEFID`,`FPROCINSTID`),
  KEY `IDX_WF_NC_HIDYNRES_TYPE` (`FTYPE`),
  KEY `IDX_WF_NC_HIDYNRES_PROCINST` (`FPROCINSTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nocode_hidynresource_l definition

CREATE TABLE `t_wf_nocode_hidynresource_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTENT` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_NOCODE_HIDYNRESOURCE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nocode_hiparticip_r3 definition

CREATE TABLE `t_wf_nocode_hiparticip_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nocode_hiparticipant definition

CREATE TABLE `t_wf_nocode_hiparticipant` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FPARENTTASKID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FOWNERID` bigint NOT NULL DEFAULT '0',
  `FTRANSFEROPINION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBSCRIBESIGN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FDURATION` bigint NOT NULL DEFAULT '0',
  `FENDTIME` datetime DEFAULT NULL,
  `FPRIORITY` int NOT NULL DEFAULT '0',
  `FCOMPOSITETASKID` bigint NOT NULL DEFAULT '0',
  `FUSERNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERNAMEFORMATTER` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDELEGATEID` bigint NOT NULL DEFAULT '0',
  `FISDISPLAY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FTRUSTNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRUSTNAMEFORMAT` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENTSUBJECT` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREADTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_NC_HIPARTCPANT_PROCINST` (`FPROCINSTID`),
  KEY `IDX_WF_NC_HIPARTCPANT_TASK` (`FTASKID`),
  KEY `IDX_WF_NC_HIPARTCPANT_USER` (`FUSERID`),
  KEY `IDX_WF_NC_HIPARTCPANT_PTASKSUB` (`FPARENTTASKID`,`FSUBSCRIBESIGN`),
  KEY `IDX_WF_NC_HIPARTCPANT_COMPTASK` (`FCOMPOSITETASKID`),
  KEY `IDX_WF_NC_HIPARTCPANT_OWNERID` (`FOWNERID`,`FTYPE`,`FENDTIME`,`FDELEGATEID`),
  KEY `IDX_WF_NC_HIPARTCPANT_TYPE` (`FTYPE`),
  KEY `IDX_WF_NC_HIPARTCPANT_CREDATE` (`FCREATEDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nocode_hiparticipant_l definition

CREATE TABLE `t_wf_nocode_hiparticipant_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANSFEROPINION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERNAMEFORMATTER` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRUSTNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRUSTNAMEFORMAT` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENTSUBJECT` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_NOCODE_HIPARTICIPANT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nocode_hiprocinst definition

CREATE TABLE `t_wf_nocode_hiprocinst` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FBUSINESSKEY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FENDTIME` datetime DEFAULT NULL,
  `FDURATION` bigint NOT NULL DEFAULT '0',
  `FSTARTUSERID` bigint NOT NULL DEFAULT '0',
  `FSTARTACTID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENDACTID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPERPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FDELETEREASON` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FSCHEMEID` bigint NOT NULL DEFAULT '0',
  `FMAINORGID` bigint NOT NULL DEFAULT '0',
  `FTESTINGPLANID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENDTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '10',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBJECT` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRABILLNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREALDURATION` bigint NOT NULL DEFAULT '0',
  `FBIZTRACENO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSINESSID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCESSTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'AuditFlow',
  `FORGVIEWID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARUSERNAMEFORMAT` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRIORITYSHOW` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROOTPROCESSINSTANCEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_NC_HIPROCINST_BUSKEY` (`FBUSINESSKEY`),
  KEY `IDX_WF_NC_HIPROCINST_ENDTIME` (`FENDTIME`),
  KEY `IDX_WF_NC_HIPROCINST_TCCOUNT` (`FCREATORID`,`FENDTIME`,`FBILLTYPE`),
  KEY `IDX_WF_NC_HIPROCINST_CREDATE` (`FCREATEDATE`),
  KEY `IDX_WF_NC_HIPROCINST_ENDTYPE` (`FENDTYPE`),
  KEY `IDX_WF_NC_HIPROCINST_TRACETYPE` (`FBIZTRACENO`,`FPROCESSTYPE`),
  KEY `IDX_WF_NC_HIPROCINST_PROCDEF` (`FPROCDEFID`),
  KEY `IDX_WF_NC_HIPROCINST_SPROCINST` (`FSUPERPROCINSTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nocode_hiprocinst_l definition

CREATE TABLE `t_wf_nocode_hiprocinst_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBJECT` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRABILLNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARUSERNAMEFORMAT` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_NOCODE_HIPROCINST_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nocode_hiprocinst_r3 definition

CREATE TABLE `t_wf_nocode_hiprocinst_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nocode_hitaskinst definition

CREATE TABLE `t_wf_nocode_hitaskinst` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FTASKDEFKEY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FEXECUTIONID` bigint NOT NULL DEFAULT '0',
  `FPARENTTASKID` bigint NOT NULL DEFAULT '0',
  `FENDTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FOWNER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSIGNEE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLAIMTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FDURATION` bigint NOT NULL DEFAULT '0',
  `FDELETEREASON` longtext COLLATE utf8mb4_unicode_ci,
  `FPRIORITY` int NOT NULL DEFAULT '0',
  `FDUEDATE` datetime DEFAULT NULL,
  `FFORMKEY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCATEGORY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISDISPLAY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTARTERID` bigint NOT NULL DEFAULT '0',
  `FSENDERID` longtext COLLATE utf8mb4_unicode_ci,
  `FENTITYNUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FASSIGNEEID` bigint NOT NULL DEFAULT '0',
  `FOWNERID` bigint NOT NULL DEFAULT '0',
  `FEXECUTIONTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSINESSKEY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FYZJGROUPID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCESSINGPAGE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHANDLESTATE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMOBILEFORMKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDELEGATION` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCESSINGMOBILEPAGE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALIDATEOPERATION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBACTIVITYNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBJECT` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENDERNAME` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARTICIPANTNAME` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPNUMBER` bigint NOT NULL DEFAULT '0',
  `FREALDURATION` bigint NOT NULL DEFAULT '0',
  `FBATCHOP` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZTRACENO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENDERNAMEFORMAT` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTNAMEFORMAT` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGUNITID` bigint NOT NULL DEFAULT '0',
  `FORGVIEWID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRESENTASSIGNEE` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCESSTYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTROL` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXTENDDATE` datetime DEFAULT NULL,
  `FEXTENDNUMBER` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEXTENDFORMAT` longtext COLLATE utf8mb4_unicode_ci,
  `FEXTENDSTR1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXTENDSTR2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXTENDSTR3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXTENDSTR4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXTENDSTR5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXTENDMULSTR1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXTENDMULSTR2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCAPTIONPC` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCAPTIONMOB` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_NOCODE_HITASK_PROCINST` (`FPROCINSTID`),
  KEY `IDX_WF_NOCODE_HITASK_TCCOUNT` (`FASSIGNEEID`,`FENDTIME`,`FISDISPLAY`,`FEXECUTIONTYPE`,`FENDTYPE`),
  KEY `IDX_WF_NOCODE_HITASK_ENTNUMBER` (`FENTITYNUMBER`),
  KEY `IDX_WF_NOCODE_HITASK_PTASKID` (`FPARENTTASKID`),
  KEY `IDX_WF_NOCODE_HITASK_BILLTYPE` (`FBILLTYPE`),
  KEY `IDX_WF_NOCODE_HITASK_DATETIME` (`FCREATEDATE`,`FENDTIME`),
  KEY `IDX_WF_NOCODE_HITASK_BUSKEY` (`FBUSINESSKEY`),
  KEY `IDX_WF_NOCODE_HITASK_TIMEPROC` (`FENDTIME`,`FPROCDEFID`,`FCATEGORY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nocode_hitaskinst_a definition

CREATE TABLE `t_wf_nocode_hitaskinst_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FEXTENDDATE2` datetime DEFAULT NULL,
  `FEXTENDNUMBER2` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_NOCODE_HITASK_A_EXTDATE` (`FEXTENDDATE2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nocode_hitaskinst_l definition

CREATE TABLE `t_wf_nocode_hitaskinst_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBACTIVITYNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBJECT` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENDERNAME` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARTICIPANTNAME` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSIGNEE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENDERNAMEFORMAT` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTNAMEFORMAT` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRESENTASSIGNEE` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXTENDMULSTR1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXTENDMULSTR2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCAPTIONPC` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCAPTIONMOB` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_NOCODE_HITASKINST_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nocode_hitaskinst_r3 definition

CREATE TABLE `t_wf_nocode_hitaskinst_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nocode_hiuseracti_r3 definition

CREATE TABLE `t_wf_nocode_hiuseracti_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nocode_hiuseractinst definition

CREATE TABLE `t_wf_nocode_hiuseractinst` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCURRENTACTID` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLASTUSERNODEACTID` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSINESSKEY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROINSTID` bigint NOT NULL DEFAULT '0',
  `FPATHJSON` longtext COLLATE utf8mb4_unicode_ci,
  `FLASTNODECID` bigint NOT NULL DEFAULT '0',
  `FCURRENTACTINSTID` bigint NOT NULL DEFAULT '0',
  `FLASTNODEACTINSTID` bigint NOT NULL DEFAULT '0',
  `FEXECUTIONID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FJOINFLAG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENTEXECUTIONID` bigint NOT NULL DEFAULT '0',
  `FENDTIME` datetime DEFAULT NULL,
  `FENDTYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FLASTNODENAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENTNODENAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_NC_HIUSERACT_NODEID` (`FCURRENTACTID`),
  KEY `IDX_WF_NC_HIUSERACT_PROCID` (`FPROINSTID`),
  KEY `IDX_WF_NC_HIUSERACT_EXECID` (`FCURRENTEXECUTIONID`),
  KEY `IDX_WF_NC_HIUSERACT_BUSKEY` (`FBUSINESSKEY`),
  KEY `IDX_WF_NC_HIUSERACT_CURINSTID` (`FCURRENTACTINSTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nocode_hiuseractinst_l definition

CREATE TABLE `t_wf_nocode_hiuseractinst_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLASTNODENAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENTNODENAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_NOCODE_HIUSERACTINST_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nocode_hivarinst definition

CREATE TABLE `t_wf_nocode_hivarinst` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FEXECUTIONID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVARTYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDOUBLE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FLONG` bigint NOT NULL DEFAULT '0',
  `FTIME` datetime DEFAULT NULL,
  `FTEXT` longtext COLLATE utf8mb4_unicode_ci,
  `FTEXT2` longtext COLLATE utf8mb4_unicode_ci,
  `FACTINSTID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_NC_HIVARINST_NAMETYPE` (`FNAME`,`FVARTYPE`),
  KEY `IDX_WF_NC_HIVARINST_PROCIDNAME` (`FPROCINSTID`,`FNAME`),
  KEY `IDX_WF_NC_HIVARINST_TASKID` (`FTASKID`),
  KEY `IDX_WF_NC_HIVARINST_EXECNAME` (`FEXECUTIONID`,`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nocode_hivarinst_r3 definition

CREATE TABLE `t_wf_nocode_hivarinst_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nodeanalysis definition

CREATE TABLE `t_wf_nodeanalysis` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FSCHEMEID` bigint NOT NULL DEFAULT '0',
  `FPROCNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGUNITID` bigint NOT NULL DEFAULT '0',
  `FNODEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODETYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FYEARS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSTANCECOUNT` int NOT NULL DEFAULT '0',
  `FTOTALDURATION` bigint NOT NULL DEFAULT '0',
  `FMAXDURATION` bigint NOT NULL DEFAULT '0',
  `FPROCNAME` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODENAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODETYPENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALREALDURATION` bigint NOT NULL DEFAULT '0',
  `FMAXREALDURATION` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_NODEANALY_YEARS` (`FYEARS`),
  KEY `IDX_WF_NODEANALY_PROCTYPE` (`FPROCTYPE`),
  KEY `IDX_WF_NODEANALY_PROCDEF` (`FPROCDEFID`),
  KEY `IDX_WF_NODEANALY_ENTITY` (`FENTITYNUMBER`),
  KEY `IDX_WF_NODEANALY_ORG` (`FORGUNITID`),
  KEY `IDX_WF_NODEANALY_NODETYPE` (`FNODETYPE`),
  KEY `IDX_WF_NODEANALY_NODEID` (`FNODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nodeanalysis_l definition

CREATE TABLE `t_wf_nodeanalysis_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCNAME` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODENAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODETYPENAME` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_NODEANALYSIS_L` (`FID`,`FLOCALEID`),
  KEY `IDX_WF_NODEANALY_L_PROCNAME` (`FPROCNAME`),
  KEY `IDX_WF_NODEANALY_L_NODENAME` (`FNODENAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nodeanalysis_r3 definition

CREATE TABLE `t_wf_nodeanalysis_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nodeboxconfig definition

CREATE TABLE `t_wf_nodeboxconfig` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FNODETEMPLATE` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WF_NODEBOXCONFIG` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nodetemplate definition

CREATE TABLE `t_wf_nodetemplate` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTENCILTYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROPERTIES` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FBIZIDENTIFICATION` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLOUDID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCESSTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'AuditFlow',
  `FVERSION` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Premium',
  `FSTATUS` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FENTITYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISINITIALIZATION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISEXTEND` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISSYSTEMNODE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDEVELOPMENTTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORG` bigint NOT NULL DEFAULT '0',
  `FISHIDDEN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPROPSDEFINITION` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_NODETEMPLATE` (`FCLOUDID`,`FSTENCILTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nodetemplate_l definition

CREATE TABLE `t_wf_nodetemplate_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_NODETEMPLATE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nodetemplate_r3 definition

CREATE TABLE `t_wf_nodetemplate_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nodetemplategroup definition

CREATE TABLE `t_wf_nodetemplategroup` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FPARENT` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISINITIALIZATION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_NODETPLGROUP_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nodetemplategroup_l definition

CREATE TABLE `t_wf_nodetemplategroup_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_NODETEMPLATEGROUP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nodetemplategroup_r3 definition

CREATE TABLE `t_wf_nodetemplategroup_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nodetemplatelog definition

CREATE TABLE `t_wf_nodetemplatelog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUP` bigint NOT NULL DEFAULT '0',
  `FOLDVALUE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOLDVALUE_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FNEWVALUE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNEWVALUE_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FOPERATION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODETEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_NODETPLLOG_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nodetemplatelog_l definition

CREATE TABLE `t_wf_nodetemplatelog_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_NODETEMPLATELOG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nodetemplatelog_r3 definition

CREATE TABLE `t_wf_nodetemplatelog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nodetoolbox definition

CREATE TABLE `t_wf_nodetoolbox` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLOUDID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORG` bigint NOT NULL DEFAULT '0',
  `FAPPLICATIONTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'common',
  `FPROCESSTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'AuditFlow',
  `FISDEFAULT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISINITIALIZATION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_WF_NODETOOLBOX_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nodetoolbox_l definition

CREATE TABLE `t_wf_nodetoolbox_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_NODETOOLBOX_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_nodetoolbox_r3 definition

CREATE TABLE `t_wf_nodetoolbox_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_notinprocess definition

CREATE TABLE `t_wf_notinprocess` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTITYNUMBER` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERRORREASON` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBMITTIME` datetime DEFAULT NULL,
  `FSUBMITTERID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEADLETTERID` bigint NOT NULL DEFAULT '0',
  `FENTRABILLNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSINESSKEY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREASONPAYLOAD` longtext COLLATE utf8mb4_unicode_ci,
  `FOPERATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FALARMMSGSENDLOGID` bigint NOT NULL DEFAULT '0',
  `FVARIABLES` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_NOTINPROCESS_BILLNO` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_notinprocess_l definition

CREATE TABLE `t_wf_notinprocess_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRABILLNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_NOTINPROCESS_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_notinprocess_r3 definition

CREATE TABLE `t_wf_notinprocess_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_operationlog definition

CREATE TABLE `t_wf_operationlog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCOMMENTID` bigint NOT NULL DEFAULT '0',
  `FBIZIDENTIFYKEY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FACTIVITYID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTEP` int NOT NULL DEFAULT '0',
  `FOWNERID` bigint NOT NULL DEFAULT '0',
  `FASSIGNEEID` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FBUSINESSKEY` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNO` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTERMINALWAY` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FOWNER` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSIGNEE` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYNAME` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPINION` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNOTE` longtext COLLATE utf8mb4_unicode_ci,
  `FBIZNOTE` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDECISIONTYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTNAME` varchar(115) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPUBLIC` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNOPINION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNOTE_SUMMARY` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_OPERATIONLOG` (`FPROCINSTID`),
  KEY `IDX_WF_OPERLOG_TASKID` (`FTASKID`),
  KEY `IDX_WF_OPERLOG_BILLNO` (`FBILLNO`),
  KEY `IDX_WF_OPERLOG_BUSKEY` (`FBUSINESSKEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_operationlog_l definition

CREATE TABLE `t_wf_operationlog_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOWNER` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSIGNEE` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYNAME` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPINION` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNOTE` longtext COLLATE utf8mb4_unicode_ci,
  `FBIZNOTE` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTNAME` varchar(115) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNOPINION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNOTE_SUMMARY` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_OPERATIONLOG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_operationlog_r3 definition

CREATE TABLE `t_wf_operationlog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_orgtype definition

CREATE TABLE `t_wf_orgtype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) NOT NULL DEFAULT ' ',
  `FNAME` varchar(230) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) NOT NULL DEFAULT ' ',
  `FENABLE` char(1) NOT NULL DEFAULT '1',
  `FSTATUS` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_ORGTYPE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_orgtype_entry definition

CREATE TABLE `t_wf_orgtype_entry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FORGNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FINCLUDESUBORDINATE` char(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WF_ORGTYPE_ENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_orgtype_l definition

CREATE TABLE `t_wf_orgtype_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(230) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_ORGTYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_orgtype_r3 definition

CREATE TABLE `t_wf_orgtype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_participant definition

CREATE TABLE `t_wf_participant` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(30) NOT NULL DEFAULT ' ',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FPARENTTASKID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FOWNERID` bigint NOT NULL DEFAULT '0',
  `FTRANSFEROPINION` varchar(2000) NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FPRIORITY` int NOT NULL DEFAULT '0',
  `FISPUBLIC` char(1) NOT NULL DEFAULT '0',
  `FCOMPOSITETASKID` bigint NOT NULL DEFAULT '0',
  `FUSERNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FUSERNAMEFORMATTER` varchar(500) NOT NULL DEFAULT ' ',
  `FDELEGATEID` bigint NOT NULL DEFAULT '0',
  `FISDISPLAY` char(1) NOT NULL DEFAULT '1',
  `FTRUSTNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FTRUSTNAMEFORMAT` varchar(500) NOT NULL DEFAULT ' ',
  `FCURRENTSUBJECT` varchar(3000) NOT NULL DEFAULT ' ',
  `FREADTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_ATHRZ_PROCEDEF` (`FPROCDEFID`),
  KEY `IDX_WF_IDENT_LNK_PROCINST` (`FPROCINSTID`),
  KEY `IDX_WF_IDLNK_TASK_USER_PRIO` (`FTASKID`,`FUSERID`,`FPRIORITY`),
  KEY `IDX_WF_IDENT_LNK_PTASKID` (`FPARENTTASKID`),
  KEY `IDX_WF_IDENT_LNK_OWNERID` (`FOWNERID`),
  KEY `IDX_WF_IDENT_LNK_TYPE` (`FTYPE`),
  KEY `IDX_WF_IDENT_LNK_USER` (`FUSERID`,`FTYPE`,`FDELEGATEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_participant_l definition

CREATE TABLE `t_wf_participant_l` (
  `FPKID` varchar(18) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FUSERNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FTRANSFEROPINION` varchar(2000) NOT NULL DEFAULT ' ',
  `FUSERNAMEFORMATTER` varchar(500) NOT NULL DEFAULT ' ',
  `FTRUSTNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FTRUSTNAMEFORMAT` varchar(500) NOT NULL DEFAULT ' ',
  `FCURRENTSUBJECT` varchar(3000) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_PARTICIPANT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_participant_r2 definition

CREATE TABLE `t_wf_participant_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_participant_r3 definition

CREATE TABLE `t_wf_participant_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_participantmodel definition

CREATE TABLE `t_wf_participantmodel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(30) NOT NULL DEFAULT ' ',
  `FCONDITIONEXPRESSION` longtext,
  `FVALUE` varchar(3000) NOT NULL DEFAULT ' ',
  `FORGUNITID` bigint NOT NULL DEFAULT '0',
  `FBUSINESSORGFIELD` varchar(255) NOT NULL DEFAULT ' ',
  `FROLEID` bigint NOT NULL DEFAULT '0',
  `FREFERENCEPERSON` varchar(500) NOT NULL DEFAULT ' ',
  `FREPORTTYPE` varchar(100) NOT NULL DEFAULT ' ',
  `FPERSONRELATION` varchar(100) NOT NULL DEFAULT ' ',
  `FREFERENCEORG` varchar(500) NOT NULL DEFAULT ' ',
  `FORGRELATION` varchar(100) NOT NULL DEFAULT ' ',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FTASKACTIVITYID` varchar(255) NOT NULL DEFAULT ' ',
  `FCONDRULEID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FDEFAULTCONDITION` char(1) NOT NULL DEFAULT '0',
  `FPROPERTY` varchar(255) DEFAULT NULL,
  `FSHOWVALUE` longtext,
  `FSCHEMEID` bigint NOT NULL DEFAULT '0',
  `FREQUIRED` char(1) NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(500) NOT NULL DEFAULT ' ',
  `FMAINDESCRIPTION` varchar(500) NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FACTIVITYNAME` varchar(500) NOT NULL DEFAULT ' ',
  `FMODJSONPARTID` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONFIELD` varchar(1000) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_PARTICIPANTMODEL_PEDF` (`FPROCDEFID`),
  KEY `IDX_WF_PARTICIMODEL_MODELID` (`FMODELID`,`FTASKACTIVITYID`),
  KEY `IDX_WF_PARTICIMODEL_SCHEMEID` (`FSCHEMEID`,`FTASKACTIVITYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_participantmodel_l definition

CREATE TABLE `t_wf_participantmodel_l` (
  `FPKID` varchar(36) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) NOT NULL DEFAULT ' ',
  `FMAINDESCRIPTION` varchar(500) NOT NULL DEFAULT ' ',
  `FACTIVITYNAME` varchar(500) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_PARTICIPANTMODEL_LOC` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_participantmodel_r2 definition

CREATE TABLE `t_wf_participantmodel_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_participantmodel_r3 definition

CREATE TABLE `t_wf_participantmodel_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_participantmodelc_r3 definition

CREATE TABLE `t_wf_participantmodelc_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_participantmodelcfg definition

CREATE TABLE `t_wf_participantmodelcfg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(184) NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(30) NOT NULL DEFAULT ' ',
  `FTYPE` varchar(30) NOT NULL DEFAULT ' ',
  `FFORMID` varchar(255) NOT NULL DEFAULT ' ',
  `FPARSER` varchar(255) NOT NULL DEFAULT ' ',
  `FAPPLICATIONID` varchar(36) NOT NULL DEFAULT ' ',
  `FAPPLICATIONNAME` varchar(184) NOT NULL DEFAULT ' ',
  `FAVATAR` varchar(300) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_PARTICIPANTMODELCFG` (`FAPPLICATIONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_participantmodelcfg_l definition

CREATE TABLE `t_wf_participantmodelcfg_l` (
  `FPKID` varchar(36) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) NOT NULL DEFAULT ' ',
  `FNAME` varchar(184) NOT NULL DEFAULT ' ',
  `FAPPLICATIONNAME` varchar(184) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_PARTICIPANTCFG_LOC` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_participantmodelcfg_r2 definition

CREATE TABLE `t_wf_participantmodelcfg_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_participantmodelcfg_r3 definition

CREATE TABLE `t_wf_participantmodelcfg_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_performancebill definition

CREATE TABLE `t_wf_performancebill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(100) NOT NULL DEFAULT ' ',
  `FDATE` datetime DEFAULT NULL,
  `FTYPE` varchar(30) NOT NULL DEFAULT ' ',
  `FREASON` varchar(100) NOT NULL DEFAULT ' ',
  `FAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBILLSTATUS` varchar(30) NOT NULL DEFAULT ' ',
  `FORG` bigint NOT NULL DEFAULT '0',
  `FBILLTYPE` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_PERFORMANCEBILL_NUMBER` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_personanalysis definition

CREATE TABLE `t_wf_personanalysis` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FSCHEMEID` bigint NOT NULL DEFAULT '0',
  `FPROCNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGUNITID` bigint NOT NULL DEFAULT '0',
  `FNODEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODETYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSIGNEEID` bigint NOT NULL DEFAULT '0',
  `FASSIGNEENUMBER` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSIGNEEAVATAR` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FYEARS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSTANCECOUNT` int NOT NULL DEFAULT '0',
  `FTOTALDURATION` bigint NOT NULL DEFAULT '0',
  `FMAXDURATION` bigint NOT NULL DEFAULT '0',
  `FPROCNAME` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODENAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODETYPENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSIGNEE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALREALDURATION` bigint NOT NULL DEFAULT '0',
  `FMAXREALDURATION` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_PERSONANALY_YEARS` (`FYEARS`),
  KEY `IDX_WF_PERSONANALY_PROCTYPE` (`FPROCTYPE`),
  KEY `IDX_WF_PERSONANALY_PROCDEF` (`FPROCDEFID`),
  KEY `IDX_WF_PERSONANALY_ENTITY` (`FENTITYNUMBER`),
  KEY `IDX_WF_PERSONANALY_ORG` (`FORGUNITID`),
  KEY `IDX_WF_PERSONANALY_NODETYPE` (`FNODETYPE`),
  KEY `IDX_WF_PERSONANALY_NODEID` (`FNODEID`),
  KEY `IDX_WF_PERSONANALY_USERID` (`FASSIGNEEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_personanalysis_l definition

CREATE TABLE `t_wf_personanalysis_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCNAME` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODENAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODETYPENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSIGNEE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_PERSONANALYSIS_L` (`FID`,`FLOCALEID`),
  KEY `IDX_WF_PERSONANALY_L_NODENAME` (`FNODENAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_personanalysis_r3 definition

CREATE TABLE `t_wf_personanalysis_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_pluginexedetail definition

CREATE TABLE `t_wf_pluginexedetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FJOBID` bigint NOT NULL DEFAULT '0',
  `FPROCESSNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSINESSKEY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FDURATION` bigint NOT NULL DEFAULT '0',
  `FEXECUTOR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACEID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLUGINNO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLUGINNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FELEMENTID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_PLUGINEXEDETL_PROCINST` (`FPROCINSTID`),
  KEY `IDX_WF_PLUGINEXEDETL_PLUGINNO` (`FPLUGINNO`),
  KEY `IDX_WF_PLUGINEXEDETL_PROCNO` (`FPROCESSNO`),
  KEY `IDX_WF_PLUGINEXEDETL_JOBID` (`FJOBID`),
  KEY `IDX_WF_PLUGINEXEDETL_CREADATE` (`FCREATEDATE`),
  KEY `IDX_WF_PLUGINEXEDETL_BUSKEY` (`FBUSINESSKEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_pluginexedetail_l definition

CREATE TABLE `t_wf_pluginexedetail_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLUGINNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_PLUGINEXEDETAIL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_pluginexedetail_r3 definition

CREATE TABLE `t_wf_pluginexedetail_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_pluginexesummary definition

CREATE TABLE `t_wf_pluginexesummary` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPLUGINNO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLUGINNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALDURATION` bigint NOT NULL DEFAULT '0',
  `FEXECUTEDTIMES` int NOT NULL DEFAULT '0',
  `FAVERAGEDURATION` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_PLUGINEXESUMY_PLUGINNO` (`FPLUGINNO`),
  KEY `IDX_WF_PLUGINEXESUMY_PLUGNAME` (`FPLUGINNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_pluginexesummary_l definition

CREATE TABLE `t_wf_pluginexesummary_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLUGINNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_PLUGINEXESUMMARY_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_pluginexesummary_r3 definition

CREATE TABLE `t_wf_pluginexesummary_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_plugininfos definition

CREATE TABLE `t_wf_plugininfos` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSION` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODENUMBER` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODENAME` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLUGIN` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSIONSTATE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRABILL` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_PLUGININFOS_PROCNUMBER` (`FPROCNUMBER`),
  KEY `IDX_WF_PLUGININFOS_ENTRABILL` (`FENTRABILL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_plugininfos_r3 definition

CREATE TABLE `t_wf_plugininfos_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_pluginprocinfo definition

CREATE TABLE `t_wf_pluginprocinfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FPROCESSNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCNANE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCESSTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSION` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FELEMENTID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FELEMENTNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCENE` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLUGINTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLUGINNO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLUGINNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXECUTEDTIMES` int NOT NULL DEFAULT '0',
  `FAVERAGEDURATION` bigint NOT NULL DEFAULT '0',
  `FREFERENCEINFO` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRABILLNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALDURATION` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_PLUGINPROCINF_PROCPLUG` (`FPROCESSNO`,`FPLUGINNO`),
  KEY `IDX_WF_PLUGINPROCINF_PLUGNAME` (`FPLUGINNAME`),
  KEY `IDX_WF_PLUGINPROCINF_PLUGTYPE` (`FPLUGINTYPE`),
  KEY `IDX_WF_PLUGINPROCINF_PROCDEF` (`FPROCDEFID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_pluginprocinfo_l definition

CREATE TABLE `t_wf_pluginprocinfo_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCNANE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FELEMENTNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLUGINNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRABILLNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_PLUGINPROCINFO_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_pluginprocinfo_r3 definition

CREATE TABLE `t_wf_pluginprocinfo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_precomputorinstan_r3 definition

CREATE TABLE `t_wf_precomputorinstan_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_precomputorinstance definition

CREATE TABLE `t_wf_precomputorinstance` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FEXECUTIONID` bigint NOT NULL DEFAULT '0',
  `FSCHEMEID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FSTRATEGY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALIDITY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FVERSION` bigint NOT NULL DEFAULT '0',
  `FBUSINESSKEY` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNO` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTID` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYNODEID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYTASKID` bigint NOT NULL DEFAULT '0',
  `FENTRYAUDITNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYNAME` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYNODENAME` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYAUDITNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDK_WF_PRECOMPINST_SCHEME` (`FSCHEMEID`),
  KEY `IDK_WF_PRECOMPINST_VALIDITY` (`FVALIDITY`),
  KEY `IDK_WF_PRECOMPINST_PROCVER` (`FPROCINSTID`,`FVERSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_precomputorinstance_l definition

CREATE TABLE `t_wf_precomputorinstance_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYNAME` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYNODENAME` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYAUDITNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDK_WF_PRECOMPUTORINST_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_precomputorresult definition

CREATE TABLE `t_wf_precomputorresult` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FISNORMAL` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FNODEID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSIGNEE` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODETYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZIDENTIFYKEY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNEXTNODEID` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERRTYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXCEPTIONMSG` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXCEPTIONMSG_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FNODENAME` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSIGNEENAME` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERRMSG` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WF_PRECOMPUTORRESULT` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_precomputorresult_l definition

CREATE TABLE `t_wf_precomputorresult_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODENAME` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSIGNEENAME` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERRMSG` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_PRECOMPUTORRESULT_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_procanalysis definition

CREATE TABLE `t_wf_procanalysis` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FSCHEMEID` bigint NOT NULL DEFAULT '0',
  `FPROCNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCVERSION` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGUNITID` bigint NOT NULL DEFAULT '0',
  `FYEARS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSTANCECOUNT` int NOT NULL DEFAULT '0',
  `FTOTALDURATION` bigint NOT NULL DEFAULT '0',
  `FPROCNAME` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALREALDURATION` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_PROCANALY_YEARS` (`FYEARS`),
  KEY `IDX_WF_PROCANALY_PROCTYPE` (`FPROCTYPE`),
  KEY `IDX_WF_PROCANALY_PROCDEF` (`FPROCDEFID`),
  KEY `IDX_WF_PROCANALY_PROCNUMBER` (`FPROCNUMBER`),
  KEY `IDX_WF_PROCANALY_ENTITY` (`FENTITYNUMBER`),
  KEY `IDX_WF_PROCANALY_ORG` (`FORGUNITID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_procanalysis_l definition

CREATE TABLE `t_wf_procanalysis_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCNAME` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_PROCANALYSIS_L` (`FID`,`FLOCALEID`),
  KEY `IDX_WF_PROCANALY_L_PROCNAME` (`FPROCNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_procanalysis_r3 definition

CREATE TABLE `t_wf_procanalysis_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_proccate definition

CREATE TABLE `t_wf_proccate` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FISLEAF` char(1) NOT NULL DEFAULT '1',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FAPPLICATIONID` varchar(36) NOT NULL DEFAULT ' ',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FNAME` varchar(230) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1024) NOT NULL DEFAULT ' ',
  `FPROCESSTYPE` varchar(30) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_PROCCATE_NUMBER` (`FNUMBER`),
  KEY `IDX_WF_PROCCATE_PARENTID` (`FPARENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_proccate_l definition

CREATE TABLE `t_wf_proccate_l` (
  `FPKID` varchar(36) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) NOT NULL DEFAULT ' ',
  `FNAME` varchar(230) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1024) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_PROCCATE_LOCALEID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_proccate_r2 definition

CREATE TABLE `t_wf_proccate_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_proccate_r3 definition

CREATE TABLE `t_wf_proccate_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_procdef definition

CREATE TABLE `t_wf_procdef` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FKEY` varchar(50) NOT NULL DEFAULT ' ',
  `FCATEGORYNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FVERSION` varchar(36) NOT NULL DEFAULT ' ',
  `FDEPLOYMENTID` bigint NOT NULL DEFAULT '0',
  `FRESOURCEID` bigint NOT NULL DEFAULT '0',
  `FGRAPHNAME` varchar(80) NOT NULL DEFAULT ' ',
  `FGRAPHICALDEFINED` char(1) NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) NOT NULL DEFAULT ' ',
  `FENGINEVERSION` varchar(36) NOT NULL DEFAULT ' ',
  `FENTRABILL` varchar(36) NOT NULL DEFAULT ' ',
  `FENTRABILLID` varchar(36) NOT NULL DEFAULT ' ',
  `FORGUNITID` bigint NOT NULL DEFAULT '0',
  `FOPERATION` varchar(300) NOT NULL DEFAULT ' ',
  `FPARENTPROCID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(30) NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FVERSIONSTATE` varchar(50) NOT NULL DEFAULT ' ',
  `FNAME` varchar(115) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(3000) NOT NULL DEFAULT ' ',
  `FCATEGORYNAME` varchar(115) NOT NULL DEFAULT ' ',
  `FVERSIONDESC` varchar(255) NOT NULL DEFAULT ' ',
  `FPUBLISHNAME` varchar(230) NOT NULL DEFAULT ' ',
  `FAPPLICATIONID` varchar(36) NOT NULL DEFAULT ' ',
  `FTEMPLATE` varchar(100) NOT NULL DEFAULT ' ',
  `FBUSINESSID` varchar(255) NOT NULL DEFAULT ' ',
  `FORGVIEWID` varchar(50) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_PROCDEF_NUMBER` (`FKEY`),
  KEY `IDX_WF_PROCDEF_ENABLE` (`FENABLE`),
  KEY `IDX_WF_PROCDEF_TYPE` (`FTYPE`),
  KEY `IDX_WF_PROCDEF_ENTRABILL` (`FENTRABILL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_procdef_l definition

CREATE TABLE `t_wf_procdef_l` (
  `FPKID` varchar(36) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) NOT NULL DEFAULT ' ',
  `FNAME` varchar(115) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(3000) NOT NULL DEFAULT ' ',
  `FCATEGORYNAME` varchar(115) NOT NULL DEFAULT ' ',
  `FVERSIONDESC` varchar(255) NOT NULL DEFAULT ' ',
  `FPUBLISHNAME` varchar(230) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_PROCDEF_LOCALEID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_procdef_r2 definition

CREATE TABLE `t_wf_procdef_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_procdef_r3 definition

CREATE TABLE `t_wf_procdef_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_procdefinfo definition

CREATE TABLE `t_wf_procdefinfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FINFOJSONID` varchar(255) NOT NULL DEFAULT ' ',
  `FOPERATION` varchar(100) NOT NULL DEFAULT ' ',
  `FACTID` varchar(100) NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(100) NOT NULL DEFAULT ' ',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FENTITYNAME` varchar(255) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_PROCDEFINFO_OPR_ENTITY` (`FOPERATION`,`FENTITYNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_procdefinfo_l definition

CREATE TABLE `t_wf_procdefinfo_l` (
  `FPKID` varchar(18) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(255) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_PROCDEFINFO_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_procdefinfo_r2 definition

CREATE TABLE `t_wf_procdefinfo_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_procdefinfo_r3 definition

CREATE TABLE `t_wf_procdefinfo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_processconfig definition

CREATE TABLE `t_wf_processconfig` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FEXCEPTIONCONFIG` varchar(2000) NOT NULL DEFAULT ' ',
  `FSTARTCONDITION` longtext,
  `FCONDRULEID` bigint NOT NULL DEFAULT '0',
  `FENTITYNUMBER` varchar(36) NOT NULL DEFAULT ' ',
  `FOPERATION` varchar(300) NOT NULL DEFAULT ' ',
  `FISALLOWNEXTPERSON` char(1) NOT NULL DEFAULT '0',
  `FENABLE` char(1) NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FALLOWSTART` char(1) NOT NULL DEFAULT '1',
  `FBATCHNUMBER` varchar(500) NOT NULL DEFAULT ' ',
  `FBATCHNUMNAME` varchar(500) NOT NULL DEFAULT ' ',
  `FSTARTTYPE` varchar(30) NOT NULL DEFAULT 'operation',
  `FEVENTNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FPROCESSTYPE` varchar(30) NOT NULL DEFAULT 'AuditFlow',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_PROCESSCFG_PDEF` (`FPROCDEFID`),
  KEY `IDX_WF_PROCESSCFG_ENTI_OPER` (`FENTITYNUMBER`,`FOPERATION`,`FISALLOWNEXTPERSON`,`FENABLE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_processconfig_r2 definition

CREATE TABLE `t_wf_processconfig_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_processconfig_r3 definition

CREATE TABLE `t_wf_processconfig_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_processevent definition

CREATE TABLE `t_wf_processevent` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FEVENTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTDESC` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FNUMBER` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_WF_PROCEVTUNIQUENUMBER` (`FNUMBER`),
  KEY `IDX_WF_PROCEVT_EVTNUMBERNAME` (`FEVENTNUMBER`,`FEVENTNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_processevent_l definition

CREATE TABLE `t_wf_processevent_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTNAME` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FEVENTDESC` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_PROCESSEVENT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_processevent_r3 definition

CREATE TABLE `t_wf_processevent_r3` (
  `fid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_processevententry definition

CREATE TABLE `t_wf_processevententry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FENTRYNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYDESC` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WF_PROCEVENTENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_processevententry_l definition

CREATE TABLE `t_wf_processevententry_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYNAME` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FENTRYDESC` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_PROCESSEVENTENTRY_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_processinfo definition

CREATE TABLE `t_wf_processinfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FSCHEMEID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPROCESSTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESOURCEID` bigint NOT NULL DEFAULT '0',
  `FSCHEMETYPE` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_PROCESSINFO_PROCDEF` (`FPROCDEFID`),
  KEY `IDX_WF_PROCESSINFO_SCHEME` (`FSCHEMEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_processinfo_r3 definition

CREATE TABLE `t_wf_processinfo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_processinfodetail definition

CREATE TABLE `t_wf_processinfodetail` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FACTIVITYID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYTYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYENTITYID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYNAME` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYTYPENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYTEMPLATEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WF_PROCESSINFODETAIL` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_processinfodetail_l definition

CREATE TABLE `t_wf_processinfodetail_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYNAME` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYTYPENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_PROCESSINFODETAIL_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_proctpl definition

CREATE TABLE `t_wf_proctpl` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FIDENTIFICATION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FENTITYNUMBER` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FRESOURCEID` bigint NOT NULL DEFAULT '0',
  `FPUBLISH` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FCOPYFROM` bigint NOT NULL DEFAULT '0',
  `FPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPROCESSTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'AuditFlow',
  `FSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'disable',
  `FPARENTVERSION` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_WF_PROCTPL_NUMBER` (`FNUMBER`),
  KEY `IDX_WF_PROCTPL_IDENTIFI` (`FIDENTIFICATION`),
  KEY `IDX_WF_PROCTPL_CATEGORY` (`FCATEGORYID`),
  KEY `IDX_WF_PROCTPL_ORG` (`FORGID`),
  KEY `IDX_WF_PROCTPL_ENTITY` (`FENTITYNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_proctpl_l definition

CREATE TABLE `t_wf_proctpl_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_PROCTPL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_proctpl_r3 definition

CREATE TABLE `t_wf_proctpl_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_proctplcategory definition

CREATE TABLE `t_wf_proctplcategory` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FPROCESSTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPLICATIONID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_WF_PROCTPLCATEGORY_NUMBER` (`FNUMBER`),
  KEY `IDX_WF_PROCTPLCATEGORY_APPID` (`FAPPLICATIONID`),
  KEY `IDX_WF_PROCTPLCATEGORY_PARENT` (`FPARENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_proctplcategory_l definition

CREATE TABLE `t_wf_proctplcategory_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_PROCTPLCATEGORY_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_proctplcategory_r3 definition

CREATE TABLE `t_wf_proctplcategory_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_proctplreleaselog definition

CREATE TABLE `t_wf_proctplreleaselog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCTPLID` bigint NOT NULL DEFAULT '0',
  `FVERSION` int NOT NULL DEFAULT '0',
  `FOLDRESOURCEID` bigint NOT NULL DEFAULT '0',
  `FNEWRESOURCEID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_PROCTPLRELEASELOG_USER` (`FCREATORID`),
  KEY `IDX_WF_PROCTPLRELEASELOG_TIME` (`FCREATEDATE`),
  KEY `IDX_WF_PROCTPLRELEASELOG_TPL` (`FPROCTPLID`,`FVERSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_proctplreleaselog_r3 definition

CREATE TABLE `t_wf_proctplreleaselog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_recoversyserrlog definition

CREATE TABLE `t_wf_recoversyserrlog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FERRORTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECOVERDETAILS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECOVERDETAILS_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FFIXTOTAL` bigint NOT NULL DEFAULT '0',
  `FDURATION` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_RECOVSYSERRLOG_STADATE` (`FSTARTDATE`),
  KEY `IDX_WF_RECOVSYSERRLOG_ENDDATE` (`FENDDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_recoversyserrlog_r3 definition

CREATE TABLE `t_wf_recoversyserrlog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_refpersontype definition

CREATE TABLE `t_wf_refpersontype` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_REFPERSONTYPE` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_relatetaskid definition

CREATE TABLE `t_wf_relatetaskid` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FCHANNEL` varchar(100) NOT NULL DEFAULT ' ',
  `FKEY` varchar(100) NOT NULL DEFAULT ' ',
  `FSETTING` varchar(500) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_RELATETASKID` (`FTASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_relationtypedef definition

CREATE TABLE `t_wf_relationtypedef` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRELTYPENUM` varchar(36) NOT NULL DEFAULT ' ',
  `FAPIMETHOD` varchar(100) NOT NULL DEFAULT ' ',
  `FRELTYPEDESC` varchar(230) NOT NULL DEFAULT ' ',
  `FRELTYPENAME` varchar(230) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  UNIQUE KEY `IDX_WF_RELATIONTYPE_NUM` (`FID`,`FRELTYPENUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_relationtypedef_l definition

CREATE TABLE `t_wf_relationtypedef_l` (
  `FPKID` varchar(18) NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FRELTYPEDESC` varchar(230) NOT NULL DEFAULT ' ',
  `FRELTYPENAME` varchar(230) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_RELATIONTYPEDEF_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_reltypeparamsdef definition

CREATE TABLE `t_wf_reltypeparamsdef` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPARAMNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FPARAMTYPE` varchar(36) NOT NULL DEFAULT ' ',
  `FENTITYOBJECT` varchar(100) NOT NULL DEFAULT ' ',
  `FPARAMUSTINPUT` char(1) NOT NULL DEFAULT '1',
  `FPARAMDESC` varchar(230) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  UNIQUE KEY `IDX_WF_RELTYPEPARAMS_NAME` (`FENTRYID`,`FPARAMNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_reltypeparamsdef_l definition

CREATE TABLE `t_wf_reltypeparamsdef_l` (
  `FPKID` varchar(18) NOT NULL DEFAULT ' ',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FPARAMDESC` varchar(230) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_RELTYPEPARAMSDEF_L` (`FDETAILID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_repairedata definition

CREATE TABLE `t_wf_repairedata` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOBJID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FKEY` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_REPAIREDATA_OBJID` (`FOBJID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_repairedata_r3 definition

CREATE TABLE `t_wf_repairedata_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_repairlog definition

CREATE TABLE `t_wf_repairlog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FEXCEPTIONMSG` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_REPAIRLOG_TASKID` (`FTASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_repairlog_r3 definition

CREATE TABLE `t_wf_repairlog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_repairtask definition

CREATE TABLE `t_wf_repairtask` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSINESSOBJ` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLIMITSIZE` int NOT NULL DEFAULT '0',
  `FTIMES` int NOT NULL DEFAULT '0',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FRETRY` int NOT NULL DEFAULT '0',
  `FPARAMS` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRIORITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_REPAIRTASK_STATE` (`FSTATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_repairtask_r3 definition

CREATE TABLE `t_wf_repairtask_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_reqbill definition

CREATE TABLE `t_wf_reqbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) NOT NULL DEFAULT ' ',
  `FTEL` varchar(100) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(100) NOT NULL DEFAULT ' ',
  `FBIZDATE` datetime DEFAULT NULL,
  `FBILLSTATUS` varchar(30) NOT NULL DEFAULT ' ',
  `FAPPLIERID` bigint NOT NULL DEFAULT '0',
  `FCOSTDEPTID` bigint NOT NULL DEFAULT '0',
  `FAPPLYWAY` varchar(100) NOT NULL DEFAULT ' ',
  `FDEPARTMENT` varchar(100) NOT NULL DEFAULT ' ',
  `FAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_REQBILL_FBILLNO` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_reqtripentry definition

CREATE TABLE `t_wf_reqtripentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFROMPLACEID` bigint NOT NULL DEFAULT '0',
  `FTOPLACEID` bigint NOT NULL DEFAULT '0',
  `FROUNDTRIP` varchar(30) NOT NULL DEFAULT ' ',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FVEHICLE` varchar(30) NOT NULL DEFAULT ' ',
  `FTRIPCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FORIAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEXCHANGERATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTRIPAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONVERTMODE` varchar(30) NOT NULL DEFAULT ' ',
  `FEXCHANGERATEPREC` bigint NOT NULL DEFAULT '0',
  `FENTRYCOSTDEPT` bigint NOT NULL DEFAULT '0',
  `FTRAVELERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WF_REQTRIPENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_resourcerelation definition

CREATE TABLE `t_wf_resourcerelation` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCNUMBER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORIGVERSION` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORIGMODELID` bigint NOT NULL DEFAULT '0',
  `FORIGPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FORIGRESOURCEID` bigint NOT NULL DEFAULT '0',
  `FNEWVERSION` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNEWMODELID` bigint NOT NULL DEFAULT '0',
  `FNEWPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FNEWRESOURCEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_RESOURCERELATION` (`FPROCNUMBER`,`FORIGVERSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_resourcerelation_r3 definition

CREATE TABLE `t_wf_resourcerelation_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_role definition

CREATE TABLE `t_wf_role` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(36) NOT NULL DEFAULT ' ',
  `FORGUNIT` bigint NOT NULL DEFAULT '0',
  `FMANAGER` bigint NOT NULL DEFAULT '0',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FUSECOUNT` int NOT NULL DEFAULT '0',
  `FNAME` varchar(500) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) NOT NULL DEFAULT ' ',
  `FROLEDIMENSION` varchar(1000) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_ROLE_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_role_l definition

CREATE TABLE `t_wf_role_l` (
  `FPKID` varchar(36) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) NOT NULL DEFAULT ' ',
  `FNAME` varchar(500) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_ROLE_LOCALEID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_role_r2 definition

CREATE TABLE `t_wf_role_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_role_r3 definition

CREATE TABLE `t_wf_role_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_roleentry definition

CREATE TABLE `t_wf_roleentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FORG` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(36) NOT NULL DEFAULT ' ',
  `FPOSITION` bigint NOT NULL DEFAULT '0',
  `FUSER` bigint NOT NULL DEFAULT '0',
  `FALTERNATETYPE` varchar(36) NOT NULL DEFAULT ' ',
  `FALTERNATEUSER` bigint NOT NULL DEFAULT '0',
  `FUSERPOSITION` bigint NOT NULL DEFAULT '0',
  `FFUNCTIONTYPE` bigint NOT NULL DEFAULT '0',
  `FDIMENSION1` varchar(36) NOT NULL DEFAULT ' ',
  `FDIMENSION2` varchar(36) NOT NULL DEFAULT ' ',
  `FDIMENSION3` varchar(36) NOT NULL DEFAULT ' ',
  `FDIMENSION4` varchar(36) NOT NULL DEFAULT ' ',
  `FNUMBERDIMENSION1` varchar(100) NOT NULL DEFAULT ' ',
  `FNUMBERDIMENSION2` varchar(100) NOT NULL DEFAULT ' ',
  `FNUMBERDIMENSION3` varchar(100) NOT NULL DEFAULT ' ',
  `FNUMBERDIMENSION4` varchar(100) NOT NULL DEFAULT ' ',
  `FMULILANGDIMENSION1` varchar(500) NOT NULL DEFAULT ' ',
  `FMULILANGDIMENSION2` varchar(500) NOT NULL DEFAULT ' ',
  `FMULILANGDIMENSION3` varchar(500) NOT NULL DEFAULT ' ',
  `FMULILANGDIMENSION4` varchar(500) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WF_ROLEENTRY_ID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_roleentry_l definition

CREATE TABLE `t_wf_roleentry_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMULILANGDIMENSION1` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMULILANGDIMENSION2` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMULILANGDIMENSION3` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMULILANGDIMENSION4` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_ROLEENTRY_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_rtrelation definition

CREATE TABLE `t_wf_rtrelation` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FRULEID` bigint NOT NULL DEFAULT '0',
  `FRULETYPE` varchar(100) NOT NULL DEFAULT ' ',
  `FMARKID` bigint NOT NULL DEFAULT '0',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FPRIORITY` bigint NOT NULL DEFAULT '50',
  `FCURRENTSUBJECT` varchar(3000) NOT NULL DEFAULT ' ',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_RTRELATION_TASK` (`FTASKID`),
  KEY `IDX_WF_RTRELATION_RULE` (`FRULEID`),
  KEY `IDX_WF_RTRELATION_MARKID` (`FMARKID`),
  KEY `IDX_WF_RTRELATION_USERID` (`FUSERID`),
  KEY `IDX_WF_RTRELATION_PROCINST` (`FPROCINSTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_rtrelation_l definition

CREATE TABLE `t_wf_rtrelation_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENTSUBJECT` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_RTRELATION_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_rtrelation_r2 definition

CREATE TABLE `t_wf_rtrelation_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_rtrelation_r3 definition

CREATE TABLE `t_wf_rtrelation_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_schedulemqmanage definition

CREATE TABLE `t_wf_schedulemqmanage` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERRORCODE` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERRORTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERRORINFO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERRORINFO_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FAPPID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_SCHEMQMANAGE_STARTDATE` (`FSTARTDATE`),
  KEY `IDX_WF_SCHEMQMANAGE_STATE` (`FSTATE`),
  KEY `IDX_WF_SCHEMQMANAGE_PARENTID` (`FPARENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_schedulemqmanage_l definition

CREATE TABLE `t_wf_schedulemqmanage_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_SCHEDULEMQMANAGE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_schedulemqmanage_r3 definition

CREATE TABLE `t_wf_schedulemqmanage_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_smsinfo definition

CREATE TABLE `t_wf_smsinfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSMSID` bigint NOT NULL DEFAULT '0',
  `FRETRYNUMBER` int NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FENTITYNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATAID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAG` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTENT` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATE` int NOT NULL DEFAULT '0',
  `FMESSAGEID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_SMSINFO_CREATEDATE` (`FCREATEDATE`),
  KEY `IDX_WF_SMSINFO_ENTITYNUMBER` (`FENTITYNUMBER`),
  KEY `IDX_WF_SMSINFO_BIZDATAID` (`FBIZDATAID`),
  KEY `IDX_WF_SMSINFO_USERID` (`FUSERID`),
  KEY `IDX_WF_SMSINFO_MESSAGEID` (`FMESSAGEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_smsinfo_l definition

CREATE TABLE `t_wf_smsinfo_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAG` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTENT` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_SMSINFO_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_smsinfo_r3 definition

CREATE TABLE `t_wf_smsinfo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_smsusingquantity definition

CREATE TABLE `t_wf_smsusingquantity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERMITENDDATE` datetime DEFAULT NULL,
  `FSMSNUMBER` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_SMSUSINGQUANTITY` (`FPERMITENDDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_smsusingquantity_r3 definition

CREATE TABLE `t_wf_smsusingquantity_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_suspendedjob definition

CREATE TABLE `t_wf_suspendedjob` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(30) NOT NULL DEFAULT ' ',
  `FEXCLUSIVE` char(1) NOT NULL DEFAULT '0',
  `FEXECUTIONID` bigint NOT NULL DEFAULT '0',
  `FPROCESSINSTANCEID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FRETRIES` int NOT NULL DEFAULT '3',
  `FEXCEPTIONMSG` longtext,
  `FDUEDATE` datetime DEFAULT NULL,
  `FREPEAT` varchar(30) NOT NULL DEFAULT ' ',
  `FHANDLERTYPE` varchar(30) NOT NULL DEFAULT ' ',
  `FHANDLERCFG` longtext,
  `FBUSINESSKEY` varchar(36) NOT NULL DEFAULT ' ',
  `FOPERATION` varchar(300) NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FELEMENTID` varchar(80) NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FISACTIVE` char(1) NOT NULL DEFAULT '1',
  `FSRCJOBID` bigint NOT NULL DEFAULT '0',
  `FROOTTRACENO` varchar(100) NOT NULL DEFAULT ' ',
  `FBIZTRACENO` varchar(255) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_SUSPENDJOB_EXECUTION` (`FEXECUTIONID`),
  KEY `IDX_WF_SUSPENDJOB_PROCDEF` (`FPROCDEFID`),
  KEY `IDX_WF_SUSPENDJOB_PROCESS` (`FPROCESSINSTANCEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_suspendedjob_r2 definition

CREATE TABLE `t_wf_suspendedjob_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_suspendedjob_r3 definition

CREATE TABLE `t_wf_suspendedjob_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_systype definition

CREATE TABLE `t_wf_systype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(30) NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FSERVICEIMPL` varchar(300) NOT NULL DEFAULT ' ',
  `FERPVERSION` varchar(100) NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_SYSTYPE_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_systype_l definition

CREATE TABLE `t_wf_systype_l` (
  `FPKID` varchar(36) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_SYSTYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_systype_r2 definition

CREATE TABLE `t_wf_systype_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_systype_r3 definition

CREATE TABLE `t_wf_systype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_task definition

CREATE TABLE `t_wf_task` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FEXECUTIONID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FTASKDEFID` varchar(255) NOT NULL DEFAULT ' ',
  `FPARENTTASKID` bigint NOT NULL DEFAULT '0',
  `FOWNER` varchar(50) NOT NULL DEFAULT ' ',
  `FASSIGNEE` varchar(255) NOT NULL DEFAULT ' ',
  `FDELEGATION` varchar(30) NOT NULL DEFAULT ' ',
  `FPRIORITY` int NOT NULL DEFAULT '0',
  `FDUEDATE` datetime DEFAULT NULL,
  `FCATEGORY` varchar(100) NOT NULL DEFAULT ' ',
  `FSUSPENSIONSTATE` varchar(50) NOT NULL DEFAULT ' ',
  `FFORMKEY` varchar(50) NOT NULL DEFAULT ' ',
  `FCLAIMTIME` datetime DEFAULT NULL,
  `FISDISPLAY` char(1) NOT NULL DEFAULT '1',
  `FSTARTERID` bigint NOT NULL DEFAULT '0',
  `FSENDERID` longtext,
  `FASSIGNEEID` bigint NOT NULL DEFAULT '0',
  `FOWNERID` bigint NOT NULL DEFAULT '0',
  `FEXECUTIONTYPE` varchar(30) NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FBUSINESSKEY` varchar(36) NOT NULL DEFAULT ' ',
  `FBILLNO` varchar(255) NOT NULL DEFAULT ' ',
  `FYZJGROUPID` varchar(36) NOT NULL DEFAULT ' ',
  `FPROCESSINGPAGE` varchar(50) NOT NULL DEFAULT ' ',
  `FHANDLESTATE` varchar(30) NOT NULL DEFAULT ' ',
  `FMOBILEFORMKEY` varchar(50) NOT NULL DEFAULT ' ',
  `FISACTIVE` char(1) NOT NULL DEFAULT '1',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FPROCESSINGMOBILEPAGE` varchar(50) NOT NULL DEFAULT ' ',
  `FENDTYPE` varchar(30) NOT NULL DEFAULT '1',
  `FSOURCE` varchar(100) NOT NULL DEFAULT ' ',
  `FVALIDATEOPERATION` varchar(500) NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) NOT NULL DEFAULT ' ',
  `FSUBACTIVITYNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(115) NOT NULL DEFAULT ' ',
  `FSUBJECT` varchar(3000) NOT NULL DEFAULT ' ',
  `FSENDERNAME` varchar(1000) NOT NULL DEFAULT ' ',
  `FSTARTNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FPARTICIPANTNAME` varchar(500) NOT NULL DEFAULT ' ',
  `FGROUPNUMBER` bigint NOT NULL DEFAULT '0',
  `FBATCHOP` varchar(30) NOT NULL DEFAULT ' ',
  `FBILLTYPE` varchar(50) NOT NULL DEFAULT ' ',
  `FBIZTRACENO` varchar(255) NOT NULL DEFAULT ' ',
  `FSENDERNAMEFORMAT` varchar(500) NOT NULL DEFAULT ' ',
  `FSTARTNAMEFORMAT` varchar(500) NOT NULL DEFAULT ' ',
  `FORGUNITID` bigint NOT NULL DEFAULT '0',
  `FORGVIEWID` varchar(50) NOT NULL DEFAULT ' ',
  `FPROCESSTYPE` varchar(100) NOT NULL DEFAULT ' ',
  `FCONTROL` varchar(300) NOT NULL DEFAULT ' ',
  `FEXTENDDATE` datetime DEFAULT NULL,
  `FEXTENDNUMBER` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEXTENDFORMAT` longtext,
  `FEXTENDSTR1` varchar(255) NOT NULL DEFAULT ' ',
  `FEXTENDSTR2` varchar(255) NOT NULL DEFAULT ' ',
  `FEXTENDMULSTR1` varchar(255) NOT NULL DEFAULT ' ',
  `FEXTENDMULSTR2` varchar(255) NOT NULL DEFAULT ' ',
  `FCAPTIONPC` varchar(300) NOT NULL DEFAULT ' ',
  `FCAPTIONMOB` varchar(300) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_TASK_CREATE` (`FCREATEDATE`),
  KEY `IDX_WF_TASK_EXEC` (`FEXECUTIONID`),
  KEY `IDX_WF_TASK_PROCDEF` (`FPROCDEFID`),
  KEY `IDX_WF_TASK_PROCINST` (`FPROCINSTID`),
  KEY `IDX_WF_TASK_PTASKID` (`FPARENTTASKID`),
  KEY `IDX_WF_TASK_BUSINESSKEY` (`FBUSINESSKEY`),
  KEY `IDX_WF_TASK_ENTITYNUMBER` (`FENTITYNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_task_a definition

CREATE TABLE `t_wf_task_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FEXTENDDATE2` datetime DEFAULT NULL,
  `FEXTENDNUMBER2` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_TASK_A_EXTDATE` (`FEXTENDDATE2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_task_l definition

CREATE TABLE `t_wf_task_l` (
  `FPKID` varchar(36) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) NOT NULL DEFAULT ' ',
  `FNAME` varchar(500) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(115) NOT NULL DEFAULT ' ',
  `FSUBJECT` varchar(3000) NOT NULL DEFAULT ' ',
  `FSENDERNAME` varchar(1000) NOT NULL DEFAULT ' ',
  `FSTARTNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FSUBACTIVITYNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FPARTICIPANTNAME` varchar(3000) NOT NULL DEFAULT ' ',
  `FASSIGNEE` varchar(255) NOT NULL DEFAULT ' ',
  `FSENDERNAMEFORMAT` varchar(500) NOT NULL DEFAULT ' ',
  `FSTARTNAMEFORMAT` varchar(500) NOT NULL DEFAULT ' ',
  `FEXTENDMULSTR1` varchar(255) NOT NULL DEFAULT ' ',
  `FEXTENDMULSTR2` varchar(255) NOT NULL DEFAULT ' ',
  `FCAPTIONPC` varchar(300) NOT NULL DEFAULT ' ',
  `FCAPTIONMOB` varchar(300) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_TASK_LOCALEID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_task_r2 definition

CREATE TABLE `t_wf_task_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_task_r3 definition

CREATE TABLE `t_wf_task_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_taskattributerule definition

CREATE TABLE `t_wf_taskattributerule` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(230) NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(100) NOT NULL DEFAULT ' ',
  `FCONDITIONALRULEID` bigint NOT NULL DEFAULT '0',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FACTIVITSTATE` varchar(30) NOT NULL DEFAULT ' ',
  `FEXPRESSION` varchar(2000) NOT NULL DEFAULT ' ',
  `FTYPE` varchar(100) DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_TASKATTRRULE_NUMBER` (`FNUMBER`),
  KEY `IDX_WF_TASKATTRRULE_USERID` (`FUSERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_taskattributerule_l definition

CREATE TABLE `t_wf_taskattributerule_l` (
  `FPKID` varchar(20) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FNAME` varchar(230) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_TASKATTRIBUTERULE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_taskattributerule_r2 definition

CREATE TABLE `t_wf_taskattributerule_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_taskattributerule_r3 definition

CREATE TABLE `t_wf_taskattributerule_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_taskhandlelog definition

CREATE TABLE `t_wf_taskhandlelog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FASSIGNEEID` bigint NOT NULL DEFAULT '0',
  `FOWNERID` bigint NOT NULL DEFAULT '0',
  `FOPINION` varchar(3000) NOT NULL DEFAULT ' ',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(30) NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) NOT NULL DEFAULT '0',
  `FSUBSCRIBE` char(1) NOT NULL DEFAULT '1',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FASSIGNEE` varchar(255) NOT NULL DEFAULT ' ',
  `FISADMINFORWARD` char(1) NOT NULL DEFAULT '0',
  `FBUSINESSKEY` varchar(36) NOT NULL DEFAULT ' ',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(255) NOT NULL DEFAULT ' ',
  `FSCENES` varchar(30) NOT NULL DEFAULT 'task',
  `FACTIVITYID` varchar(255) NOT NULL DEFAULT ' ',
  `FACTIVITYNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FBIZIDENTIFYKEY` varchar(255) NOT NULL DEFAULT ' ',
  `FNOTE` varchar(500) NOT NULL DEFAULT ' ',
  `FTERMINALWAY` varchar(500) NOT NULL DEFAULT ' ',
  `FOWNER` varchar(50) NOT NULL DEFAULT ' ',
  `FOWNERFORMAT` varchar(500) NOT NULL DEFAULT ' ',
  `FASSIGNEEFORMAT` varchar(500) NOT NULL DEFAULT ' ',
  `FCURRENTSUBJECT` varchar(3000) NOT NULL DEFAULT ' ',
  `FORIGINALPARTICIPANT` varchar(1000) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_TASKHANDLELOG_TYPE` (`FTYPE`),
  KEY `IDX_WF_TASKHANDLELOG_OWNERID` (`FOWNERID`),
  KEY `IDX_WF_TASKHANDLELOG_TASK` (`FTASKID`,`FTYPE`),
  KEY `IDX_WF_TASKHANDLELOG_PROCINST` (`FPROCINSTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_taskhandlelog_l definition

CREATE TABLE `t_wf_taskhandlelog_l` (
  `FPKID` varchar(20) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FASSIGNEE` varchar(255) NOT NULL DEFAULT ' ',
  `FOPINION` varchar(2000) NOT NULL DEFAULT ' ',
  `FACTIVITYNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FNOTE` varchar(500) NOT NULL DEFAULT ' ',
  `FOWNER` varchar(200) NOT NULL DEFAULT ' ',
  `FOWNERFORMAT` varchar(500) NOT NULL DEFAULT ' ',
  `FASSIGNEEFORMAT` varchar(500) NOT NULL DEFAULT ' ',
  `FCURRENTSUBJECT` varchar(3000) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_TASKHANDLELOG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_taskhandlelog_r2 definition

CREATE TABLE `t_wf_taskhandlelog_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_taskhandlelog_r3 definition

CREATE TABLE `t_wf_taskhandlelog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_taskmark definition

CREATE TABLE `t_wf_taskmark` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) NOT NULL DEFAULT ' ',
  `FCATEGORYNUMBER` varchar(100) NOT NULL DEFAULT ' ',
  `FCOLOR` varchar(100) NOT NULL DEFAULT ' ',
  `FICON` varchar(100) NOT NULL DEFAULT ' ',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FCATEGORYNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FVALUE` varchar(300) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_TASKMARK_CATNUMBER` (`FCATEGORYNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_taskmark_l definition

CREATE TABLE `t_wf_taskmark_l` (
  `FPKID` varchar(36) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) NOT NULL DEFAULT ' ',
  `FCATEGORYNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_TASKMARK_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_taskmark_r2 definition

CREATE TABLE `t_wf_taskmark_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_taskmark_r3 definition

CREATE TABLE `t_wf_taskmark_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_taskoperationmeta definition

CREATE TABLE `t_wf_taskoperationmeta` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FOPERATIONKEY` varchar(100) NOT NULL DEFAULT ' ',
  `FOPERATEPARAMS` longtext,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WF_TASKOPERMETA_ID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_testingdecision definition

CREATE TABLE `t_wf_testingdecision` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPLANID` bigint NOT NULL DEFAULT '0',
  `FNODEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDECISIONS` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_TESTINGDECISION_PLANID` (`FPLANID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_testingdecision_r3 definition

CREATE TABLE `t_wf_testingdecision_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_testingpath definition

CREATE TABLE `t_wf_testingpath` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPLANID` bigint NOT NULL DEFAULT '0',
  `FNODEID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODENAME` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYTYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXECUTIONTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDECISION` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVARIABLES` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FMODIFYEXP` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSIGNEEID` bigint NOT NULL DEFAULT '0',
  `FSTEP` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTARGETID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCYCLE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FACTINSTID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_TESTINGPATH_PLANID` (`FPLANID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_testingpath_l definition

CREATE TABLE `t_wf_testingpath_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODENAME` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_TESTINGPATH_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_testingpath_r3 definition

CREATE TABLE `t_wf_testingpath_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_testingplan definition

CREATE TABLE `t_wf_testingplan` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCASEID` bigint NOT NULL DEFAULT '0',
  `FSTARTERID` bigint NOT NULL DEFAULT '0',
  `FSTARTERNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPATH` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FBUSINESSKEY` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSCHEMEID` bigint NOT NULL DEFAULT '0',
  `FSCHEMENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNEWSCHEMEID` bigint NOT NULL DEFAULT '0',
  `FBILLJSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FRESULTINFO` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FNEWBUSINESSKEY` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATE` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPECTEDGRAPH` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUTOTEST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPASSED` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FERRORINFO` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_TESTINGPLAN_CASEID` (`FCASEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_testingplan_l definition

CREATE TABLE `t_wf_testingplan_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTERNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCHEMENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_TESTINGPLAN_L_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_testingplan_r3 definition

CREATE TABLE `t_wf_testingplan_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_timerjob definition

CREATE TABLE `t_wf_timerjob` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(30) NOT NULL DEFAULT ' ',
  `FLOCKEXPTIME` datetime DEFAULT NULL,
  `FLOCKOWNERID` varchar(100) NOT NULL DEFAULT ' ',
  `FEXCLUSIVE` char(1) NOT NULL DEFAULT '0',
  `FEXECUTIONID` bigint NOT NULL DEFAULT '0',
  `FPROCESSINSTANCEID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FRETRIES` int NOT NULL DEFAULT '3',
  `FEXCEPTIONMSG` longtext,
  `FDUEDATE` datetime DEFAULT NULL,
  `FREPEAT` varchar(30) NOT NULL DEFAULT ' ',
  `FHANDLERTYPE` varchar(30) NOT NULL DEFAULT ' ',
  `FHANDLERCFG` longtext,
  `FBUSINESSKEY` varchar(36) NOT NULL DEFAULT ' ',
  `FOPERATION` varchar(300) NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FELEMENTID` varchar(80) NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FSRCJOBID` bigint NOT NULL DEFAULT '0',
  `FROOTTRACENO` varchar(100) NOT NULL DEFAULT ' ',
  `FBIZTRACENO` varchar(255) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_TIMER_JOB_EXECUTION_ID` (`FEXECUTIONID`),
  KEY `IDX_WF_TIMER_JOB_PROC_DEF_ID` (`FPROCDEFID`),
  KEY `IDX_WF_TIMER_JOB_PROCESS_ID` (`FPROCESSINSTANCEID`),
  KEY `IDX_WF_TIMER_JOB_BUSKEY` (`FBUSINESSKEY`),
  KEY `IDX_WF_TIMER_JOB_DUEDATE` (`FDUEDATE`,`FHANDLERTYPE`,`FLOCKOWNERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_timerjob_r2 definition

CREATE TABLE `t_wf_timerjob_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_timerjob_r3 definition

CREATE TABLE `t_wf_timerjob_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_tohandlegroup definition

CREATE TABLE `t_wf_tohandlegroup` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRULE` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_TOHANDLEGROUP_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_tohandlegroup_l definition

CREATE TABLE `t_wf_tohandlegroup_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_TOHANDLEGROUP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_tohandlegroup_r3 definition

CREATE TABLE `t_wf_tohandlegroup_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_trdhicomment definition

CREATE TABLE `t_wf_trdhicomment` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTIME` datetime DEFAULT NULL,
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FACTIVITYID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDECISIONTYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBACKTOBACK` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBUSINESSKEY` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOWNERID` bigint NOT NULL DEFAULT '0',
  `FBIZIDENTIFYKEY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPUBLIC` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSTEP` int NOT NULL DEFAULT '0',
  `FMESSAGE` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTNAME` varchar(115) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSIGNEE` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYNAME` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBACTIVITYNAME` varchar(230) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERNAMEFORMATTER` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOORDINVITEOPINION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBPROCESSINSTANCEID` bigint NOT NULL DEFAULT '0',
  `FTERMINALWAY` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRICHTEXTMESSAGE` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FTRUSTNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCESYSTEM` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEAPP` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_TRDHICOMMENT_TASK` (`FTASKID`),
  KEY `IDX_WF_TRDHICOMMENT_USERID` (`FUSERID`),
  KEY `IDX_WF_TRDHICOMMENT_ENUM` (`FENTITYNUMBER`),
  KEY `IDX_WF_TRDHICOMMENT_OWNER` (`FOWNERID`),
  KEY `IDX_WF_TRDHICOMMENT_PROC` (`FPROCINSTID`,`FACTIVITYID`),
  KEY `IDX_WF_TRDHICOMMENT_BUSKEY` (`FBUSINESSKEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_trdhicomment_l definition

CREATE TABLE `t_wf_trdhicomment_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMESSAGE` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTNAME` varchar(115) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSIGNEE` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYNAME` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBACTIVITYNAME` varchar(230) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERNAMEFORMATTER` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOORDINVITEOPINION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRUSTNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_TRDHICOMMENT` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_trdhicomment_r3 definition

CREATE TABLE `t_wf_trdhicomment_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_trdprocrelation definition

CREATE TABLE `t_wf_trdprocrelation` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FRELATIONVALUE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSINESSKEY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENTID` bigint NOT NULL DEFAULT '0',
  `FACTINSTID` bigint NOT NULL DEFAULT '0',
  `FACTIVITYID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_TRDPROCREL_PROCACTINST` (`FPROCINSTID`,`FACTINSTID`),
  KEY `IDX_WF_TRDPROCREL_RELVALTYPE` (`FRELATIONVALUE`,`FTYPE`),
  KEY `IDX_WF_TRDPROCREL_BUSKEYENTY` (`FBUSINESSKEY`,`FENTITYNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_trdprocrelation_r3 definition

CREATE TABLE `t_wf_trdprocrelation_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_variable definition

CREATE TABLE `t_wf_variable` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(30) NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FEXECUTIONID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FDOUBLE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FLONG` bigint NOT NULL DEFAULT '0',
  `FTEXT` longtext,
  `FTEXT2` longtext,
  `FACTINSTID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FDESCRIPTION` varchar(255) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_VARIABLE_PROCINST` (`FPROCINSTID`),
  KEY `IDX_WF_VARIABLE_TASK_ID` (`FTASKID`),
  KEY `IDX_WF_VARIABLE_EXEC_NAME` (`FEXECUTIONID`,`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_variable_l definition

CREATE TABLE `t_wf_variable_l` (
  `FPKID` varchar(36) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(8) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_VARIABLE_LOCALEID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_variable_r2 definition

CREATE TABLE `t_wf_variable_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_variable_r3 definition

CREATE TABLE `t_wf_variable_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_workstransferlog definition

CREATE TABLE `t_wf_workstransferlog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FROLEID` bigint NOT NULL DEFAULT '0',
  `FORIGAUDITORID` bigint NOT NULL DEFAULT '0',
  `FNEWAUDITORID` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYID` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORIGAUDITORNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNEWAUDITORNAME` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYNAME` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBATCHNOMSG` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCVERSION` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNO` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_WORKSTRANSFERLOG` (`FTASKID`,`FORIGAUDITORID`),
  KEY `IDX_WF_WORKTRSLOG_ORIADTPROC` (`FPROCINSTID`,`FORIGAUDITORID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_workstransferlog_l definition

CREATE TABLE `t_wf_workstransferlog_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORIGAUDITORNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNEWAUDITORNAME` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYNAME` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBATCHNOMSG` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_WORKSTRANSFERLOG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_workstransferlog_r3 definition

CREATE TABLE `t_wf_workstransferlog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_yzjchat definition

CREATE TABLE `t_wf_yzjchat` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` varchar(80) NOT NULL DEFAULT ' ',
  `FFEATURECODE` varchar(80) NOT NULL DEFAULT ' ',
  `FSCENE` varchar(80) NOT NULL DEFAULT ' ',
  `FOPENIDS` varchar(2000) NOT NULL DEFAULT ' ',
  `FRECORD` varchar(80) NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FIDENTITYKEY` varchar(2000) NOT NULL DEFAULT ' ',
  `FCURRENTEROPENID` varchar(80) NOT NULL DEFAULT ' ',
  `FBILLID` varchar(36) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_YZJCHAT_GROUP` (`FGROUPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_yzjchat_r2 definition

CREATE TABLE `t_wf_yzjchat_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_yzjchat_r3 definition

CREATE TABLE `t_wf_yzjchat_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.t_wf_yzjtodo definition

CREATE TABLE `t_wf_yzjtodo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FOPENID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEID` bigint NOT NULL DEFAULT '0',
  `FAPPID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPSECRET` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUTHURL` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEURL` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHECKURL` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEALURL` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FMSGSTATE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGRESULT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FRETRIES` int NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FECOSECRET` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_YZJTODO_TASKID` (`FTASKID`),
  KEY `IDX_WF_YZJTODO_PROCINSTID` (`FPROCINSTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wf_yzjtodo_l definition

CREATE TABLE `t_wf_yzjtodo_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WF_YZJTODO_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.t_wftask_eiduser definition

CREATE TABLE `t_wftask_eiduser` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCOMNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WFTASK_EIDUSER` (`FUSERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_wfs.temp_a8jk5mufbsikg_0 definition

CREATE TABLE `temp_a8jk5mufbsikg_0` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A8JK5MUFBSIKG_0` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_a8jk5muk6ldz4_0 definition

CREATE TABLE `temp_a8jk5muk6ldz4_0` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A8JK5MUK6LDZ4_0` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_a8jk5mun8gxz4_0 definition

CREATE TABLE `temp_a8jk5mun8gxz4_0` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A8JK5MUN8GXZ4_0` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_a8jk5muqacge8_0 definition

CREATE TABLE `temp_a8jk5muqacge8_0` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A8JK5MUQACGE8_0` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_a8jltpqhl5xxc_1 definition

CREATE TABLE `temp_a8jltpqhl5xxc_1` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A8JLTPQHL5XXC_1` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_a8jltpqlc0fsw_1 definition

CREATE TABLE `temp_a8jltpqlc0fsw_1` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A8JLTPQLC0FSW_1` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_a8jltpqnywlq8_1 definition

CREATE TABLE `temp_a8jltpqnywlq8_1` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A8JLTPQNYWLQ8_1` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_a8jltpqr0s45c_1 definition

CREATE TABLE `temp_a8jltpqr0s45c_1` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A8JLTPQR0S45C_1` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_a8jlzdvvi8740_2 definition

CREATE TABLE `temp_a8jlzdvvi8740_2` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A8JLZDVVI8740_2` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_a8jlzdvzj2adc_2 definition

CREATE TABLE `temp_a8jlzdvzj2adc_2` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A8JLZDVZJ2ADC_2` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_a8jlzdw1vyuww_2 definition

CREATE TABLE `temp_a8jlzdw1vyuww_2` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A8JLZDW1VYUWW_2` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_a8jlzdw48vdvk_2 definition

CREATE TABLE `temp_a8jlzdw48vdvk_2` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A8JLZDW48VDVK_2` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_a8jroa1sks074_g definition

CREATE TABLE `temp_a8jroa1sks074_g` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A8JROA1SKS074_G` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_a8jroa1wvlou8_g definition

CREATE TABLE `temp_a8jroa1wvlou8_g` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A8JROA1WVLOU8_G` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_a8jroa1zihurk_g definition

CREATE TABLE `temp_a8jroa1zihurk_g` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A8JROA1ZIHURK_G` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_a8jroa220e6f4_g definition

CREATE TABLE `temp_a8jroa220e6f4_g` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A8JROA220E6F4_G` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_a9j119oa40u0w_6 definition

CREATE TABLE `temp_a9j119oa40u0w_6` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A9J119OA40U0W_6` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_a9j119t1q1og0_6 definition

CREATE TABLE `temp_a9j119t1q1og0_6` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A9J119T1Q1OG0_6` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_a9j119ujtuiv4_6 definition

CREATE TABLE `temp_a9j119ujtuiv4_6` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A9J119UJTUIV4_6` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_a9j119w2wlwjk_6 definition

CREATE TABLE `temp_a9j119w2wlwjk_6` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A9J119W2WLWJK_6` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_abmmn8hv0u0w0_e definition

CREATE TABLE `temp_abmmn8hv0u0w0_e` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_abmmn8imcq134_e definition

CREATE TABLE `temp_abmmn8imcq134_e` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_abmmn8je3lfcw_e definition

CREATE TABLE `temp_abmmn8je3lfcw_e` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_abmmn8k0kojcw_e definition

CREATE TABLE `temp_abmmn8k0kojcw_e` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_abtbs9nv5rtog_8 definition

CREATE TABLE `temp_abtbs9nv5rtog_8` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_abtbs9oqihxxc_8 definition

CREATE TABLE `temp_abtbs9oqihxxc_8` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_abtbs9phkdvcw_8 definition

CREATE TABLE `temp_abtbs9phkdvcw_8` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_abtbs9q5zemf4_8 definition

CREATE TABLE `temp_abtbs9q5zemf4_8` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_b8jk5muu16zuo_0 definition

CREATE TABLE `temp_b8jk5muu16zuo_0` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B8JK5MUU16ZUO_0` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_b8jk5muwj3bi8_0 definition

CREATE TABLE `temp_b8jk5muwj3bi8_0` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B8JK5MUWJ3BI8_0` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_b8jk5muz5zhfk_0 definition

CREATE TABLE `temp_b8jk5muz5zhfk_0` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B8JK5MUZ5ZHFK_0` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_b8jk5mv1svls0_0 definition

CREATE TABLE `temp_b8jk5mv1svls0_0` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B8JK5MV1SVLS0_0` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_b8jltpqucn9j4_1 definition

CREATE TABLE `temp_b8jltpqucn9j4_1` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B8JLTPQUCN9J4_1` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_b8jltpqx9iz9c_1 definition

CREATE TABLE `temp_b8jltpqx9iz9c_1` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B8JLTPQX9IZ9C_1` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_b8jltpr01exvk_1 definition

CREATE TABLE `temp_b8jltpr01exvk_1` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B8JLTPR01EXVK_1` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_b8jltpr2yanls_1 definition

CREATE TABLE `temp_b8jltpr2yanls_1` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B8JLTPR2YANLS_1` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_b8jlzdw75r56o_2 definition

CREATE TABLE `temp_b8jlzdw75r56o_2` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B8JLZDW75R56O_2` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_b8jlzdwa7mnls_2 definition

CREATE TABLE `temp_b8jlzdwa7mnls_2` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B8JLZDWA7MNLS_2` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_b8jlzdwczim80_2 definition

CREATE TABLE `temp_b8jlzdwczim80_2` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B8JLZDWCZIM80_2` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_b8jlzdwfrej9c_2 definition

CREATE TABLE `temp_b8jlzdwfrej9c_2` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B8JLZDWFREJ9C_2` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_b8jroa25c9bsw_g definition

CREATE TABLE `temp_b8jroa25c9bsw_g` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B8JROA25C9BSW_G` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_b8jroa28o4fls_g definition

CREATE TABLE `temp_b8jroa28o4fls_g` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B8JROA28O4FLS_G` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_b8jroa2bg0e80_g definition

CREATE TABLE `temp_b8jroa2bg0e80_g` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B8JROA2BG0E80_G` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_b8jroa2e7wb9c_g definition

CREATE TABLE `temp_b8jroa2e7wb9c_g` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B8JROA2E7WB9C_G` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_b9j11a07wjvuo_6 definition

CREATE TABLE `temp_b9j11a07wjvuo_6` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B9J11A07WJVUO_6` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_b9j11a231tlog_6 definition

CREATE TABLE `temp_b9j11a231tlog_6` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B9J11A231TLOG_6` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_b9j11a4b8ka2o_6 definition

CREATE TABLE `temp_b9j11a4b8ka2o_6` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B9J11A4B8KA2O_6` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_b9j11a5omjzeo_6 definition

CREATE TABLE `temp_b9j11a5omjzeo_6` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B9J11A5OMJZEO_6` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_bbmmn8kxvbta8_e definition

CREATE TABLE `temp_bbmmn8kxvbta8_e` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_bbmmn8lkcexa8_e definition

CREATE TABLE `temp_bbmmn8lkcexa8_e` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_bbmmn8mh82scg_e definition

CREATE TABLE `temp_bbmmn8mh82scg_e` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_bbmmn8n8yy7eo_e definition

CREATE TABLE `temp_bbmmn8n8yy7eo_e` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_bbtbs9qwwar5s_8 definition

CREATE TABLE `temp_bbtbs9qwwar5s_8` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_bbtbs9roi6u4g_8 definition

CREATE TABLE `temp_bbtbs9roi6u4g_8` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_bbtbs9sgj1ce8_8 definition

CREATE TABLE `temp_bbtbs9sgj1ce8_8` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_bbtbs9tlqdj40_8 definition

CREATE TABLE `temp_bbtbs9tlqdj40_8` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_c8jk5mv5opxxc_0 definition

CREATE TABLE `temp_c8jk5mv5opxxc_0` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C8JK5MV5OPXXC_0` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_c8jk5mv8qlgcg_0 definition

CREATE TABLE `temp_c8jk5mv8qlgcg_0` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C8JK5MV8QLGCG_0` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_c8jk5mvbnh7nk_0 definition

CREATE TABLE `temp_c8jk5mvbnh7nk_0` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C8JK5MVBNH7NK_0` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_c8jk5mvf4c45c_0 definition

CREATE TABLE `temp_c8jk5mvf4c45c_0` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C8JK5MVF4C45C_0` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_c8jltpr6k5edc_1 definition

CREATE TABLE `temp_c8jltpr6k5edc_1` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C8JLTPR6K5EDC_1` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_c8jltpr9r0phc_1 definition

CREATE TABLE `temp_c8jltpr9r0phc_1` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C8JLTPR9R0PHC_1` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_c8jltpreltmgw_1 definition

CREATE TABLE `temp_c8jltpreltmgw_1` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C8JLTPRELTMGW_1` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_c8jltprjbmp6o_1 definition

CREATE TABLE `temp_c8jltprjbmp6o_1` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C8JLTPRJBMP6O_1` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_c8jlzdwj39on4_2 definition

CREATE TABLE `temp_c8jlzdwj39on4_2` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C8JLZDWJ39ON4_2` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_c8jlzdwmf4sg0_2 definition

CREATE TABLE `temp_c8jlzdwmf4sg0_2` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C8JLZDWMF4SG0_2` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_c8jlzdwpc0jr4_2 definition

CREATE TABLE `temp_c8jlzdwpc0jr4_2` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C8JLZDWPC0JR4_2` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_c8jlzdwsdw268_2 definition

CREATE TABLE `temp_c8jlzdwsdw268_2` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C8JLZDWSDW268_2` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_c8jroa2h4s2kg_g definition

CREATE TABLE `temp_c8jroa2h4s2kg_g` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C8JROA2H4S2KG_G` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_c8jroa2kbndog_g definition

CREATE TABLE `temp_c8jroa2kbndog_g` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C8JROA2KBNDOG_G` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_c8jroa2mtjqww_g definition

CREATE TABLE `temp_c8jroa2mtjqww_g` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C8JROA2MTJQWW_G` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_c8jroa2pgfv9c_g definition

CREATE TABLE `temp_c8jroa2pgfv9c_g` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C8JROA2PGFV9C_G` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_c9j11aau90d8g_6 definition

CREATE TABLE `temp_c9j11aau90d8g_6` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C9J11AAU90D8G_6` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_c9j11aci1kuf4_6 definition

CREATE TABLE `temp_c9j11aci1kuf4_6` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C9J11ACI1KUF4_6` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_c9j11ae1yb1ts_6 definition

CREATE TABLE `temp_c9j11ae1yb1ts_6` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C9J11AE1YB1TS_6` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_c9j11afmozzsw_6 definition

CREATE TABLE `temp_c9j11afmozzsw_6` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C9J11AFMOZZSW_6` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_cbmmn8o0kts74_e definition

CREATE TABLE `temp_cbmmn8o0kts74_e` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_cbmmn8osbp79c_e definition

CREATE TABLE `temp_cbmmn8osbp79c_e` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_cbmmn8pk7kdfk_e definition

CREATE TABLE `temp_cbmmn8pk7kdfk_e` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_cbmmn8qbtfzsw_e definition

CREATE TABLE `temp_cbmmn8qbtfzsw_e` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_cbtbs9udr81ds_8 definition

CREATE TABLE `temp_cbtbs9udr81ds_8` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_cbtbs9v9dy8e8_8 definition

CREATE TABLE `temp_cbtbs9v9dy8e8_8` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_cbtbs9vql8kqo_8 definition

CREATE TABLE `temp_cbtbs9vql8kqo_8` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wfs.temp_cbtbs9wopv474_8 definition

CREATE TABLE `temp_cbtbs9wopv474_8` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
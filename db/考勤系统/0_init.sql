CREATE DATABASE GM_MT_70; USE GM_MT_70;
-- DROP SCHEMA dbo; 
CREATE SCHEMA dbo;
-- GM_MT_70.dbo.[111111] definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.[111111]; 
CREATE TABLE GM_MT_70.dbo.[111111] ( DeptCode nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, DeptName nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, DeptParentCode nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.HolidaysChangeDate definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.HolidaysChangeDate; 
CREATE TABLE GM_MT_70.dbo.HolidaysChangeDate ( EmployeeID uniqueidentifier NULL, TypeID uniqueidentifier NULL, ChangeDate datetime DEFAULT '2019-01-01' NULL );
-- GM_MT_70.dbo.YO_KQ_IBeaconEmpl definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YO_KQ_IBeaconEmpl; 
CREATE TABLE GM_MT_70.dbo.YO_KQ_IBeaconEmpl ( IBeaconID uniqueidentifier NULL, EmployeeID uniqueidentifier NULL );
-- GM_MT_70.dbo.YQ_CM_Company definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_CM_Company; 
CREATE TABLE GM_MT_70.dbo.YQ_CM_Company ( ID uniqueidentifier NOT NULL, CompanyName varchar(50) COLLATE Chinese_PRC_CI_AS NOT NULL, CompanyDescribe varchar(200) COLLATE Chinese_PRC_CI_AS NULL, DeptID int NOT NULL, AdminID uniqueidentifier NULL, DisplayOrder int NOT NULL, CompanyDepth int NULL );
-- GM_MT_70.dbo.YQ_CM_Department definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_CM_Department; 
CREATE TABLE GM_MT_70.dbo.YQ_CM_Department ( ID int IDENTITY(1, 1) NOT NULL, ParentID int NULL, InternationalID varchar(50) COLLATE Chinese_PRC_CI_AS NULL, DeptCode varchar(50) COLLATE Chinese_PRC_CI_AS NULL, DeptParentCode varchar(50) COLLATE Chinese_PRC_CI_AS NULL, DeptDepth int NULL, DeptPath varchar(200) COLLATE Chinese_PRC_CI_AS NULL, DeptName varchar(100) COLLATE Chinese_PRC_CI_AS NULL, DeptDescribe varchar(200) COLLATE Chinese_PRC_CI_AS NULL, Reamrk varchar(200) COLLATE Chinese_PRC_CI_AS NULL, DisplayOrder int NULL, LeaderShip uniqueidentifier NULL, CONSTRAINT PK_YQ_CM_Department PRIMARY KEY (ID) );
-- GM_MT_70.dbo.YQ_CM_Department1 definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_CM_Department1; 
CREATE TABLE GM_MT_70.dbo.YQ_CM_Department1 ( ID int IDENTITY(1, 1) NOT NULL, ParentID int NULL, InternationalID varchar(50) COLLATE Chinese_PRC_CI_AS NULL, DeptCode varchar(50) COLLATE Chinese_PRC_CI_AS NULL, DeptParentCode varchar(50) COLLATE Chinese_PRC_CI_AS NULL, DeptDepth int NULL, DeptPath varchar(200) COLLATE Chinese_PRC_CI_AS NULL, DeptName varchar(100) COLLATE Chinese_PRC_CI_AS NULL, DeptDescribe varchar(200) COLLATE Chinese_PRC_CI_AS NULL, Reamrk varchar(200) COLLATE Chinese_PRC_CI_AS NULL, DisplayOrder int NULL, LeaderShip uniqueidentifier NULL );
-- GM_MT_70.dbo.YQ_CM_Department20231208 definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_CM_Department20231208; 
CREATE TABLE GM_MT_70.dbo.YQ_CM_Department20231208 ( ID int IDENTITY(1, 1) NOT NULL, ParentID int NULL, InternationalID varchar(50) COLLATE Chinese_PRC_CI_AS NULL, DeptCode varchar(50) COLLATE Chinese_PRC_CI_AS NULL, DeptParentCode varchar(50) COLLATE Chinese_PRC_CI_AS NULL, DeptDepth int NULL, DeptPath varchar(200) COLLATE Chinese_PRC_CI_AS NULL, DeptName varchar(100) COLLATE Chinese_PRC_CI_AS NULL, DeptDescribe varchar(200) COLLATE Chinese_PRC_CI_AS NULL, Reamrk varchar(200) COLLATE Chinese_PRC_CI_AS NULL, DisplayOrder int NULL, LeaderShip uniqueidentifier NULL );
-- GM_MT_70.dbo.YQ_CM_International definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_CM_International; 
CREATE TABLE GM_MT_70.dbo.YQ_CM_International ( InternationalID uniqueidentifier NOT NULL, Languages varchar(50) COLLATE Chinese_PRC_CI_AS NOT NULL, FiledName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, FiledValue varchar(200) COLLATE Chinese_PRC_CI_AS NOT NULL, TextID uniqueidentifier NULL );
-- GM_MT_70.dbo.YQ_CM_ItemType definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_CM_ItemType; 
CREATE TABLE GM_MT_70.dbo.YQ_CM_ItemType ( ItemID uniqueidentifier NOT NULL, ItemName varchar(100) COLLATE Chinese_PRC_CI_AS NOT NULL, ItemType varchar(100) COLLATE Chinese_PRC_CI_AS NOT NULL, ItemValue varchar(100) COLLATE Chinese_PRC_CI_AS NOT NULL, IsDelete int NOT NULL, DisplayOrder int NOT NULL, IsSystem int NOT NULL, CompanyID uniqueidentifier NOT NULL, IsVisible int NOT NULL, IsInheritance int NOT NULL );
-- GM_MT_70.dbo.YQ_CM_LOG definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_CM_LOG; 
CREATE TABLE GM_MT_70.dbo.YQ_CM_LOG ( Module uniqueidentifier NULL, PageID varchar(50) COLLATE Chinese_PRC_CI_AS NULL, SubmitTime datetime NULL, IPAddress varchar(20) COLLATE Chinese_PRC_CI_AS NULL, Contents varchar(500) COLLATE Chinese_PRC_CI_AS NULL, HistoryData text COLLATE Chinese_PRC_CI_AS NULL, OperationLevel int NULL, Operator varchar(50) COLLATE Chinese_PRC_CI_AS NULL, OperatorType int NULL, LogType int NULL );
-- GM_MT_70.dbo.YQ_CM_MessageContentTemplate definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_CM_MessageContentTemplate; 
CREATE TABLE GM_MT_70.dbo.YQ_CM_MessageContentTemplate ( TemplateID uniqueidentifier NULL, TemplateContent text COLLATE Chinese_PRC_CI_AS NULL, TemplateTitle varchar(200) COLLATE Chinese_PRC_CI_AS NULL, Temp1 varchar(200) COLLATE Chinese_PRC_CI_AS NULL, Temp2 varchar(200) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_CM_MessageType definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_CM_MessageType; 
CREATE TABLE GM_MT_70.dbo.YQ_CM_MessageType ( MessageCode varchar(10) COLLATE Chinese_PRC_CI_AS NULL, QQ uniqueidentifier NULL, WX uniqueidentifier NULL, Email uniqueidentifier NULL, DX uniqueidentifier NULL, App uniqueidentifier NULL, [Sql] uniqueidentifier NULL, Temp uniqueidentifier NULL );
-- GM_MT_70.dbo.YQ_CM_TextData definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_CM_TextData; 
CREATE TABLE GM_MT_70.dbo.YQ_CM_TextData ( TextID uniqueidentifier NULL, TextValue text COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_KQ_AS_AnalyticDetail definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_AS_AnalyticDetail; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_AS_AnalyticDetail ( AnalyticID uniqueidentifier NULL, BeginTime datetime NULL, EndTime datetime NULL, TimeLong int NULL, TypeID uniqueidentifier NULL, TypeIDGroup uniqueidentifier NULL, OtherTypeID uniqueidentifier NULL, FormDataID uniqueidentifier NULL, Temp varchar(100) COLLATE Chinese_PRC_CI_AS NULL, Temp2 varchar(100) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_KQ_AS_AttendanceAnalytic definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_AS_AttendanceAnalytic; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_AS_AttendanceAnalytic ( ID uniqueidentifier NULL, EmployeeID uniqueidentifier NULL, AttendanceDate date NULL, ShiftID uniqueidentifier NULL, AttendanceDataStr varchar(200) COLLATE Chinese_PRC_CI_AS NULL, IsMissingCard int NULL, OnDutyTimeLong int NULL, IsNoAbsence int NULL, MissCardCount int NULL );
-- GM_MT_70.dbo.YQ_KQ_AS_ExceptionHandling definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_AS_ExceptionHandling; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_AS_ExceptionHandling ( AttendanceDate date NULL, FromTypeID uniqueidentifier NULL, ToTypeID uniqueidentifier NULL, BeginTime datetime NULL, EndTime datetime NULL, TimeLong int NULL, HandState int NULL, Operator uniqueidentifier NULL );
-- GM_MT_70.dbo.YQ_KQ_AS_MonthTotal definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_AS_MonthTotal; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_AS_MonthTotal ( EmployeeID uniqueidentifier NULL, YearMonth varchar(6) COLLATE Chinese_PRC_CI_AS NULL, TypeID uniqueidentifier NULL, TimeLong numeric(10, 2) NULL, StatisticUnit uniqueidentifier NULL );
-- GM_MT_70.dbo.YQ_KQ_AS_MonthTotalDay definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_AS_MonthTotalDay; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_AS_MonthTotalDay ( EmployeeID uniqueidentifier NULL, StatisticsDate date NULL, TypeID uniqueidentifier NULL, TimeLongXS numeric(10, 2) NULL, TimeLongT numeric(10, 2) NULL, TimeLongC numeric(10, 2) NULL, TimeLongBFB numeric(10, 2) NULL, TimeLongFZ numeric(10, 2) NULL );
-- GM_MT_70.dbo.YQ_KQ_AS_MonthTotalRegion definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_AS_MonthTotalRegion; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_AS_MonthTotalRegion ( [Month] varchar(2) COLLATE Chinese_PRC_CI_AS NULL, [Year] varchar(4) COLLATE Chinese_PRC_CI_AS NULL, StartDate date NULL, EndDate date NULL, Operator uniqueidentifier NULL );
-- GM_MT_70.dbo.YQ_KQ_AnnualLeaveManagement definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_AnnualLeaveManagement; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_AnnualLeaveManagement ( ID uniqueidentifier NULL, EmployeeID uniqueidentifier NULL, TypeID uniqueidentifier NULL, YearMonth varchar(6) COLLATE Chinese_PRC_CI_AS NULL, AnnualStandard numeric(10, 2) NULL, BOMBalance numeric(10, 2) NULL, CurMCost numeric(10, 2) NULL, CurMSurplus numeric(10, 2) NULL, BOMBalanceModifiers numeric(10, 2) NULL );
-- GM_MT_70.dbo.YQ_KQ_AnnualLeaveManagementDetail definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_AnnualLeaveManagementDetail; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_AnnualLeaveManagementDetail ( ID uniqueidentifier NULL, EmployeeID uniqueidentifier NULL, TypeID uniqueidentifier NULL, YearMonth varchar(6) COLLATE Chinese_PRC_CI_AS NULL, TypeDetail varchar(6) COLLATE Chinese_PRC_CI_AS NULL, AnnualStandard numeric(10, 2) NULL, BOMBalance numeric(10, 2) NULL, CurMCost numeric(10, 2) NULL, CurMSurplus numeric(10, 2) NULL, BOMBalanceModifiers numeric(10, 2) NULL );
-- GM_MT_70.dbo.YQ_KQ_ApplyFlowNode definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_ApplyFlowNode; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_ApplyFlowNode ( ID uniqueidentifier NULL, NodeName varchar(20) COLLATE Chinese_PRC_CI_AS NULL, RoleIDs varchar(1000) COLLATE Chinese_PRC_CI_AS NULL, ConditionValue varchar(100) COLLATE Chinese_PRC_CI_AS NULL, IsFullBatch int NULL, LevelIndex int NULL, ApplyFlowID uniqueidentifier NULL );
-- GM_MT_70.dbo.YQ_KQ_ApplyFlowType definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_ApplyFlowType; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_ApplyFlowType ( ID uniqueidentifier NULL, FlowType uniqueidentifier NULL, TypeID uniqueidentifier NULL, IsFree int NULL, ApproveCount int NULL, ConditionType uniqueidentifier NULL, Operator uniqueidentifier NULL, CompanyID uniqueidentifier NULL, IsInheritance int NULL, IsEmplOperator int NULL );
-- GM_MT_70.dbo.YQ_KQ_ApplyLeave definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_ApplyLeave; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_ApplyLeave ( EmployeeID uniqueidentifier NULL, TypeID uniqueidentifier NULL, BeginTime datetime NULL, EndTime datetime NULL, TimeLong numeric(10, 2) NULL, Status int NULL, FormDataID uniqueidentifier NULL );
-- GM_MT_70.dbo.YQ_KQ_ApplyOT definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_ApplyOT; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_ApplyOT ( EmployeeID uniqueidentifier NULL, TypeID uniqueidentifier NULL, BeginTime datetime NULL, EndTime datetime NULL, TimeLong numeric(10, 2) NULL, Status int NULL, FormDataID uniqueidentifier NULL, IsTurnToRest int NULL, TotalOTMode varchar(50) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_KQ_ApprovalDetail definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_ApprovalDetail; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_ApprovalDetail ( FormGroupID uniqueidentifier NULL, ApprovalLevel int NULL, Approver uniqueidentifier NULL, ApprovalOrNot int NULL, ApprovalReasons varchar(500) COLLATE Chinese_PRC_CI_AS NULL, ApprovalTime datetime NULL );
-- GM_MT_70.dbo.YQ_KQ_AttendanceDataHY definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_AttendanceDataHY; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_AttendanceDataHY ( ID uniqueidentifier NULL, EmployeeID uniqueidentifier NULL, ClockTime datetime NULL, CreateTime datetime NULL, PhotoFilePath varchar(100) COLLATE Chinese_PRC_CI_AS NULL, PhotoPlace int NULL, DeviceID uniqueidentifier NULL, InOrOut int NULL, UploadType int NULL, PIN varchar(50) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_KQ_AttendanceDataJB definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_AttendanceDataJB; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_AttendanceDataJB ( ID uniqueidentifier NULL, EmployeeID uniqueidentifier NULL, ClockTime datetime NULL, CreateTime datetime NULL, PhotoFilePath varchar(100) COLLATE Chinese_PRC_CI_AS NULL, PhotoPlace int NULL, DeviceID uniqueidentifier NULL, InOrOut int NULL, UploadType int NULL, PIN varchar(50) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_KQ_AttendanceDataJC definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_AttendanceDataJC; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_AttendanceDataJC ( ID uniqueidentifier NULL, EmployeeID uniqueidentifier NULL, ClockTime datetime NULL, CreateTime datetime NULL, PhotoFilePath varchar(100) COLLATE Chinese_PRC_CI_AS NULL, PhotoPlace int NULL, DeviceID uniqueidentifier NULL, InOrOut int NULL, UploadType int NULL, PIN varchar(50) COLLATE Chinese_PRC_CI_AS NULL, JCType int NULL );
-- GM_MT_70.dbo.YQ_KQ_AttendanceDataKQ definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_AttendanceDataKQ; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_AttendanceDataKQ ( ID uniqueidentifier NULL, EmployeeID uniqueidentifier NULL, ClockTime datetime NULL, CreateTime datetime NULL, PhotoFilePath varchar(100) COLLATE Chinese_PRC_CI_AS NULL, PhotoPlace int NULL, DeviceID uniqueidentifier NULL, InOrOut int NULL, UploadType int NULL, PIN varchar(50) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_KQ_AttendanceDataLocation definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_AttendanceDataLocation; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_AttendanceDataLocation ( DataID uniqueidentifier NULL, lat varchar(100) COLLATE Chinese_PRC_CI_AS NULL, lng varchar(100) COLLATE Chinese_PRC_CI_AS NULL, location varchar(300) COLLATE Chinese_PRC_CI_AS NULL, ips varchar(50) COLLATE Chinese_PRC_CI_AS NULL, pointid uniqueidentifier NULL );
-- GM_MT_70.dbo.YQ_KQ_AttendanceDataMJ definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_AttendanceDataMJ; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_AttendanceDataMJ ( ID uniqueidentifier NULL, EmployeeID uniqueidentifier NULL, ClockTime datetime NULL, CreateTime datetime NULL, PhotoFilePath varchar(100) COLLATE Chinese_PRC_CI_AS NULL, PhotoPlace int NULL, DeviceID uniqueidentifier NULL, InOrOut int NULL, UploadType int NULL, PIN varchar(50) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_KQ_AttendanceDataMJTongBu definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_AttendanceDataMJTongBu; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_AttendanceDataMJTongBu ( ID uniqueidentifier NULL, EmployeeID uniqueidentifier NULL, ClockTime datetime NULL, CreateTime datetime NULL, InOrOut int NULL, DeviceName varchar(1000) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_KQ_AttendanceDataTemp definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_AttendanceDataTemp; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_AttendanceDataTemp ( ID int IDENTITY(1, 1) NOT NULL, Pin varchar(20) COLLATE Chinese_PRC_CI_AS NULL, ClockTime datetime NULL, SN varchar(50) COLLATE Chinese_PRC_CI_AS NULL, PhotoFilePath varchar(200) COLLATE Chinese_PRC_CI_AS NULL, CreateTime datetime NULL, CONSTRAINT PK_YQ_KQ_AttendanceDataTemp PRIMARY KEY (ID) );
-- GM_MT_70.dbo.YQ_KQ_AutoJob definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_AutoJob; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_AutoJob ( ID uniqueidentifier NULL, JOBGroup varchar(50) COLLATE Chinese_PRC_CI_AS NULL, JOBName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, Cron varchar(50) COLLATE Chinese_PRC_CI_AS NULL, JOBState int NULL, LastExeTime datetime NULL, JOBDescript varchar(50) COLLATE Chinese_PRC_CI_AS NULL, StartExeTime datetime NULL );
-- GM_MT_70.dbo.YQ_KQ_DeptChange definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_DeptChange; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_DeptChange ( EmployeeID uniqueidentifier NULL, CurrentDept int NULL, StartDate date NULL, EndDate date NULL, UpdateDate date NULL, UpdateOperator uniqueidentifier NULL );
-- GM_MT_70.dbo.YQ_KQ_Employee definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_Employee; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_Employee ( ID uniqueidentifier NULL, DisplayOrder1 varchar(200) COLLATE Chinese_PRC_CI_AS NULL, DisplayOrder2 varchar(200) COLLATE Chinese_PRC_CI_AS NULL, DisplayOrder3 varchar(200) COLLATE Chinese_PRC_CI_AS NULL, DisplayOrder4 varchar(200) COLLATE Chinese_PRC_CI_AS NULL, DisplayOrder5 varchar(200) COLLATE Chinese_PRC_CI_AS NULL, DisplayOrder6 varchar(200) COLLATE Chinese_PRC_CI_AS NULL, DisplayOrder7 varchar(200) COLLATE Chinese_PRC_CI_AS NULL, DisplayOrder8 varchar(200) COLLATE Chinese_PRC_CI_AS NULL, DisplayOrder9 varchar(200) COLLATE Chinese_PRC_CI_AS NULL, DisplayOrder10 varchar(200) COLLATE Chinese_PRC_CI_AS NULL, Temp1 varchar(200) COLLATE Chinese_PRC_CI_AS NULL, Temp2 varchar(200) COLLATE Chinese_PRC_CI_AS NULL, Temp3 varchar(200) COLLATE Chinese_PRC_CI_AS NULL, Temp4 varchar(200) COLLATE Chinese_PRC_CI_AS NULL, Temp5 varchar(200) COLLATE Chinese_PRC_CI_AS NULL, IdentityFiled int IDENTITY(1, 1) NOT NULL );
-- GM_MT_70.dbo.YQ_KQ_EmployeeData definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_EmployeeData; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_EmployeeData ( GroupID uniqueidentifier NULL, FieldID uniqueidentifier NULL, FieldValue varchar(200) COLLATE Chinese_PRC_CI_AS NULL, FieldName varchar(50) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_KQ_EmployeeFieldInfo definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_EmployeeFieldInfo; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_EmployeeFieldInfo ( ID uniqueidentifier NULL, FieldName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, FieldValue varchar(50) COLLATE Chinese_PRC_CI_AS NULL, FieldDataType varchar(50) COLLATE Chinese_PRC_CI_AS NULL, IsRead int NULL, IsVisible int NULL, IsSystem int NULL, IsInternational int NULL, IsText int NULL, IsOnly int NULL, IsRequire int NULL, DataLength int NULL, IsIdentity int NULL, IsChangeKeep int NULL, IsDisplayOrder int NULL, FieldDisplayOrder int NULL, DisplayOrderMapping varchar(50) COLLATE Chinese_PRC_CI_AS NULL, EditControl varchar(50) COLLATE Chinese_PRC_CI_AS NULL, DataSourceType varchar(50) COLLATE Chinese_PRC_CI_AS NULL, DataSource varchar(50) COLLATE Chinese_PRC_CI_AS NULL, DataTextField varchar(50) COLLATE Chinese_PRC_CI_AS NULL, DataValueField varchar(50) COLLATE Chinese_PRC_CI_AS NULL, DataSourceWhere varchar(200) COLLATE Chinese_PRC_CI_AS NULL, DisplayOrder int NULL, IsDelete int NULL, GroupName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, CreateTime datetime NULL, CreateOperator varchar(50) COLLATE Chinese_PRC_CI_AS NULL, CompanyID uniqueidentifier NULL, IsSerch int NULL, SerchType varchar(50) COLLATE Chinese_PRC_CI_AS NULL, SerchControl varchar(50) COLLATE Chinese_PRC_CI_AS NULL, SerchGroup varchar(50) COLLATE Chinese_PRC_CI_AS NULL, DefaultValue varchar(50) COLLATE Chinese_PRC_CI_AS NULL, MappingType varchar(50) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_KQ_EmployeeInfo definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_EmployeeInfo; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_EmployeeInfo ( ID uniqueidentifier NULL, DeptID int NULL, EmployeeID varchar(20) COLLATE Chinese_PRC_CI_AS NULL, EmployeeName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, Sex uniqueidentifier NULL, IdentityCard varchar(18) COLLATE Chinese_PRC_CI_AS NULL, RegionUserName varchar(100) COLLATE Chinese_PRC_CI_AS NULL, PostID uniqueidentifier NULL, Duty uniqueidentifier NULL, PassWord varchar(100) COLLATE Chinese_PRC_CI_AS NULL, ApplyFlowType uniqueidentifier NULL, DutyType uniqueidentifier NULL, EmployDateStart date NULL, InCompanyDate date NULL, BeFormalDate date NULL, EmployDateEnd date NULL, IsManagement int NULL, SwipeMode varchar(200) COLLATE Chinese_PRC_CI_AS NULL, LeaderShip uniqueidentifier NULL, JobType uniqueidentifier DEFAULT '00000000-0000-0000-0000-000000000000' NOT NULL, JobCrowd uniqueidentifier DEFAULT '00000000-0000-0000-0000-000000000000' NOT NULL, JobClass uniqueidentifier DEFAULT '00000000-0000-0000-0000-000000000000' NOT NULL, JobLeve uniqueidentifier DEFAULT '00000000-0000-0000-0000-000000000000' NOT NULL, WeddingDate date DEFAULT '1900-01-01' NOT NULL, MaritalStatus int DEFAULT 0 NOT NULL, Age int DEFAULT 0 NOT NULL );
-- GM_MT_70.dbo.YQ_KQ_EmployeeInfo1 definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_EmployeeInfo1; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_EmployeeInfo1 ( ID uniqueidentifier NULL, DeptID int NULL, EmployeeID varchar(20) COLLATE Chinese_PRC_CI_AS NULL, EmployeeName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, Sex uniqueidentifier NULL, IdentityCard varchar(18) COLLATE Chinese_PRC_CI_AS NULL, RegionUserName varchar(100) COLLATE Chinese_PRC_CI_AS NULL, PostID uniqueidentifier NULL, Duty uniqueidentifier NULL, PassWord varchar(100) COLLATE Chinese_PRC_CI_AS NULL, ApplyFlowType uniqueidentifier NULL, DutyType uniqueidentifier NULL, EmployDateStart date NULL, InCompanyDate date NULL, BeFormalDate date NULL, EmployDateEnd date NULL, IsManagement int NULL, SwipeMode varchar(200) COLLATE Chinese_PRC_CI_AS NULL, LeaderShip uniqueidentifier NULL, JobType uniqueidentifier NOT NULL, JobCrowd uniqueidentifier NOT NULL, JobClass uniqueidentifier NOT NULL, JobLeve uniqueidentifier NOT NULL, WeddingDate date NOT NULL, MaritalStatus int NOT NULL, Age int NOT NULL );
-- GM_MT_70.dbo.YQ_KQ_EmployeeInfoLeave definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_EmployeeInfoLeave; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_EmployeeInfoLeave ( ID uniqueidentifier NULL, DeptID int NULL, EmployeeID varchar(20) COLLATE Chinese_PRC_CI_AS NULL, EmployeeName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, Sex uniqueidentifier NULL, IdentityCard varchar(18) COLLATE Chinese_PRC_CI_AS NULL, RegionUserName varchar(100) COLLATE Chinese_PRC_CI_AS NULL, PostID uniqueidentifier NULL, Duty uniqueidentifier NULL, PassWord varchar(100) COLLATE Chinese_PRC_CI_AS NULL, ApplyFlowType uniqueidentifier NULL, DutyType uniqueidentifier NULL, EmployDateStart date NULL, InCompanyDate date NULL, BeFormalDate date NULL, EmployDateEnd date NULL, IsManagement int NULL, SwipeMode varchar(200) COLLATE Chinese_PRC_CI_AS NULL, CompanyID uniqueidentifier NULL, LeaderShip uniqueidentifier NULL, JobType uniqueidentifier DEFAULT '00000000-0000-0000-0000-000000000000' NOT NULL, JobCrowd uniqueidentifier DEFAULT '00000000-0000-0000-0000-000000000000' NOT NULL, JobClass uniqueidentifier DEFAULT '00000000-0000-0000-0000-000000000000' NOT NULL, JobLeve uniqueidentifier DEFAULT '00000000-0000-0000-0000-000000000000' NOT NULL, WeddingDate date DEFAULT '1900-01-01' NOT NULL, MaritalStatus int DEFAULT 0 NOT NULL, Age int DEFAULT 0 NOT NULL );
-- GM_MT_70.dbo.YQ_KQ_EmployeeLactation definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_EmployeeLactation; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_EmployeeLactation ( ID int IDENTITY(1, 1) NOT NULL, EmployeeID uniqueidentifier NULL, StartDate date NULL, EndDate date NULL, Operator uniqueidentifier NULL, UpdateDate datetime NULL, Duration int NULL, CONSTRAINT PK_YQ_KQ_EmployeeLactation PRIMARY KEY (ID) );
-- GM_MT_70.dbo.YQ_KQ_Form definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_Form; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_Form ( ID uniqueidentifier NULL, FormName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, FormDescribe varchar(200) COLLATE Chinese_PRC_CI_AS NULL, StartingEven varchar(50) COLLATE Chinese_PRC_CI_AS NULL, StartedEven varchar(50) COLLATE Chinese_PRC_CI_AS NULL, EndingEven varchar(50) COLLATE Chinese_PRC_CI_AS NULL, EndedEven varchar(50) COLLATE Chinese_PRC_CI_AS NULL, ViewType int NULL, FilePath varchar(200) COLLATE Chinese_PRC_CI_AS NULL, CompanyID uniqueidentifier NULL, IsInheritance int NULL, FormType int NULL );
-- GM_MT_70.dbo.YQ_KQ_FormData definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_FormData; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_FormData ( GroupID uniqueidentifier NULL, FieldID uniqueidentifier NULL, FieldValue varchar(200) COLLATE Chinese_PRC_CI_AS NULL, FieldName varchar(50) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_KQ_FormFieldInfo definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_FormFieldInfo; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_FormFieldInfo ( FormID uniqueidentifier NULL, ID uniqueidentifier NULL, FieldName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, FieldValue varchar(50) COLLATE Chinese_PRC_CI_AS NULL, FieldDataType varchar(50) COLLATE Chinese_PRC_CI_AS NULL, IsRead int NULL, IsVisible int NULL, IsSystem int NULL, IsInternational int NULL, IsText int NULL, IsOnly int NULL, IsRequire int NULL, DataLength int NULL, IsIdentity int NULL, IsChangeKeep int NULL, IsDisplayOrder int NULL, FieldDisplayOrder int NULL, DisplayOrderMapping varchar(50) COLLATE Chinese_PRC_CI_AS NULL, EditControl varchar(50) COLLATE Chinese_PRC_CI_AS NULL, DataSourceType varchar(50) COLLATE Chinese_PRC_CI_AS NULL, DataSource varchar(50) COLLATE Chinese_PRC_CI_AS NULL, DataTextField varchar(50) COLLATE Chinese_PRC_CI_AS NULL, DataValueField varchar(50) COLLATE Chinese_PRC_CI_AS NULL, DataSourceWhere varchar(200) COLLATE Chinese_PRC_CI_AS NULL, DisplayOrder int NULL, GroupName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, IsSerch int NULL, SerchType varchar(50) COLLATE Chinese_PRC_CI_AS NULL, SerchControl varchar(50) COLLATE Chinese_PRC_CI_AS NULL, SerchGroup varchar(50) COLLATE Chinese_PRC_CI_AS NULL, CompanyID uniqueidentifier NULL, IsInheritance int NULL );
-- GM_MT_70.dbo.YQ_KQ_FormGroup definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_FormGroup; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_FormGroup ( ID uniqueidentifier NULL, FormID uniqueidentifier NULL, DisplayOrder10 varchar(200) COLLATE Chinese_PRC_CI_AS NULL, DisplayOrder9 varchar(200) COLLATE Chinese_PRC_CI_AS NULL, DisplayOrder8 varchar(200) COLLATE Chinese_PRC_CI_AS NULL, DisplayOrder7 varchar(200) COLLATE Chinese_PRC_CI_AS NULL, DisplayOrder6 varchar(200) COLLATE Chinese_PRC_CI_AS NULL, DisplayOrder5 varchar(200) COLLATE Chinese_PRC_CI_AS NULL, DisplayOrder4 varchar(200) COLLATE Chinese_PRC_CI_AS NULL, DisplayOrder3 varchar(200) COLLATE Chinese_PRC_CI_AS NULL, DisplayOrder2 varchar(200) COLLATE Chinese_PRC_CI_AS NULL, DisplayOrder1 varchar(200) COLLATE Chinese_PRC_CI_AS NULL, Temp5 varchar(50) COLLATE Chinese_PRC_CI_AS NULL, Temp4 varchar(50) COLLATE Chinese_PRC_CI_AS NULL, Temp3 varchar(50) COLLATE Chinese_PRC_CI_AS NULL, Temp2 varchar(50) COLLATE Chinese_PRC_CI_AS NULL, Temp1 varchar(50) COLLATE Chinese_PRC_CI_AS NULL, IdentityFiled int IDENTITY(1, 1) NOT NULL, ApprovalStatus int NULL, ApprovalOrNot int NULL, EmployeeGUID uniqueidentifier NULL, TypeID uniqueidentifier NULL, FormType int NULL, SubsidyTypeID uniqueidentifier NULL );
-- GM_MT_70.dbo.YQ_KQ_FormLayout definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_FormLayout; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_FormLayout ( FormID uniqueidentifier NULL, ColsIndex int NULL, RowsIndex int NULL, ColsNum int NULL, RowsNum int NULL, DataSourceType varchar(50) COLLATE Chinese_PRC_CI_AS NULL, DataSource varchar(50) COLLATE Chinese_PRC_CI_AS NULL, TemplateStr varchar(500) COLLATE Chinese_PRC_CI_AS NULL, GroupName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, ViewType varchar(50) COLLATE Chinese_PRC_CI_AS NULL, InternationalID uniqueidentifier NULL );
-- GM_MT_70.dbo.YQ_KQ_Holiday definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_Holiday; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_Holiday ( HolidayID uniqueidentifier NULL, HolidayName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, HolidayDate datetime NULL, IsHoliday int NULL, IsRest int NULL, ShiftAdjustDate datetime NULL, DutyType uniqueidentifier NULL, Operator uniqueidentifier NULL, CompanyID uniqueidentifier NULL, IsInheritance int NULL );
-- GM_MT_70.dbo.YQ_KQ_IBeaconAttendPoint definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_IBeaconAttendPoint; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_IBeaconAttendPoint ( ID uniqueidentifier NULL, IBeaconName varchar(100) COLLATE Chinese_PRC_CI_AS NULL, UUID varchar(100) COLLATE Chinese_PRC_CI_AS NULL, Major varchar(50) COLLATE Chinese_PRC_CI_AS NULL, Minor varchar(50) COLLATE Chinese_PRC_CI_AS NULL, TotalUUID varchar(150) COLLATE Chinese_PRC_CI_AS NULL, ValidityPeriodStart date NULL, ValidityPeriodEnd date NULL, Tolerance int NULL, Operator uniqueidentifier NULL, CompanyID uniqueidentifier NULL );
-- GM_MT_70.dbo.YQ_KQ_JC_Canteen definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_JC_Canteen; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_JC_Canteen ( ID uniqueidentifier NULL, CanteenName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, DeviceStr varchar(MAX) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_KQ_KeepOffManagement definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_KeepOffManagement; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_KeepOffManagement ( ID uniqueidentifier NULL, EmployeeID uniqueidentifier NULL, YearMonth varchar(6) COLLATE Chinese_PRC_CI_AS NULL, BOMBalance numeric(10, 2) NULL, CurMAdded numeric(10, 2) NULL, CurMCost numeric(10, 2) NULL, TurnToOT numeric(10, 2) NULL, CurMSurplus numeric(10, 2) NULL, BOMBalanceModifiers numeric(10, 2) NULL );
-- GM_MT_70.dbo.YQ_KQ_KeepOffManagementDetail definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_KeepOffManagementDetail; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_KeepOffManagementDetail ( ID uniqueidentifier NULL, EmployeeID uniqueidentifier NULL, YearMonth varchar(6) COLLATE Chinese_PRC_CI_AS NULL, TypeDetail varchar(6) COLLATE Chinese_PRC_CI_AS NULL, BOMBalance numeric(10, 2) NULL, CurMAdded numeric(10, 2) NULL, CurMCost numeric(10, 2) NULL, TurnToOT numeric(10, 2) NULL, CurMSurplus numeric(10, 2) NULL, BOMBalanceModifiers numeric(10, 2) NULL );
-- GM_MT_70.dbo.YQ_KQ_MC_AutoRelation definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_MC_AutoRelation; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_MC_AutoRelation ( MCID uniqueidentifier NULL, RelationType int NULL, RelationValue varchar(50) COLLATE Chinese_PRC_CI_AS NULL, EffectiveStartTime date NULL, EffectiveEndTime date NULL, Temp1 varchar(50) COLLATE Chinese_PRC_CI_AS NULL, Temp2 varchar(50) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_KQ_MC_CentralMachine definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_MC_CentralMachine; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_MC_CentralMachine ( ID uniqueidentifier NULL, SerialID varchar(50) COLLATE Chinese_PRC_CI_AS NULL, MCName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, IPAddress varchar(20) COLLATE Chinese_PRC_CI_AS NULL, ErrorDelay int NULL, UploadingTime varchar(20) COLLATE Chinese_PRC_CI_AS NULL, TransInterval int NULL, TransTimeSpan varchar(20) COLLATE Chinese_PRC_CI_AS NULL, DeviceState int NULL, LastOnlineTime datetime NULL, LastTransTime datetime NULL, FirmwareVer varchar(20) COLLATE Chinese_PRC_CI_AS NULL, Stamp1 varchar(100) COLLATE Chinese_PRC_CI_AS NULL, Stamp2 varchar(100) COLLATE Chinese_PRC_CI_AS NULL, Stamp3 varchar(100) COLLATE Chinese_PRC_CI_AS NULL, Stamp4 varchar(100) COLLATE Chinese_PRC_CI_AS NULL, Stamp5 varchar(100) COLLATE Chinese_PRC_CI_AS NULL, CompanyID uniqueidentifier NULL, IsInheritance int NULL, Operator uniqueidentifier NULL );
-- GM_MT_70.dbo.YQ_KQ_MC_Command definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_MC_Command; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_MC_Command ( [No] int IDENTITY(1, 1) NOT NULL, MCID uniqueidentifier NOT NULL, CommandType varchar(50) COLLATE Chinese_PRC_CI_AS NULL, CommandStr varchar(MAX) COLLATE Chinese_PRC_CI_AS NULL, DescribeStr varchar(MAX) COLLATE Chinese_PRC_CI_AS NULL, ReturnStr varchar(MAX) COLLATE Chinese_PRC_CI_AS NULL, DownLoadTimes int NULL, IsOK int NULL, ExeTime datetime NULL, LoadTime datetime NULL, ReturnTime datetime NULL, CONSTRAINT PK_YQ_KQ_MC_Command PRIMARY KEY ([No]) );
-- GM_MT_70.dbo.YQ_KQ_MC_DeviceEmployee definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_MC_DeviceEmployee; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_MC_DeviceEmployee ( ID int IDENTITY(1, 1) NOT NULL, DeviceID uniqueidentifier NULL, EmployeeID uniqueidentifier NULL, DownloadState int NULL, DownloadTime int NULL, DownType int NULL, CommandID varchar(100) COLLATE Chinese_PRC_CI_AS NULL, CONSTRAINT PK_YQ_KQ_MC_DeviceEmployee PRIMARY KEY (ID) );
-- GM_MT_70.dbo.YQ_KQ_MC_DeviceInfo definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_MC_DeviceInfo; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_MC_DeviceInfo ( ID uniqueidentifier NULL, SerialID varchar(50) COLLATE Chinese_PRC_CI_AS NULL, CentralID varchar(50) COLLATE Chinese_PRC_CI_AS NULL, MCName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, IPAddress varchar(20) COLLATE Chinese_PRC_CI_AS NULL, ErrorDelay int NULL, UploadingTime varchar(20) COLLATE Chinese_PRC_CI_AS NULL, TransInterval int NULL, TransTimeSpan varchar(20) COLLATE Chinese_PRC_CI_AS NULL, DeviceState int NULL, LastOnlineTime datetime NULL, LastTransTime datetime NULL, FirmwareVer varchar(20) COLLATE Chinese_PRC_CI_AS NULL, ProductCode varchar(20) COLLATE Chinese_PRC_CI_AS NULL, DeviceType varchar(20) COLLATE Chinese_PRC_CI_AS NULL, DeviceTemplate uniqueidentifier NULL, DevicePurpose uniqueidentifier NULL, Stamp1 varchar(20) COLLATE Chinese_PRC_CI_AS NULL, Stamp2 varchar(20) COLLATE Chinese_PRC_CI_AS NULL, Stamp3 varchar(20) COLLATE Chinese_PRC_CI_AS NULL, Stamp4 varchar(20) COLLATE Chinese_PRC_CI_AS NULL, Stamp5 varchar(20) COLLATE Chinese_PRC_CI_AS NULL, Stamp6 varchar(20) COLLATE Chinese_PRC_CI_AS NULL, Stamp7 varchar(20) COLLATE Chinese_PRC_CI_AS NULL, Stamp8 varchar(20) COLLATE Chinese_PRC_CI_AS NULL, Stamp9 varchar(20) COLLATE Chinese_PRC_CI_AS NULL, Stamp10 varchar(20) COLLATE Chinese_PRC_CI_AS NULL, RecordsNum int NULL, UsersNum int NULL, FingerNum int NULL, FaceNum int NULL, IsEnable int NULL, CompanyID uniqueidentifier NULL, IsInheritance int NULL, CentralState varchar(50) COLLATE Chinese_PRC_CI_AS NULL, IsShare varchar(50) COLLATE Chinese_PRC_CI_AS NULL, SwipeType uniqueidentifier NULL, SwipeMode varchar(200) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_KQ_MC_DeviceTemplate definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_MC_DeviceTemplate; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_MC_DeviceTemplate ( ID uniqueidentifier NULL, FaceType varchar(10) COLLATE Chinese_PRC_CI_AS NULL, CardType varchar(10) COLLATE Chinese_PRC_CI_AS NULL, FingerType varchar(10) COLLATE Chinese_PRC_CI_AS NULL, IsEnable int NULL, DeviceType varchar(10) COLLATE Chinese_PRC_CI_AS NULL, TemplateName varchar(20) COLLATE Chinese_PRC_CI_AS NULL, ConnectType int NULL, OperationList varchar(50) COLLATE Chinese_PRC_CI_AS NULL, DisplayOrder int NULL );
-- GM_MT_70.dbo.YQ_KQ_MC_EmployeeItem definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_MC_EmployeeItem; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_MC_EmployeeItem ( EmployeeID uniqueidentifier NULL, ItemType varchar(50) COLLATE Chinese_PRC_CI_AS NULL, ItemIndex int NULL, ItemValue varchar(MAX) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_KQ_MC_EmployeeItem1 definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_MC_EmployeeItem1; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_MC_EmployeeItem1 ( EmployeeID uniqueidentifier NULL, ItemType varchar(50) COLLATE Chinese_PRC_CI_AS NULL, ItemIndex int NULL, ItemValue varchar(MAX) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_KQ_MapAttendPoint definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_MapAttendPoint; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_MapAttendPoint ( ID uniqueidentifier NULL, Plng varchar(50) COLLATE Chinese_PRC_CI_AS NULL, Plat varchar(50) COLLATE Chinese_PRC_CI_AS NULL, PointName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, DisplayName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, Tolerance int NULL, ValidityPeriodStart date NULL, ValidityPeriodEnd date NULL, Operator uniqueidentifier NULL, CompanyID uniqueidentifier NULL );
-- GM_MT_70.dbo.YQ_KQ_MapEmpl definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_MapEmpl; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_MapEmpl ( PointID uniqueidentifier NULL, EmployeeID uniqueidentifier NULL );
-- GM_MT_70.dbo.YQ_KQ_Merits definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_Merits; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_Merits ( PostID uniqueidentifier NULL, ChuQin50 numeric(8, 2) NULL, ChuQin75 numeric(8, 2) NULL, ChuQin90 numeric(8, 2) NULL );
-- GM_MT_70.dbo.YQ_KQ_MeritsStatic definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_MeritsStatic; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_MeritsStatic ( EmployeeGuid uniqueidentifier NULL, YearMonth varchar(50) COLLATE Chinese_PRC_CI_AS NULL, ChuQinLv numeric(8, 2) NULL, ChuQin50 numeric(8, 2) NULL, ChuQin75 numeric(8, 2) NULL, ChuQin90 numeric(8, 2) NULL );
-- GM_MT_70.dbo.YQ_KQ_ParameterSet definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_ParameterSet; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_ParameterSet ( ParaType varchar(50) COLLATE Chinese_PRC_CI_AS NULL, ParaName varchar(200) COLLATE Chinese_PRC_CI_AS NULL, ParaName2 varchar(200) COLLATE Chinese_PRC_CI_AS NULL, ParaValue varchar(MAX) COLLATE Chinese_PRC_CI_AS NULL, CompanyID uniqueidentifier NULL, IsInheritance int NULL, Temp1 varchar(50) COLLATE Chinese_PRC_CI_AS NULL, Temp2 varchar(50) COLLATE Chinese_PRC_CI_AS NULL, Temp3 varchar(50) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_KQ_Remind definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_Remind; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_Remind ( ID uniqueidentifier NULL, EmplID uniqueidentifier NULL, RemindType int NULL, RemindContent varchar(500) COLLATE Chinese_PRC_CI_AS NULL, CreateTime datetime NULL, Indate datetime NULL, IsRead int NULL, Temp1 varchar(100) COLLATE Chinese_PRC_CI_AS NULL, Temp2 varchar(100) COLLATE Chinese_PRC_CI_AS NULL, Temp3 varchar(100) COLLATE Chinese_PRC_CI_AS NULL, Temp4 varchar(100) COLLATE Chinese_PRC_CI_AS NULL, Temp5 varchar(100) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_KQ_Report definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_Report; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_Report ( ID uniqueidentifier NULL, ReportName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, ReportType int NULL, CompanyID uniqueidentifier NULL, IsInheritance int NULL, Operator uniqueidentifier NULL );
-- GM_MT_70.dbo.YQ_KQ_ReportColumn definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_ReportColumn; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_ReportColumn ( ReportID uniqueidentifier NULL, ColumnID uniqueidentifier NULL, ColumnName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, ColumnValue varchar(50) COLLATE Chinese_PRC_CI_AS NULL, GroupType varchar(50) COLLATE Chinese_PRC_CI_AS NULL, ParentID uniqueidentifier NULL, DisplayOrder int NULL );
-- GM_MT_70.dbo.YQ_KQ_ReportRole definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_ReportRole; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_ReportRole ( ReportID uniqueidentifier NULL, RoleID uniqueidentifier NULL );
-- GM_MT_70.dbo.YQ_KQ_SchedulingDate definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_SchedulingDate; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_SchedulingDate ( TypeID uniqueidentifier NULL, AdjustDate date NULL, ShiftID uniqueidentifier NULL, IsLock int NULL, AdjustType int NULL, ExchangeEmpl uniqueidentifier NULL, ExchangeDate varchar(50) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_KQ_SchedulingEmpl definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_SchedulingEmpl; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_SchedulingEmpl ( ID int IDENTITY(1, 1) NOT NULL, EmployeeID uniqueidentifier NOT NULL, ShiftOrder varchar(MAX) COLLATE Chinese_PRC_CI_AS NULL, CycleDays int NULL, CycleStartDay date NULL, RestDay varchar(50) COLLATE Chinese_PRC_CI_AS NULL, AnalysisMethods uniqueidentifier NULL, BeginDate date NULL, EndDate date NULL, Operator uniqueidentifier NULL, SourceID uniqueidentifier NULL, RestDayType uniqueidentifier NULL, IsIntelligentAnalysis int NULL, CycleDaysType uniqueidentifier NULL, CONSTRAINT PK_YQ_KQ_SchedulingEmpl PRIMARY KEY (ID) );
-- GM_MT_70.dbo.YQ_KQ_SchedulingIntelligent definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_SchedulingIntelligent; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_SchedulingIntelligent ( ID int IDENTITY(1, 1) NOT NULL, CycleType int NULL, DataID uniqueidentifier NULL, ShiftID uniqueidentifier NULL, CycleID int NULL, Reliability int NULL, WorkDate date NULL, AnalyisTime datetime NULL, LeaveApplyID uniqueidentifier NULL, AttendanceDataStr varchar(200) COLLATE Chinese_PRC_CI_AS NULL, CONSTRAINT PK_YQ_KQ_SchedulingIntelligent PRIMARY KEY (ID) );
-- GM_MT_70.dbo.YQ_KQ_SchedulingSource definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_SchedulingSource; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_SchedulingSource ( ID uniqueidentifier NULL, ShiftOrder varchar(MAX) COLLATE Chinese_PRC_CI_AS NULL, CycleDays int NULL, CycleStartDay date NULL, RestDay varchar(50) COLLATE Chinese_PRC_CI_AS NULL, AnalysisMethods uniqueidentifier NULL, BeginDate date NULL, EndDate date NULL, Operator uniqueidentifier NULL, RestDayType uniqueidentifier NULL, IsIntelligentAnalysis int NULL, CycleDaysType uniqueidentifier NULL );
-- GM_MT_70.dbo.YQ_KQ_SchedulingTeam definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_SchedulingTeam; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_SchedulingTeam ( ID int IDENTITY(1, 1) NOT NULL, TeamID uniqueidentifier NULL, ShiftOrder varchar(MAX) COLLATE Chinese_PRC_CI_AS NULL, CycleDays int NULL, CycleStartDay date NULL, RestDay varchar(50) COLLATE Chinese_PRC_CI_AS NULL, AnalysisMethods uniqueidentifier NULL, BeginDate date NULL, EndDate date NULL, Operator uniqueidentifier NULL, RestDayType uniqueidentifier NULL, IsIntelligentAnalysis int NULL, CycleDaysType uniqueidentifier NULL, CONSTRAINT PK_YQ_KQ_SchedulingTeam PRIMARY KEY (ID) );
-- GM_MT_70.dbo.YQ_KQ_ShiftDefine definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_ShiftDefine; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_ShiftDefine ( ShiftID uniqueidentifier NULL, ShiftCode varchar(10) COLLATE Chinese_PRC_CI_AS NULL, ShiftName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, IsDoubleSeason int NULL, NormalTimeLong1 int NULL, NormalTimeLong2 int NULL, SumAsDays1 numeric(5, 2) NULL, SumAsDays2 numeric(5, 2) NULL, RepastTimeRange1 varchar(100) COLLATE Chinese_PRC_CI_AS NULL, RepastTimeRange2 varchar(100) COLLATE Chinese_PRC_CI_AS NULL, RepastTimeLong1 int NULL, RepastTimeLong2 int NULL, WorkTimeRange1 varchar(100) COLLATE Chinese_PRC_CI_AS NULL, WorkTimeRange2 varchar(100) COLLATE Chinese_PRC_CI_AS NULL, OTTimeRange1 varchar(100) COLLATE Chinese_PRC_CI_AS NULL, OTTimeRange2 varchar(100) COLLATE Chinese_PRC_CI_AS NULL, OTTypeID uniqueidentifier NULL, BeginTimeDelay int NULL, EndTimeDelay int NULL, BeLateRange varchar(20) COLLATE Chinese_PRC_CI_AS NULL, LeaveEarlyRange varchar(20) COLLATE Chinese_PRC_CI_AS NULL, ValidTime1 int NULL, ValidTime2 int NULL, ShiftTypeID varchar(500) COLLATE Chinese_PRC_CI_AS NOT NULL, CostCenterTypeID uniqueidentifier NULL, AnalyseWay int NULL, Operator uniqueidentifier NULL, IsBreakfast int NULL, IsLunch int NULL, IsLatemeals int NULL, IsSupper int NULL, IsRestCard int NULL, CalanderColor varchar(10) COLLATE Chinese_PRC_CI_AS NULL, IsInheritance int NULL, CompanyID uniqueidentifier NULL, DisplayOrder int NULL, Symbol varchar(5) COLLATE Chinese_PRC_CI_AS NULL, LeaveHalfAday int NULL, NoonValidTime1 int NULL, NoonValidTime2 int NULL, BWRepastTimeRange varchar(100) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_KQ_TI_CostCenterType definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_TI_CostCenterType; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_TI_CostCenterType ( TypeID uniqueidentifier NULL, TypeCode varchar(7) COLLATE Chinese_PRC_CI_AS NULL, TypeName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, StatisticUnit uniqueidentifier NULL, Operator uniqueidentifier NULL, CompanyID uniqueidentifier NULL, IsInheritance int NULL, Symbol varchar(5) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_KQ_TI_CustomType definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_TI_CustomType; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_TI_CustomType ( TypeID uniqueidentifier NULL, TypeCode varchar(7) COLLATE Chinese_PRC_CI_AS NULL, TypeName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, TotalFormula varchar(MAX) COLLATE Chinese_PRC_CI_AS NULL, StatisticUnit uniqueidentifier NULL, Operator uniqueidentifier NULL, CompanyID uniqueidentifier NULL, IsInheritance int NULL, Symbol varchar(5) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_KQ_TI_EarlyType definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_TI_EarlyType; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_TI_EarlyType ( TypeID uniqueidentifier NULL, TypeCode varchar(7) COLLATE Chinese_PRC_CI_AS NULL, TypeName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, StartTime int NULL, EndTime int NULL, StatisticUnit uniqueidentifier NULL, Operator uniqueidentifier NULL, CompanyID uniqueidentifier NULL, IsInheritance int NULL, Symbol varchar(5) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_KQ_TI_FixedType definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_TI_FixedType; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_TI_FixedType ( TypeID uniqueidentifier NULL, TypeCode varchar(7) COLLATE Chinese_PRC_CI_AS NULL, TypeName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, StatisticUnit uniqueidentifier NULL, Operator uniqueidentifier NULL, CompanyID uniqueidentifier NULL, IsInheritance int NULL, Symbol varchar(5) COLLATE Chinese_PRC_CI_AS NULL, RoundingMode numeric(6, 1) NULL, ChoiceMode uniqueidentifier NULL );
-- GM_MT_70.dbo.YQ_KQ_TI_LateType definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_TI_LateType; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_TI_LateType ( TypeID uniqueidentifier NULL, TypeCode varchar(7) COLLATE Chinese_PRC_CI_AS NULL, TypeName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, StartTime int NULL, EndTime int NULL, StatisticUnit uniqueidentifier NULL, Operator uniqueidentifier NULL, CompanyID uniqueidentifier NULL, IsInheritance int NULL, Symbol varchar(5) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_KQ_TI_LeaveType definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_TI_LeaveType; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_TI_LeaveType ( TypeID uniqueidentifier NULL, TypeCode varchar(7) COLLATE Chinese_PRC_CI_AS NULL, TypeName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, IsOnDuty int NULL, IsShiftNum int NULL, StatisticUnit uniqueidentifier NULL, RoundingMode numeric(6, 1) NULL, ChoiceMode uniqueidentifier NULL, IsStoped int NULL, IsResumption int NULL, IsHolidayContinue int NULL, IsAnnualStatistics int NULL, Operator uniqueidentifier NULL, IsAttachments int NULL, TimeLimit int NULL, isSM int NULL, CompanyID uniqueidentifier NULL, IsInheritance int NULL, FormID uniqueidentifier NULL, Symbol varchar(5) COLLATE Chinese_PRC_CI_AS NULL, DisplayOrder int NULL, IsAttachmentsDay numeric(6, 1) NULL, SettingRules varchar(MAX) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_KQ_TI_OTType definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_TI_OTType; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_TI_OTType ( TypeID uniqueidentifier NULL, TypeCode varchar(7) COLLATE Chinese_PRC_CI_AS NULL, TypeName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, StatisticUnit uniqueidentifier NULL, Operator uniqueidentifier NULL, CompanyID uniqueidentifier NULL, IsInheritance int NULL, FormID uniqueidentifier NULL, Symbol varchar(5) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_KQ_TI_ShiftType definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_TI_ShiftType; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_TI_ShiftType ( TypeID uniqueidentifier NULL, TypeCode varchar(7) COLLATE Chinese_PRC_CI_AS NULL, TypeName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, StatisticUnit uniqueidentifier NULL, Operator uniqueidentifier NULL, CompanyID uniqueidentifier NULL, IsInheritance int NULL, Symbol varchar(5) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_KQ_TI_ShiftType_Set1 definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_TI_ShiftType_Set1; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_TI_ShiftType_Set1 ( TypeID uniqueidentifier NULL, WorkAllowanceCount int NULL, WorkAllowanceType1 int NULL, WorkAllowanceValue1 varchar(50) COLLATE Chinese_PRC_CI_AS NULL, WorkAllowanceType2 int NULL, WorkAllowanceValue2 varchar(50) COLLATE Chinese_PRC_CI_AS NULL, WorkAllowanceType3 int NULL, WorkAllowanceValue3 varchar(50) COLLATE Chinese_PRC_CI_AS NULL, WorkAllowanceType4 int NULL, WorkAllowanceValue4 varchar(50) COLLATE Chinese_PRC_CI_AS NULL, WorkAllowanceType5 int NULL, WorkAllowanceValue5 varchar(50) COLLATE Chinese_PRC_CI_AS NULL, IsRestAllowance int NULL, IsNeedOTApply int NULL, RestAllowanceCount int NULL, RestAllowanceType1 int NULL, RestAllowanceValue1 varchar(50) COLLATE Chinese_PRC_CI_AS NULL, RestAllowanceType2 int NULL, RestAllowanceValue2 varchar(50) COLLATE Chinese_PRC_CI_AS NULL, RestAllowanceType3 int NULL, RestAllowanceValue3 varchar(50) COLLATE Chinese_PRC_CI_AS NULL, RestAllowanceType4 int NULL, RestAllowanceValue4 varchar(50) COLLATE Chinese_PRC_CI_AS NULL, RestAllowanceType5 int NULL, RestAllowanceValue5 varchar(50) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_KQ_TaskDetail definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_TaskDetail; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_TaskDetail ( TaskID uniqueidentifier NULL, CreateTime datetime NULL, Message varchar(MAX) COLLATE Chinese_PRC_CI_AS NULL, Temp1 varchar(100) COLLATE Chinese_PRC_CI_AS NULL, Temp2 varchar(100) COLLATE Chinese_PRC_CI_AS NULL, Temp3 varchar(100) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_KQ_TaskInfo definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_TaskInfo; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_TaskInfo ( TaskID uniqueidentifier NULL, TaskName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, TaskState int NULL, TaskType int NULL, Progress numeric(10, 2) NULL, StartDate datetime NULL, EndDate datetime NULL, UserCode uniqueidentifier NULL, Temp1 varchar(200) COLLATE Chinese_PRC_CI_AS NULL, Temp2 varchar(200) COLLATE Chinese_PRC_CI_AS NULL, Temp3 varchar(200) COLLATE Chinese_PRC_CI_AS NULL, Temp4 varchar(200) COLLATE Chinese_PRC_CI_AS NULL, Temp5 varchar(200) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_KQ_TeamChange definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_TeamChange; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_TeamChange ( EmployeeID uniqueidentifier NULL, FromTeam uniqueidentifier NULL, CurrentTeam uniqueidentifier NULL, StartDate date NULL, EndDate date NULL, UpdateDate datetime NULL );
-- GM_MT_70.dbo.YQ_KQ_TeamManager definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_TeamManager; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_TeamManager ( TeamID uniqueidentifier NULL, EmployeeID uniqueidentifier NULL );
-- GM_MT_70.dbo.YQ_KQ_TodayAnalyis definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_TodayAnalyis; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_TodayAnalyis ( EmployeeID uniqueidentifier NULL, ShiftID uniqueidentifier NULL, AttendanceDataStr varchar(200) COLLATE Chinese_PRC_CI_AS NULL, IsShouldOnDuty int NULL, IsOnDuty int NULL, IsAbsence int NULL, IsLeaveApply int NULL, LeaveType uniqueidentifier NULL, AnalyisTime datetime NULL, LeaveApplyID uniqueidentifier NULL, IsCount int NULL, IsOther int NULL, IsLate int NULL, IsSignIn int NULL );
-- GM_MT_70.dbo.YQ_KQ_WXRemind definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_WXRemind; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_WXRemind ( ID uniqueidentifier NULL, RemindIn varchar(20) COLLATE Chinese_PRC_CI_AS NULL, RemindOut varchar(20) COLLATE Chinese_PRC_CI_AS NULL, RemindLate varchar(20) COLLATE Chinese_PRC_CI_AS NULL, RemindEarly varchar(20) COLLATE Chinese_PRC_CI_AS NULL, RemindAbsence varchar(20) COLLATE Chinese_PRC_CI_AS NULL, RemindMissingCard varchar(20) COLLATE Chinese_PRC_CI_AS NULL, RemindLeave varchar(20) COLLATE Chinese_PRC_CI_AS NULL, RemindOt varchar(20) COLLATE Chinese_PRC_CI_AS NULL, RemindAbs varchar(20) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_KQ_XCXTongBu definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_KQ_XCXTongBu; 
CREATE TABLE GM_MT_70.dbo.YQ_KQ_XCXTongBu ( ID uniqueidentifier NULL, EmployeeID varchar(20) COLLATE Chinese_PRC_CI_AS NULL, EmployeeName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, DeptID int NULL, Sex uniqueidentifier NULL, Mobile varchar(20) COLLATE Chinese_PRC_CI_AS NULL, Status int NULL, IsBindWx int NULL, Operator uniqueidentifier NULL, UpdateTime datetime NULL );
-- GM_MT_70.dbo.YQ_MC_AutoRelation definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_MC_AutoRelation; 
CREATE TABLE GM_MT_70.dbo.YQ_MC_AutoRelation ( ID int IDENTITY(1, 1) NOT NULL, MCID uniqueidentifier NULL, RelationType int NULL, RelationValue varchar(50) COLLATE Chinese_PRC_CI_AS NULL, EffectiveStartTime date NULL, EffectiveEndTime date NULL, Temp1 varchar(50) COLLATE Chinese_PRC_CI_AS NULL, Temp2 varchar(50) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_MC_DeviceEmployee definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_MC_DeviceEmployee; 
CREATE TABLE GM_MT_70.dbo.YQ_MC_DeviceEmployee ( ID int IDENTITY(1, 1) NOT NULL, MCID uniqueidentifier NULL, EmployeeID uniqueidentifier NULL, DownloadState int NULL, DownType int NULL, CommandID int NULL );
-- GM_MT_70.dbo.YQ_MC_DeviceInfo definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_MC_DeviceInfo; 
CREATE TABLE GM_MT_70.dbo.YQ_MC_DeviceInfo ( ID uniqueidentifier NULL, MCName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, IPAddress varchar(20) COLLATE Chinese_PRC_CI_AS NULL, LastOnlineTime datetime NULL, LastTransTime datetime NULL, DeviceTemplate uniqueidentifier NULL, DevicePurpose uniqueidentifier NULL, IsEnable int NULL, GroupName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, SwipeType uniqueidentifier NULL, SwipeMode varchar(200) COLLATE Chinese_PRC_CI_AS NULL, IsInheritance int NULL, CompanyID uniqueidentifier NULL, Operator uniqueidentifier NULL );
-- GM_MT_70.dbo.YQ_MC_DeviceTemplate definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_MC_DeviceTemplate; 
CREATE TABLE GM_MT_70.dbo.YQ_MC_DeviceTemplate ( ID uniqueidentifier NULL, FaceType varchar(10) COLLATE Chinese_PRC_CI_AS NULL, CardType varchar(10) COLLATE Chinese_PRC_CI_AS NULL, FingerType varchar(10) COLLATE Chinese_PRC_CI_AS NULL, IsEnable int NULL, DeviceType varchar(10) COLLATE Chinese_PRC_CI_AS NULL, TemplateName varchar(20) COLLATE Chinese_PRC_CI_AS NULL, ConnectType int NULL, DisplayOrder int NULL, ServerType int NULL );
-- GM_MT_70.dbo.YQ_MC_EmployeeFace definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_MC_EmployeeFace; 
CREATE TABLE GM_MT_70.dbo.YQ_MC_EmployeeFace ( EmployeeID uniqueidentifier NULL, ItemType varchar(50) COLLATE Chinese_PRC_CI_AS NULL, ItemIndex int NULL, ItemValue varchar(MAX) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_MC_EmployeeFinger definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_MC_EmployeeFinger; 
CREATE TABLE GM_MT_70.dbo.YQ_MC_EmployeeFinger ( EmployeeID uniqueidentifier NULL, ItemType varchar(50) COLLATE Chinese_PRC_CI_AS NULL, ItemIndex int NULL, ItemValue varchar(MAX) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_MC_EmployeeItem definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_MC_EmployeeItem; 
CREATE TABLE GM_MT_70.dbo.YQ_MC_EmployeeItem ( EmployeeID uniqueidentifier NULL, ItemType varchar(50) COLLATE Chinese_PRC_CI_AS NULL, ItemIndex int NULL, ItemValue varchar(100) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_MC_ZKWInfo definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_MC_ZKWInfo; 
CREATE TABLE GM_MT_70.dbo.YQ_MC_ZKWInfo ( ID uniqueidentifier NULL, SerialID varchar(50) COLLATE Chinese_PRC_CI_AS NULL, UploadingTime varchar(20) COLLATE Chinese_PRC_CI_AS NULL, TransInterval int NULL, TransTimeSpan varchar(20) COLLATE Chinese_PRC_CI_AS NULL, FirmwareVer varchar(20) COLLATE Chinese_PRC_CI_AS NULL, ProductCode varchar(20) COLLATE Chinese_PRC_CI_AS NULL, RecordsNum int NULL, UsersNum int NULL, FingerNum int NULL, FaceNum int NULL, RecordsMax int NULL, UsersMax int NULL );
-- GM_MT_70.dbo.YQ_PO_AdminPower definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_PO_AdminPower; 
CREATE TABLE GM_MT_70.dbo.YQ_PO_AdminPower ( AdminID uniqueidentifier NULL, PowerCode varchar(50) COLLATE Chinese_PRC_CI_AS NULL, PowerID uniqueidentifier NULL );
-- GM_MT_70.dbo.YQ_PO_CollectionMenu definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_PO_CollectionMenu; 
CREATE TABLE GM_MT_70.dbo.YQ_PO_CollectionMenu ( ID int IDENTITY(1, 1) NOT NULL, MenuID uniqueidentifier NULL, EmployeeID uniqueidentifier NULL, DisplayOrder int NULL );
-- GM_MT_70.dbo.YQ_PO_Menus definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_PO_Menus; 
CREATE TABLE GM_MT_70.dbo.YQ_PO_Menus ( MenuID uniqueidentifier NOT NULL, MenuCode varchar(50) COLLATE Chinese_PRC_CI_AS NOT NULL, MenuParent varchar(50) COLLATE Chinese_PRC_CI_AS NOT NULL, MenuName varchar(50) COLLATE Chinese_PRC_CI_AS NOT NULL, Icon varchar(150) COLLATE Chinese_PRC_CI_AS NOT NULL, FileName varchar(100) COLLATE Chinese_PRC_CI_AS NOT NULL, DisplayOrder int NOT NULL, IsVisible int NOT NULL, IsDelete int NOT NULL, MenuType int NULL );
-- GM_MT_70.dbo.YQ_PO_MobilePower definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_PO_MobilePower; 
CREATE TABLE GM_MT_70.dbo.YQ_PO_MobilePower ( PowerID uniqueidentifier NULL, PowerCode varchar(50) COLLATE Chinese_PRC_CI_AS NULL, PowerName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, PowerType int NULL, MenusPath varchar(200) COLLATE Chinese_PRC_CI_AS NULL, IsDelete int NULL, DisplayOrder int NULL, IsVisible int NULL, Icon varchar(100) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.YQ_PO_OperatorRole definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_PO_OperatorRole; 
CREATE TABLE GM_MT_70.dbo.YQ_PO_OperatorRole ( EmployeeID uniqueidentifier NOT NULL, RoleID uniqueidentifier NULL, DeptPower varchar(1000) COLLATE Chinese_PRC_CI_AS NOT NULL, ValidityPeriod varchar(50) COLLATE Chinese_PRC_CI_AS NULL, Operator uniqueidentifier NULL, FromEmployee uniqueidentifier NULL );
-- GM_MT_70.dbo.YQ_PO_Operators definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_PO_Operators; 
CREATE TABLE GM_MT_70.dbo.YQ_PO_Operators ( UserID uniqueidentifier NOT NULL, UserName varchar(50) COLLATE Chinese_PRC_CI_AS NOT NULL, UserPass varchar(100) COLLATE Chinese_PRC_CI_AS NOT NULL );
-- GM_MT_70.dbo.YQ_PO_PowerEmp definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_PO_PowerEmp; 
CREATE TABLE GM_MT_70.dbo.YQ_PO_PowerEmp ( PowerID uniqueidentifier NULL, EmpID uniqueidentifier NULL );
-- GM_MT_70.dbo.YQ_PO_PowerMenu definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_PO_PowerMenu; 
CREATE TABLE GM_MT_70.dbo.YQ_PO_PowerMenu ( PowerCode varchar(50) COLLATE Chinese_PRC_CI_AS NOT NULL, MenuCode varchar(50) COLLATE Chinese_PRC_CI_AS NOT NULL );
-- GM_MT_70.dbo.YQ_PO_Powers definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_PO_Powers; 
CREATE TABLE GM_MT_70.dbo.YQ_PO_Powers ( PowerID uniqueidentifier NULL, PowerCode varchar(50) COLLATE Chinese_PRC_CI_AS NULL, PowerParent varchar(50) COLLATE Chinese_PRC_CI_AS NULL, PowerName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, PowerType int NULL, IsDelete int NULL, DisplayOrder int NULL, IsVisible int NULL );
-- GM_MT_70.dbo.YQ_PO_RoleOperaDept definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_PO_RoleOperaDept; 
CREATE TABLE GM_MT_70.dbo.YQ_PO_RoleOperaDept ( RoleID uniqueidentifier NOT NULL, UserID uniqueidentifier NOT NULL, DeptID int NOT NULL, FromEmployee uniqueidentifier NULL );
-- GM_MT_70.dbo.YQ_PO_RolePower definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_PO_RolePower; 
CREATE TABLE GM_MT_70.dbo.YQ_PO_RolePower ( RoleID uniqueidentifier NULL, PowerCode varchar(50) COLLATE Chinese_PRC_CI_AS NULL, PowerID uniqueidentifier NULL );
-- GM_MT_70.dbo.YQ_PO_Roles definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_PO_Roles; 
CREATE TABLE GM_MT_70.dbo.YQ_PO_Roles ( RoleID uniqueidentifier NOT NULL, RoleName varchar(100) COLLATE Chinese_PRC_CI_AS NOT NULL, RoleDuty varchar(100) COLLATE Chinese_PRC_CI_AS NOT NULL, IsSystem int NOT NULL, IsDelete int NOT NULL, CompanyID uniqueidentifier NOT NULL, RoleType int NOT NULL, IsInheritance int NOT NULL, PostID uniqueidentifier NOT NULL, Operator uniqueidentifier NOT NULL );
-- GM_MT_70.dbo.YQ_TF_ApplyAbence definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TF_ApplyAbence; 
CREATE TABLE GM_MT_70.dbo.YQ_TF_ApplyAbence ( ID int IDENTITY(1, 1) NOT NULL, EmployeeID uniqueidentifier NULL, IOTime datetime NULL, Status int NULL, FormDataID uniqueidentifier NULL, CONSTRAINT PK_YQ_TF_ApplyAbence PRIMARY KEY (ID) );
-- GM_MT_70.dbo.YQ_TF_ApplyLeave definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TF_ApplyLeave; 
CREATE TABLE GM_MT_70.dbo.YQ_TF_ApplyLeave ( ID int IDENTITY(1, 1) NOT NULL, EmployeeID uniqueidentifier NULL, TypeID uniqueidentifier NULL, BeginTime datetime NULL, EndTime datetime NULL, TimeLong numeric(10, 2) NULL, Status int NULL, FormDataID uniqueidentifier NULL, CONSTRAINT PK_YQ_TF_ApplyLeave PRIMARY KEY (ID) );
-- GM_MT_70.dbo.YQ_TF_ApplyOT definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TF_ApplyOT; 
CREATE TABLE GM_MT_70.dbo.YQ_TF_ApplyOT ( ID int IDENTITY(1, 1) NOT NULL, EmployeeID uniqueidentifier NULL, TypeID uniqueidentifier NULL, BeginTime datetime NULL, EndTime datetime NULL, TimeLong numeric(10, 2) NULL, Status int NULL, FormDataID uniqueidentifier NULL, IsTurnToRest int NULL, TotalOTMode varchar(50) COLLATE Chinese_PRC_CI_AS NULL, AttendanceDataStr varchar(100) COLLATE Chinese_PRC_CI_AS NULL, CONSTRAINT PK_YQ_TF_ApplyOT PRIMARY KEY (ID) );
-- GM_MT_70.dbo.YQ_TF_Approver definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TF_Approver; 
CREATE TABLE GM_MT_70.dbo.YQ_TF_Approver ( Id int IDENTITY(1, 1) NOT NULL, NodeCode uniqueidentifier NULL, Approver uniqueidentifier NULL, ApproverType int NULL, CONSTRAINT PK_YQ_TF_Approver PRIMARY KEY (Id) );
-- GM_MT_70.dbo.YQ_TF_Attachment definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TF_Attachment; 
CREATE TABLE GM_MT_70.dbo.YQ_TF_Attachment ( Id int IDENTITY(1, 1) NOT NULL, AttachmentCode uniqueidentifier NULL, FormInstanceCode uniqueidentifier NULL, AttachmentName varchar(150) COLLATE Chinese_PRC_CI_AS NULL, Url varchar(500) COLLATE Chinese_PRC_CI_AS NULL, FileType int NULL, FileSize bigint NULL, CONSTRAINT PK_YQ_TF_Attachment PRIMARY KEY (Id) );
-- GM_MT_70.dbo.YQ_TF_AuditHistory definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TF_AuditHistory; 
CREATE TABLE GM_MT_70.dbo.YQ_TF_AuditHistory ( Id int IDENTITY(1, 1) NOT NULL, AuditHistoryCode uniqueidentifier NULL, Auditor uniqueidentifier NULL, NodeInstanceCode uniqueidentifier NULL, [Result] int NULL, Opinion varchar(1000) COLLATE Chinese_PRC_CI_AS NULL, CreateTime datetime NULL, AuditTime datetime NULL, Client uniqueidentifier NULL, CONSTRAINT PK_YQ_TF_AuditHistory PRIMARY KEY (Id) );
-- GM_MT_70.dbo.YQ_TF_Breastfeed definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TF_Breastfeed; 
CREATE TABLE GM_MT_70.dbo.YQ_TF_Breastfeed ( Id int IDENTITY(1, 1) NOT NULL, FormCode uniqueidentifier NULL, TypeCode uniqueidentifier NULL, Beneficiary uniqueidentifier NULL, Creator uniqueidentifier NULL, StateNum int NULL, CreateTime datetime NULL, StartTime datetime NULL, EndTime datetime NULL, Reason varchar(1000) COLLATE Chinese_PRC_CI_AS NULL, DateOfBirth datetime NULL, TimeSlot varchar(50) COLLATE Chinese_PRC_CI_AS NULL, CONSTRAINT PK_YQ_TF_Breastfeed PRIMARY KEY (Id) );
-- GM_MT_70.dbo.YQ_TF_BusinessTravel definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TF_BusinessTravel; 
CREATE TABLE GM_MT_70.dbo.YQ_TF_BusinessTravel ( Id int IDENTITY(1, 1) NOT NULL, FormCode uniqueidentifier NULL, TypeCode uniqueidentifier NULL, Beneficiary uniqueidentifier NULL, Creator uniqueidentifier NULL, StateNum int NULL, CreateTime datetime NULL, StartTime datetime NULL, EndTime datetime NULL, Reason varchar(1000) COLLATE Chinese_PRC_CI_AS NULL, Destination varchar(500) COLLATE Chinese_PRC_CI_AS NULL, TimeSlot varchar(50) COLLATE Chinese_PRC_CI_AS NULL, CONSTRAINT PK_YQ_TF_BusinessTravel PRIMARY KEY (Id) );
-- GM_MT_70.dbo.YQ_TF_CC definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TF_CC; 
CREATE TABLE GM_MT_70.dbo.YQ_TF_CC ( Id int IDENTITY(1, 1) NOT NULL, UserCode uniqueidentifier NULL, UserType int NULL, ProcessTemplateCode uniqueidentifier NULL, CONSTRAINT PK_YQ_TF_CC PRIMARY KEY (Id) );
-- GM_MT_70.dbo.YQ_TF_CheckIn definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TF_CheckIn; 
CREATE TABLE GM_MT_70.dbo.YQ_TF_CheckIn ( Id int IDENTITY(1, 1) NOT NULL, FormCode uniqueidentifier NULL, checkInType int NULL, CheckInTime datetime NULL, Creator uniqueidentifier NULL, Beneficiary uniqueidentifier NULL, TypeCode uniqueidentifier NULL, StateNum int NULL, ReasonTypeCode uniqueidentifier NULL, OtherReason varchar(1000) COLLATE Chinese_PRC_CI_AS NULL, CreateTime datetime NULL, CONSTRAINT PK_YQ_TF_CheckIn PRIMARY KEY (Id) );
-- GM_MT_70.dbo.YQ_TF_Entrust definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TF_Entrust; 
CREATE TABLE GM_MT_70.dbo.YQ_TF_Entrust ( Id int IDENTITY(1, 1) NOT NULL, EntrustCode uniqueidentifier NULL, Client uniqueidentifier NULL, Consignor uniqueidentifier NULL, StartTime datetime NULL, EndTime datetime NULL, StateNum int NULL, CreateTime datetime NULL, CONSTRAINT PK_YQ_TF_Entrust PRIMARY KEY (Id) );
-- GM_MT_70.dbo.YQ_TF_FamilyLeave definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TF_FamilyLeave; 
CREATE TABLE GM_MT_70.dbo.YQ_TF_FamilyLeave ( Id int IDENTITY(1, 1) NOT NULL, FormCode uniqueidentifier NULL, TypeCode uniqueidentifier NULL, Beneficiary uniqueidentifier NULL, Creator uniqueidentifier NULL, StateNum int NULL, CreateTime datetime NULL, StartTime datetime NULL, EndTime datetime NULL, Reason varchar(1000) COLLATE Chinese_PRC_CI_AS NULL, LivingCondition int NULL, Destination varchar(500) COLLATE Chinese_PRC_CI_AS NULL, MaritalStatus int NULL, TimeSlot varchar(50) COLLATE Chinese_PRC_CI_AS NULL, CONSTRAINT PK_YQ_TF_FamilyLeave PRIMARY KEY (Id) );
-- GM_MT_70.dbo.YQ_TF_FormInformation definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TF_FormInformation; 
CREATE TABLE GM_MT_70.dbo.YQ_TF_FormInformation ( Id int IDENTITY(1, 1) NOT NULL, FormInformationCode uniqueidentifier NULL, CustomCode varchar(10) COLLATE Chinese_PRC_CI_AS NULL, FormInformationName varchar(200) COLLATE Chinese_PRC_CI_AS NULL, FormTypeCode uniqueidentifier NULL, EditTime datetime NULL, StateNum int DEFAULT 0 NULL, IconUrl varchar(MAX) COLLATE Chinese_PRC_CI_AS NULL, CompanyId uniqueidentifier NULL, Inherit bit DEFAULT 0 NULL, FormTemplateCode uniqueidentifier NULL, StatisticalitemCode uniqueidentifier NULL, H5Icon varchar(MAX) COLLATE Chinese_PRC_CI_AS NULL, CONSTRAINT PK_YQ_TF_FormInformation PRIMARY KEY (Id) );
-- GM_MT_70.dbo.YQ_TF_FormInformationGroup definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TF_FormInformationGroup; 
CREATE TABLE GM_MT_70.dbo.YQ_TF_FormInformationGroup ( Id int IDENTITY(1, 1) NOT NULL, ProcessGroupCode uniqueidentifier NULL, FormInformationCode uniqueidentifier NULL, CONSTRAINT PK_YQ_TF_FormInformationGroup PRIMARY KEY (Id) );
-- GM_MT_70.dbo.YQ_TF_FormInformation_Power definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TF_FormInformation_Power; 
CREATE TABLE GM_MT_70.dbo.YQ_TF_FormInformation_Power ( ID int IDENTITY(1, 1) NOT NULL, FormInformationCode uniqueidentifier NULL, PowerType int NULL, PowerCode uniqueidentifier NULL, InOrNot int NULL, CONSTRAINT PK_YQ_TF_FormInformation_Power PRIMARY KEY (ID) );
-- GM_MT_70.dbo.YQ_TF_FormInstance definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TF_FormInstance; 
CREATE TABLE GM_MT_70.dbo.YQ_TF_FormInstance ( Id int IDENTITY(1, 1) NOT NULL, FormInstanceCode uniqueidentifier NULL, FormInformationCode uniqueidentifier NULL, Beneficiary uniqueidentifier NULL, SubmitTime datetime NULL, StateNum int NULL, Creator uniqueidentifier NULL, FormTypeNum int DEFAULT 0 NULL, ExceptionNum int DEFAULT 0 NULL, Remark varchar(MAX) COLLATE Chinese_PRC_CI_AS NULL, FreezingDate date DEFAULT '1990-01-01' NOT NULL, RemarkEN varchar(MAX) COLLATE Chinese_PRC_CI_AS NULL, ApplyID varchar(100) COLLATE Chinese_PRC_CI_AS NULL, CONSTRAINT PK_YQ_TF_FormInstance PRIMARY KEY (Id) );
-- GM_MT_70.dbo.YQ_TF_FormInstanceC definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TF_FormInstanceC; 
CREATE TABLE GM_MT_70.dbo.YQ_TF_FormInstanceC ( Id int IDENTITY(1, 1) NOT NULL, FormInstanceCode uniqueidentifier NULL, CopyPerson uniqueidentifier NULL, IsRead int DEFAULT 0 NULL, CreateTime datetime NULL, CONSTRAINT PK_YQ_TF_FormInstanceC PRIMARY KEY (Id) );
-- GM_MT_70.dbo.YQ_TF_FormInstance_Beneficiary definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TF_FormInstance_Beneficiary; 
CREATE TABLE GM_MT_70.dbo.YQ_TF_FormInstance_Beneficiary ( Id int IDENTITY(1, 1) NOT NULL, FormInstanceCode uniqueidentifier NULL, Beneficiary uniqueidentifier NULL, CONSTRAINT PK_YQ_TF_FormInstance_Beneficiary PRIMARY KEY (Id) );
-- GM_MT_70.dbo.YQ_TF_FormTemplate definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TF_FormTemplate; 
CREATE TABLE GM_MT_70.dbo.YQ_TF_FormTemplate ( Id int IDENTITY(1, 1) NOT NULL, FormTemplateCode uniqueidentifier NULL, FormTemplateName varchar(100) COLLATE Chinese_PRC_CI_AS NULL, CreateTime datetime NULL, ConditionTemplate text COLLATE Chinese_PRC_CI_AS NULL, AddViewUrl varchar(1000) COLLATE Chinese_PRC_CI_AS NULL, ListViewUrl varchar(1000) COLLATE Chinese_PRC_CI_AS NULL, DetialsViewUrl varchar(1000) COLLATE Chinese_PRC_CI_AS NULL, UpdateSpecialFiledUrl varchar(1000) COLLATE Chinese_PRC_CI_AS NULL, RemarkTemplate varchar(MAX) COLLATE Chinese_PRC_CI_AS NULL, RemarkTemplateEN varchar(MAX) COLLATE Chinese_PRC_CI_AS NULL, CONSTRAINT PK_YQ_TF_FormTemplate PRIMARY KEY (Id) );
-- GM_MT_70.dbo.YQ_TF_FormType definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TF_FormType; 
CREATE TABLE GM_MT_70.dbo.YQ_TF_FormType ( Id int IDENTITY(1, 1) NOT NULL, FormTypeCode uniqueidentifier NULL, FormTypeName varchar(100) COLLATE Chinese_PRC_CI_AS NULL, CreateTime datetime NULL, IsDisconnected bit NULL, CONSTRAINT PK_YQ_TF_FormType PRIMARY KEY (Id) );
-- GM_MT_70.dbo.YQ_TF_GeneralLeaveForm definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TF_GeneralLeaveForm; 
CREATE TABLE GM_MT_70.dbo.YQ_TF_GeneralLeaveForm ( Id int IDENTITY(1, 1) NOT NULL, FormCode uniqueidentifier NULL, TypeCode uniqueidentifier NULL, Beneficiary uniqueidentifier NULL, Creator uniqueidentifier NULL, StateNum int NULL, CreateTime datetime NULL, StartTime datetime NULL, EndTime datetime NULL, Reason varchar(1000) COLLATE Chinese_PRC_CI_AS NULL, TimeSlot varchar(50) COLLATE Chinese_PRC_CI_AS NULL, CONSTRAINT PK_YQ_TF_GeneralLeaveForm PRIMARY KEY (Id) );
-- GM_MT_70.dbo.YQ_TF_Lactation definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TF_Lactation; 
CREATE TABLE GM_MT_70.dbo.YQ_TF_Lactation ( Id int IDENTITY(1, 1) NOT NULL, FormCode uniqueidentifier NULL, TypeCode uniqueidentifier NULL, Beneficiary uniqueidentifier NULL, Creator uniqueidentifier NULL, StateNum int NULL, CreateTime datetime NULL, StartTime datetime NULL, EndTime datetime NULL, Reason varchar(1000) COLLATE Chinese_PRC_CI_AS NULL, DailyForLong varchar(50) COLLATE Chinese_PRC_CI_AS NULL, TimeSlot varchar(50) COLLATE Chinese_PRC_CI_AS NULL, CONSTRAINT PK_YQ_TF_Lactation PRIMARY KEY (Id) );
-- GM_MT_70.dbo.YQ_TF_MarryingLeave definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TF_MarryingLeave; 
CREATE TABLE GM_MT_70.dbo.YQ_TF_MarryingLeave ( Id int IDENTITY(1, 1) NOT NULL, FormCode uniqueidentifier NULL, TypeCode uniqueidentifier NULL, Beneficiary uniqueidentifier NULL, Creator uniqueidentifier NULL, StateNum int NULL, CreateTime datetime NULL, StartTime datetime NULL, EndTime datetime NULL, Reason varchar(1000) COLLATE Chinese_PRC_CI_AS NULL, RecordDate datetime NULL, MateID varchar(50) COLLATE Chinese_PRC_CI_AS NULL, TimeSlot varchar(50) COLLATE Chinese_PRC_CI_AS NULL, CONSTRAINT PK_YQ_TF_MarryingLeave PRIMARY KEY (Id) );
-- GM_MT_70.dbo.YQ_TF_NodeInstance definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TF_NodeInstance; 
CREATE TABLE GM_MT_70.dbo.YQ_TF_NodeInstance ( Id int IDENTITY(1, 1) NOT NULL, NodeInstanceName varchar(200) COLLATE Chinese_PRC_CI_AS NULL, NodeInstanceCode uniqueidentifier NULL, NodeCode uniqueidentifier NULL, ProcessInstanceCode uniqueidentifier NULL, StateNum int NULL, CreateTime datetime NULL, EndTime datetime NULL, CONSTRAINT PK_YQ_TF_NodeInstance PRIMARY KEY (Id) );
-- GM_MT_70.dbo.YQ_TF_OverTime definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TF_OverTime; 
CREATE TABLE GM_MT_70.dbo.YQ_TF_OverTime ( Id int IDENTITY(1, 1) NOT NULL, FormCode uniqueidentifier NULL, TypeCode uniqueidentifier NULL, Beneficiary uniqueidentifier NULL, Creator uniqueidentifier NULL, StateNum int NULL, CreateTime datetime NULL, StartTime datetime NULL, EndTime datetime NULL, OvertimeHours varchar(50) COLLATE Chinese_PRC_CI_AS NULL, AnalysisType int NULL, CardData text COLLATE Chinese_PRC_CI_AS NULL, Reason varchar(1000) COLLATE Chinese_PRC_CI_AS NULL, CONSTRAINT PK_YQ_TF_OverTime PRIMARY KEY (Id) );
-- GM_MT_70.dbo.YQ_TF_Parameters definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TF_Parameters; 
CREATE TABLE GM_MT_70.dbo.YQ_TF_Parameters ( Id int IDENTITY(1, 1) NOT NULL, Code uniqueidentifier NULL, Name varchar(200) COLLATE Chinese_PRC_CI_AS NULL, ParentCode uniqueidentifier NULL, OrderNum int NULL, CONSTRAINT PK_YQ_TF_Parameters PRIMARY KEY (Id) );
-- GM_MT_70.dbo.YQ_TF_Pending definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TF_Pending; 
CREATE TABLE GM_MT_70.dbo.YQ_TF_Pending ( Id int IDENTITY(1, 1) NOT NULL, PendingCode uniqueidentifier NULL, NodeInstanceCode uniqueidentifier NULL, CreateTime datetime NULL, RemindContent varchar(2000) COLLATE Chinese_PRC_CI_AS NULL, RemindPerson uniqueidentifier NULL, Client uniqueidentifier NULL, IsAssign int DEFAULT 0 NOT NULL, CONSTRAINT PK_YQ_TF_Pending PRIMARY KEY (Id) );
-- GM_MT_70.dbo.YQ_TF_ProcessCondition definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TF_ProcessCondition; 
CREATE TABLE GM_MT_70.dbo.YQ_TF_ProcessCondition ( Id int IDENTITY(1, 1) NOT NULL, ConditionCode uniqueidentifier NULL, Priority int NULL, ProcessGroupCode uniqueidentifier NULL, ProcessTemplateCode uniqueidentifier NULL, ConditionContent text COLLATE Chinese_PRC_CI_AS NULL, CONSTRAINT PK_YQ_TF_ProcessCondition PRIMARY KEY (Id) );
-- GM_MT_70.dbo.YQ_TF_ProcessGroup definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TF_ProcessGroup; 
CREATE TABLE GM_MT_70.dbo.YQ_TF_ProcessGroup ( Id int IDENTITY(1, 1) NOT NULL, ProcessGroupCode uniqueidentifier NULL, ProcessGroupName varchar(150) COLLATE Chinese_PRC_CI_AS NULL, CompanyId uniqueidentifier NULL, Inherit bit DEFAULT 0 NULL, AuditCategory int NULL, DefaultProcessTemplateCode uniqueidentifier NULL, CCType int NULL, ProcessDescribe varchar(100) COLLATE Chinese_PRC_CI_AS NULL, CONSTRAINT PK_YQ_TF_ProcessGroup PRIMARY KEY (Id) );
-- GM_MT_70.dbo.YQ_TF_ProcessInstance definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TF_ProcessInstance; 
CREATE TABLE GM_MT_70.dbo.YQ_TF_ProcessInstance ( Id int IDENTITY(1, 1) NOT NULL, ProcessInstanceCode uniqueidentifier NULL, InstanceName varchar(200) COLLATE Chinese_PRC_CI_AS NULL, ProcessTemplateCode uniqueidentifier NULL, FormInstanceCode uniqueidentifier NULL, CreateTime datetime NULL, StateNum int NULL, Creator uniqueidentifier NULL, CONSTRAINT PK_ProcessInstance PRIMARY KEY (Id) );
-- GM_MT_70.dbo.YQ_TF_ProcessTemplate definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TF_ProcessTemplate; 
CREATE TABLE GM_MT_70.dbo.YQ_TF_ProcessTemplate ( Id int IDENTITY(1, 1) NOT NULL, ProcessTemplateCode uniqueidentifier NULL, CONSTRAINT PK_YQ_TF_ProcessTemplate PRIMARY KEY (Id) );
-- GM_MT_70.dbo.YQ_TF_ProcessTemplateNode definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TF_ProcessTemplateNode; 
CREATE TABLE GM_MT_70.dbo.YQ_TF_ProcessTemplateNode ( Id int IDENTITY(1, 1) NOT NULL, NodeCode uniqueidentifier NULL, ProcessTemplateCode uniqueidentifier NULL, NodeLevel int NULL, NodeName varchar(150) COLLATE Chinese_PRC_CI_AS NULL, ApprovalMethod int NULL, ApprovalCondition text COLLATE Chinese_PRC_CI_AS NULL, IsAssign int DEFAULT 0 NOT NULL, CONSTRAINT PK_YQ_TF_ProcessTemplateNode PRIMARY KEY (Id) );
-- GM_MT_70.dbo.YQ_TF_SickLeave definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TF_SickLeave; 
CREATE TABLE GM_MT_70.dbo.YQ_TF_SickLeave ( Id int IDENTITY(1, 1) NOT NULL, FormCode uniqueidentifier NULL, TypeCode uniqueidentifier NULL, Beneficiary uniqueidentifier NULL, Creator uniqueidentifier NULL, StateNum int NULL, CreateTime datetime NULL, StartTime datetime NULL, EndTime datetime NULL, Reason varchar(1000) COLLATE Chinese_PRC_CI_AS NULL, Hospital varchar(500) COLLATE Chinese_PRC_CI_AS NULL, Diagnosis varchar(2000) COLLATE Chinese_PRC_CI_AS NULL, TimeSlot varchar(50) COLLATE Chinese_PRC_CI_AS NULL, CONSTRAINT PK_YQ_TF_SickLeave PRIMARY KEY (Id) );
-- GM_MT_70.dbo.YQ_TY_Shift definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TY_Shift; 
CREATE TABLE GM_MT_70.dbo.YQ_TY_Shift ( Id int IDENTITY(1, 1) NOT NULL, FormCode uniqueidentifier NULL, TypeCode uniqueidentifier NULL, Beneficiary uniqueidentifier NULL, Creator uniqueidentifier NULL, StateNum int NULL, CreateTime datetime NULL, ClassTransferTime datetime NULL, AdjustedShift varchar(500) COLLATE Chinese_PRC_CI_AS NULL, AdjustedFlight varchar(500) COLLATE Chinese_PRC_CI_AS NULL, Reason varchar(1000) COLLATE Chinese_PRC_CI_AS NULL, AdjustedShiftCode uniqueidentifier NULL, AdjustedFlightCode uniqueidentifier NULL, CONSTRAINT PK_YQ_TY_Shift PRIMARY KEY (Id) );
-- GM_MT_70.dbo.YQ_TY_ShiftDuty definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TY_ShiftDuty; 
CREATE TABLE GM_MT_70.dbo.YQ_TY_ShiftDuty ( Id int IDENTITY(1, 1) NOT NULL, FormCode uniqueidentifier NULL, TypeCode uniqueidentifier NULL, Beneficiary uniqueidentifier NULL, Creator uniqueidentifier NULL, StateNum int NULL, CreateTime datetime NULL, ShiftTime datetime NULL, ShiftOfficer uniqueidentifier NULL, Reason varchar(1000) COLLATE Chinese_PRC_CI_AS NULL, BeneficiaryShifts varchar(200) COLLATE Chinese_PRC_CI_AS NULL, ShiftOfficerShifts varchar(200) COLLATE Chinese_PRC_CI_AS NULL, BeneficiaryShiftsCode uniqueidentifier NULL, ShiftOfficerShiftsCode uniqueidentifier NULL, CONSTRAINT PK_YQ_TY_ShiftDuty PRIMARY KEY (Id) );
-- GM_MT_70.dbo.YQ_TY_TongBuDing definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.YQ_TY_TongBuDing; 
CREATE TABLE GM_MT_70.dbo.YQ_TY_TongBuDing ( TypeID uniqueidentifier NULL, TypeStatus int NULL, TypeCode varchar(50) COLLATE Chinese_PRC_CI_AS NULL, ProcessCode varchar(50) COLLATE Chinese_PRC_CI_AS NULL, ProcessName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, FormID uniqueidentifier NULL, FormType int NULL );
-- GM_MT_70.dbo.sheet1 definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.sheet1; 
CREATE TABLE GM_MT_70.dbo.sheet1 ( EmployeeID varchar(20) COLLATE Chinese_PRC_CI_AS NULL, EmployeeName varchar(50) COLLATE Chinese_PRC_CI_AS NULL, EmployDateStart date NULL );
-- GM_MT_70.dbo.在职人员$ definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.在职人员$; 
CREATE TABLE GM_MT_70.dbo.在职人员$ ( 员工编码 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 员工姓名 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 所属公司 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 所属部门 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 职位 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 用工关系状态 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 入职日期 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 性别 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 所属行政组织编码 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 身份证号码 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 参加工作日期 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 实际转正日期 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 离职日期 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 电子邮件工作 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 职种 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 职群 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 职类 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 年龄 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 婚姻状况 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 职层 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.离职人员$ definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.离职人员$; 
CREATE TABLE GM_MT_70.dbo.离职人员$ ( 员工编码 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 员工姓名 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 所属公司 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 所属部门 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 职位 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 用工关系状态 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 入职日期 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 性别 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 所属行政组织编码 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 身份证号码 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 参加工作日期 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 实际转正日期 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 离职日期 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 电子邮件工作 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 职种 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 职群 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 职类 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 年龄 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 婚姻状况 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 职层 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.行政组织维护$ definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.行政组织维护$; 
CREATE TABLE GM_MT_70.dbo.行政组织维护$ ( 行政组织编码 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 行政组织名称 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 行政组织长名称 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 上级行政组织编码 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 上级行政组织名称 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 状态 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL );
-- GM_MT_70.dbo.行政组织维护20210831$ definition 
-- Drop TABLE 
-- DROP TABLE GM_MT_70.dbo.行政组织维护20210831$; 
CREATE TABLE GM_MT_70.dbo.行政组织维护20210831$ ( 行政组织编码 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 行政组织名称 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 行政组织长名称 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 上级行政组织编码 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 上级行政组织名称 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 上级行政组织长名称 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL, 是否封存 nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL );
-- dbo.V_YQ_KQ_DeptChange source
-- dbo.V_YQ_KQ_DeptChangeEng source 
-- dbo.V_YQ_KQ_EmployeeInfoEng source 
-- dbo.V_YQ_KQ_EmployeeLactation source 
-- dbo.V_YQ_KQ_EmployeeLactationEng source 
-- dbo.V_YQ_KQ_EmployeeSearch source
-- dbo.V_YQ_KQ_EmployeeSearchA source
-- dbo.V_YQ_KQ_EmployeeSearchEng source 
-- dbo.V_YQ_KQ_EmployeeXcxTongbu source
-- dbo.V_YQ_KQ_MeritsStatic source
-- dbo.V_YQ_MC_DeviceEmployee source 
-- dbo.V_YQ_MC_DeviceEmployeeEng source 
-- dbo.V_YQ_MC_ZKWInfo source 
-- dbo.V_YQ_MC_ZKWInfoEng source 
-- dbo.V_YQ_TF_ApplyAbence source
-- dbo.V_YQ_TF_ApplyAbenceEN source
-- dbo.V_YQ_TF_ApplyAbenceQuit source
-- dbo.V_YQ_TF_ApplyLeave source
-- dbo.V_YQ_TF_ApplyLeaveEN source
-- dbo.V_YQ_TF_ApplyLeaveQuit source
-- dbo.V_YQ_TF_ApplyOT source
-- dbo.V_YQ_TF_ApplyOTEN source
-- dbo.V_YQ_TF_ApplyOTQuit source
-- dbo.V_YQ_TF_AuditHistory source
-- dbo.V_YQ_TF_AuditHistoryEN source
-- dbo.V_YQ_TF_Entrust source
-- dbo.V_YQ_TF_EntrustEN source
-- dbo.V_YQ_TF_FormInstance source
-- dbo.V_YQ_TF_FormInstanceC source
-- dbo.V_YQ_TF_FormInstanceCEN source
-- dbo.V_YQ_TF_FormInstanceEN source 
-- dbo.V_YQ_TF_Pending source
-- dbo.V_YQ_TF_PendingEN source 

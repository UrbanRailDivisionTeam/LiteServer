USE ReportServer;

CREATE TABLE ReportServer.dbo.Batch ( BatchID uniqueidentifier NOT NULL, AddedOn datetime NOT NULL, [Action] varchar(32) COLLATE Latin1_General_100_CI_AS_KS_WS NOT NULL, Item nvarchar(425) COLLATE Latin1_General_100_CI_AS_KS_WS NULL, Parent nvarchar(425) COLLATE Latin1_General_100_CI_AS_KS_WS NULL, Param nvarchar(425) COLLATE Latin1_General_100_CI_AS_KS_WS NULL, BoolParam bit NULL, Content image NULL, Properties ntext COLLATE Latin1_General_100_CI_AS_KS_WS NULL );

CREATE TABLE ReportServer.dbo.ChunkData ( ChunkID uniqueidentifier NOT NULL, SnapshotDataID uniqueidentifier NOT NULL, ChunkFlags tinyint NULL, ChunkName nvarchar(260) COLLATE Latin1_General_100_CI_AS_KS_WS NULL, ChunkType int NULL, Version smallint NULL, MimeType nvarchar(260) COLLATE Latin1_General_100_CI_AS_KS_WS NULL, Content image NULL, CONSTRAINT PK_ChunkData PRIMARY KEY (ChunkID) );

CREATE TABLE ReportServer.dbo.ChunkSegmentMapping ( ChunkId uniqueidentifier NOT NULL, SegmentId uniqueidentifier NOT NULL, StartByte bigint NOT NULL, LogicalByteCount int NOT NULL, ActualByteCount int NOT NULL, CONSTRAINT PK_ChunkSegmentMapping PRIMARY KEY (ChunkId, SegmentId) );

CREATE TABLE ReportServer.dbo.ConfigurationInfo ( ConfigInfoID uniqueidentifier NOT NULL, Name nvarchar(260) COLLATE Latin1_General_100_CI_AS_KS_WS NOT NULL, Value ntext COLLATE Latin1_General_100_CI_AS_KS_WS NOT NULL, CONSTRAINT PK_ConfigurationInfo PRIMARY KEY (ConfigInfoID) );

CREATE TABLE ReportServer.dbo.DBUpgradeHistory ( UpgradeID bigint IDENTITY(1, 1) NOT NULL, DbVersion nvarchar(25) COLLATE Latin1_General_100_CI_AS_KS_WS NULL, [User] nvarchar(128) COLLATE Latin1_General_100_CI_AS_KS_WS DEFAULT suser_sname() NULL, [DateTime] datetime DEFAULT getdate() NULL, CONSTRAINT PK_DBUpgradeHistory PRIMARY KEY (UpgradeID) );

CREATE TABLE ReportServer.dbo.Event ( EventID uniqueidentifier NOT NULL, EventType nvarchar(260) COLLATE Latin1_General_100_CI_AS_KS_WS NOT NULL, EventData nvarchar(260) COLLATE Latin1_General_100_CI_AS_KS_WS NULL, TimeEntered datetime NOT NULL, ProcessStart datetime NULL, ProcessHeartbeat datetime NULL, BatchID uniqueidentifier NULL, CONSTRAINT PK_Event PRIMARY KEY (EventID) );

CREATE TABLE ReportServer.dbo.ExecutionLogStorage ( LogEntryId bigint IDENTITY(1, 1) NOT NULL, InstanceName nvarchar(38) COLLATE Latin1_General_100_CI_AS_KS_WS NOT NULL, ReportID uniqueidentifier NULL, UserName nvarchar(260) COLLATE Latin1_General_100_CI_AS_KS_WS NULL, ExecutionId nvarchar(64) COLLATE Latin1_General_100_CI_AS_KS_WS NULL, RequestType tinyint NOT NULL, Format nvarchar(26) COLLATE Latin1_General_100_CI_AS_KS_WS NULL, Parameters ntext COLLATE Latin1_General_100_CI_AS_KS_WS NULL, ReportAction tinyint NULL, TimeStart datetime NOT NULL, TimeEnd datetime NOT NULL, TimeDataRetrieval int NOT NULL, TimeProcessing int NOT NULL, TimeRendering int NOT NULL, [Source] tinyint NOT NULL, Status nvarchar(40) COLLATE Latin1_General_100_CI_AS_KS_WS NOT NULL, ByteCount bigint NOT NULL, [RowCount] bigint NOT NULL, AdditionalInfo xml NULL, CONSTRAINT PK__Executio__05F5D74553940D5E PRIMARY KEY (LogEntryId) );

CREATE TABLE ReportServer.dbo.History ( HistoryID uniqueidentifier NOT NULL, ReportID uniqueidentifier NOT NULL, SnapshotDataID uniqueidentifier NOT NULL, SnapshotDate datetime NOT NULL, CONSTRAINT PK_History PRIMARY KEY (HistoryID) );

CREATE TABLE ReportServer.dbo.Keys ( MachineName nvarchar(256) COLLATE Latin1_General_100_CI_AS_KS_WS NULL, InstallationID uniqueidentifier NOT NULL, InstanceName nvarchar(32) COLLATE Latin1_General_100_CI_AS_KS_WS NULL, Client int NOT NULL, PublicKey image NULL, SymmetricKey image NULL, CONSTRAINT PK_Keys PRIMARY KEY (InstallationID, Client) );

CREATE TABLE ReportServer.dbo.Policies ( PolicyID uniqueidentifier NOT NULL, PolicyFlag tinyint NULL, CONSTRAINT PK_Policies PRIMARY KEY (PolicyID) );

CREATE TABLE ReportServer.dbo.Roles ( RoleID uniqueidentifier NOT NULL, RoleName nvarchar(260) COLLATE Latin1_General_100_CI_AS_KS_WS NOT NULL, Description nvarchar(512) COLLATE Latin1_General_100_CI_AS_KS_WS NULL, TaskMask nvarchar(32) COLLATE Latin1_General_100_CI_AS_KS_WS NOT NULL, RoleFlags tinyint NOT NULL, CONSTRAINT PK_Roles PRIMARY KEY (RoleID) );

CREATE TABLE ReportServer.dbo.RunningJobs ( JobID nvarchar(32) COLLATE Latin1_General_100_CI_AS_KS_WS NOT NULL, StartDate datetime NOT NULL, ComputerName nvarchar(32) COLLATE Latin1_General_100_CI_AS_KS_WS NOT NULL, RequestName nvarchar(425) COLLATE Latin1_General_100_CI_AS_KS_WS NOT NULL, RequestPath nvarchar(425) COLLATE Latin1_General_100_CI_AS_KS_WS NOT NULL, UserId uniqueidentifier NOT NULL, Description ntext COLLATE Latin1_General_100_CI_AS_KS_WS NULL, Timeout int NOT NULL, JobAction smallint NOT NULL, JobType smallint NOT NULL, JobStatus smallint NOT NULL, CONSTRAINT PK_RunningJobs PRIMARY KEY (JobID) );

CREATE TABLE ReportServer.dbo.Segment ( SegmentId uniqueidentifier DEFAULT newsequentialid() NOT NULL, Content varbinary(MAX) NULL, CONSTRAINT PK_Segment PRIMARY KEY (SegmentId) );

CREATE TABLE ReportServer.dbo.SegmentedChunk ( ChunkId uniqueidentifier DEFAULT newsequentialid() NOT NULL, SnapshotDataId uniqueidentifier NOT NULL, ChunkFlags tinyint NOT NULL, ChunkName nvarchar(260) COLLATE Latin1_General_100_CI_AS_KS_WS NOT NULL, ChunkType int NOT NULL, Version smallint NOT NULL, MimeType nvarchar(260) COLLATE Latin1_General_100_CI_AS_KS_WS NULL, SegmentedChunkId bigint IDENTITY(1, 1) NOT NULL, CONSTRAINT PK_SegmentedChunk PRIMARY KEY (SegmentedChunkId) );

CREATE TABLE ReportServer.dbo.ServerParametersInstance ( ServerParametersID nvarchar(32) COLLATE Latin1_General_100_CI_AS_KS_WS NOT NULL, ParentID nvarchar(32) COLLATE Latin1_General_100_CI_AS_KS_WS NULL, [Path] nvarchar(425) COLLATE Latin1_General_100_CI_AS_KS_WS NOT NULL, CreateDate datetime NOT NULL, ModifiedDate datetime NOT NULL, Timeout int NOT NULL, Expiration datetime NOT NULL, ParametersValues image NOT NULL, CONSTRAINT PK_ServerParametersInstance PRIMARY KEY (ServerParametersID) );

CREATE TABLE ReportServer.dbo.ServerUpgradeHistory ( UpgradeID bigint IDENTITY(1, 1) NOT NULL, ServerVersion nvarchar(25) COLLATE Latin1_General_100_CI_AS_KS_WS NULL, [User] nvarchar(128) COLLATE Latin1_General_100_CI_AS_KS_WS DEFAULT suser_sname() NULL, [DateTime] datetime DEFAULT getdate() NULL, CONSTRAINT PK_ServerUpgradeHistory PRIMARY KEY (UpgradeID) );

CREATE TABLE ReportServer.dbo.SnapshotData ( SnapshotDataID uniqueidentifier NOT NULL, CreatedDate datetime NOT NULL, ParamsHash int NULL, QueryParams ntext COLLATE Latin1_General_100_CI_AS_KS_WS NULL, EffectiveParams ntext COLLATE Latin1_General_100_CI_AS_KS_WS NULL, Description nvarchar(512) COLLATE Latin1_General_100_CI_AS_KS_WS NULL, DependsOnUser bit NULL, PermanentRefcount int NOT NULL, TransientRefcount int NOT NULL, ExpirationDate datetime NOT NULL, PageCount int NULL, HasDocMap bit NULL, PaginationMode smallint NULL, ProcessingFlags int NULL, CONSTRAINT PK_SnapshotData PRIMARY KEY (SnapshotDataID) );

CREATE TABLE ReportServer.dbo.SubscriptionsBeingDeleted ( SubscriptionID uniqueidentifier NOT NULL, CreationDate datetime NOT NULL, CONSTRAINT PK_SubscriptionsBeingDeleted PRIMARY KEY (SubscriptionID) );

CREATE TABLE ReportServer.dbo.UpgradeInfo ( Item nvarchar(260) COLLATE Latin1_General_100_CI_AS_KS_WS NOT NULL, Status nvarchar(512) COLLATE Latin1_General_100_CI_AS_KS_WS NULL, CONSTRAINT PK_UpgradeInfo PRIMARY KEY (Item) );

CREATE TABLE ReportServer.dbo.Users ( UserID uniqueidentifier NOT NULL, Sid varbinary(85) NULL, UserType int NOT NULL, AuthType int NOT NULL, UserName nvarchar(260) COLLATE Latin1_General_100_CI_AS_KS_WS NULL, ServiceToken ntext COLLATE Latin1_General_100_CI_AS_KS_WS NULL, Setting ntext COLLATE Latin1_General_100_CI_AS_KS_WS NULL, CONSTRAINT PK_Users PRIMARY KEY (UserID) );

CREATE TABLE ReportServer.dbo.[Catalog] ( ItemID uniqueidentifier NOT NULL, [Path] nvarchar(425) COLLATE Latin1_General_100_CI_AS_KS_WS NOT NULL, Name nvarchar(425) COLLATE Latin1_General_100_CI_AS_KS_WS NOT NULL, ParentID uniqueidentifier NULL, [Type] int NOT NULL, Content image NULL, Intermediate uniqueidentifier NULL, SnapshotDataID uniqueidentifier NULL, LinkSourceID uniqueidentifier NULL, Property ntext COLLATE Latin1_General_100_CI_AS_KS_WS NULL, Description nvarchar(512) COLLATE Latin1_General_100_CI_AS_KS_WS NULL, Hidden bit NULL, CreatedByID uniqueidentifier NOT NULL, CreationDate datetime NOT NULL, ModifiedByID uniqueidentifier NOT NULL, ModifiedDate datetime NOT NULL, MimeType nvarchar(260) COLLATE Latin1_General_100_CI_AS_KS_WS NULL, SnapshotLimit int NULL, [Parameter] ntext COLLATE Latin1_General_100_CI_AS_KS_WS NULL, PolicyID uniqueidentifier NOT NULL, PolicyRoot bit NOT NULL, ExecutionFlag int NOT NULL, ExecutionTime datetime NULL, SubType nvarchar(128) COLLATE Latin1_General_100_CI_AS_KS_WS NULL, ComponentID uniqueidentifier NULL, CONSTRAINT PK_Catalog PRIMARY KEY (ItemID), CONSTRAINT FK_Catalog_CreatedByID FOREIGN KEY (CreatedByID) REFERENCES ReportServer.dbo.Users(UserID), CONSTRAINT FK_Catalog_LinkSourceID FOREIGN KEY (LinkSourceID) REFERENCES ReportServer.dbo.[Catalog](ItemID), CONSTRAINT FK_Catalog_ModifiedByID FOREIGN KEY (ModifiedByID) REFERENCES ReportServer.dbo.Users(UserID), CONSTRAINT FK_Catalog_ParentID FOREIGN KEY (ParentID) REFERENCES ReportServer.dbo.[Catalog](ItemID), CONSTRAINT FK_Catalog_Policy FOREIGN KEY (PolicyID) REFERENCES ReportServer.dbo.Policies(PolicyID) );

CREATE TABLE ReportServer.dbo.DataSets ( ID uniqueidentifier NOT NULL, ItemID uniqueidentifier NOT NULL, LinkID uniqueidentifier NULL, Name nvarchar(260) COLLATE Latin1_General_100_CI_AS_KS_WS NOT NULL, CONSTRAINT PK_DataSet PRIMARY KEY (ID), CONSTRAINT FK_DataSetItemID FOREIGN KEY (ItemID) REFERENCES ReportServer.dbo.[Catalog](ItemID), CONSTRAINT FK_DataSetLinkID FOREIGN KEY (LinkID) REFERENCES ReportServer.dbo.[Catalog](ItemID) );

CREATE TABLE ReportServer.dbo.DataSource ( DSID uniqueidentifier NOT NULL, ItemID uniqueidentifier NULL, SubscriptionID uniqueidentifier NULL, Name nvarchar(260) COLLATE Latin1_General_100_CI_AS_KS_WS NULL, Extension nvarchar(260) COLLATE Latin1_General_100_CI_AS_KS_WS NULL, Link uniqueidentifier NULL, CredentialRetrieval int NULL, Prompt ntext COLLATE Latin1_General_100_CI_AS_KS_WS NULL, ConnectionString image NULL, OriginalConnectionString image NULL, OriginalConnectStringExpressionBased bit NULL, UserName image NULL, Password image NULL, Flags int NULL, Version int NOT NULL, CONSTRAINT PK_DataSource PRIMARY KEY (DSID), CONSTRAINT FK_DataSourceItemID FOREIGN KEY (ItemID) REFERENCES ReportServer.dbo.[Catalog](ItemID) );

CREATE TABLE ReportServer.dbo.Favorites ( ItemID uniqueidentifier NOT NULL, UserID uniqueidentifier NOT NULL, CONSTRAINT PK_Favorites PRIMARY KEY (ItemID, UserID), CONSTRAINT FK_Favorites_Catalog FOREIGN KEY (ItemID) REFERENCES ReportServer.dbo.[Catalog](ItemID), CONSTRAINT FK_Favorites_Users FOREIGN KEY (UserID) REFERENCES ReportServer.dbo.Users(UserID) );

CREATE TABLE ReportServer.dbo.ModelDrill ( ModelDrillID uniqueidentifier NOT NULL, ModelID uniqueidentifier NOT NULL, ReportID uniqueidentifier NOT NULL, ModelItemID nvarchar(425) COLLATE Latin1_General_100_CI_AS_KS_WS NOT NULL, [Type] tinyint NOT NULL, CONSTRAINT PK_ModelDrill PRIMARY KEY (ModelDrillID), CONSTRAINT FK_ModelDrillModel FOREIGN KEY (ModelID) REFERENCES ReportServer.dbo.[Catalog](ItemID)
ON
DELETE CASCADE, CONSTRAINT FK_ModelDrillReport FOREIGN KEY (ReportID) REFERENCES ReportServer.dbo.[Catalog](ItemID) );

CREATE TABLE ReportServer.dbo.ModelItemPolicy ( ID uniqueidentifier NOT NULL, CatalogItemID uniqueidentifier NOT NULL, ModelItemID nvarchar(425) COLLATE Latin1_General_100_CI_AS_KS_WS NOT NULL, PolicyID uniqueidentifier NOT NULL, CONSTRAINT PK_ModelItemPolicy PRIMARY KEY (ID), CONSTRAINT FK_PoliciesPolicyID FOREIGN KEY (PolicyID) REFERENCES ReportServer.dbo.Policies(PolicyID)
ON
DELETE CASCADE );

CREATE TABLE ReportServer.dbo.ModelPerspective ( ID uniqueidentifier NOT NULL, ModelID uniqueidentifier NOT NULL, PerspectiveID ntext COLLATE Latin1_General_100_CI_AS_KS_WS NOT NULL, PerspectiveName ntext COLLATE Latin1_General_100_CI_AS_KS_WS NULL, PerspectiveDescription ntext COLLATE Latin1_General_100_CI_AS_KS_WS NULL, CONSTRAINT FK_ModelPerspectiveModel FOREIGN KEY (ModelID) REFERENCES ReportServer.dbo.[Catalog](ItemID)
ON
DELETE CASCADE );

CREATE TABLE ReportServer.dbo.PolicyUserRole ( ID uniqueidentifier NOT NULL, RoleID uniqueidentifier NOT NULL, UserID uniqueidentifier NOT NULL, PolicyID uniqueidentifier NOT NULL, CONSTRAINT PK_PolicyUserRole PRIMARY KEY (ID), CONSTRAINT FK_PolicyUserRole_Policy FOREIGN KEY (PolicyID) REFERENCES ReportServer.dbo.Policies(PolicyID)
ON
DELETE CASCADE, CONSTRAINT FK_PolicyUserRole_Role FOREIGN KEY (RoleID) REFERENCES ReportServer.dbo.Roles(RoleID), CONSTRAINT FK_PolicyUserRole_User FOREIGN KEY (UserID) REFERENCES ReportServer.dbo.Users(UserID) );

CREATE TABLE ReportServer.dbo.Schedule ( ScheduleID uniqueidentifier NOT NULL, Name nvarchar(260) COLLATE Latin1_General_100_CI_AS_KS_WS NOT NULL, StartDate datetime NOT NULL, Flags int NOT NULL, NextRunTime datetime NULL, LastRunTime datetime NULL, EndDate datetime NULL, RecurrenceType int NULL, MinutesInterval int NULL, DaysInterval int NULL, WeeksInterval int NULL, DaysOfWeek int NULL, DaysOfMonth int NULL, [Month] int NULL, MonthlyWeek int NULL, State int NULL, LastRunStatus nvarchar(260) COLLATE Latin1_General_100_CI_AS_KS_WS NULL, ScheduledRunTimeout int NULL, CreatedById uniqueidentifier NOT NULL, EventType nvarchar(260) COLLATE Latin1_General_100_CI_AS_KS_WS NOT NULL, EventData nvarchar(260) COLLATE Latin1_General_100_CI_AS_KS_WS NULL, [Type] int NOT NULL, ConsistancyCheck datetime NULL, [Path] nvarchar(260) COLLATE Latin1_General_100_CI_AS_KS_WS NULL, CONSTRAINT IX_Schedule UNIQUE (Name, [Path]), CONSTRAINT PK_ScheduleID PRIMARY KEY (ScheduleID), CONSTRAINT FK_Schedule_Users FOREIGN KEY (CreatedById) REFERENCES ReportServer.dbo.Users(UserID) );

CREATE TABLE ReportServer.dbo.SecData ( SecDataID uniqueidentifier NOT NULL, PolicyID uniqueidentifier NOT NULL, AuthType int NOT NULL, XmlDescription ntext COLLATE Latin1_General_100_CI_AS_KS_WS NOT NULL, NtSecDescPrimary image NOT NULL, NtSecDescSecondary ntext COLLATE Latin1_General_100_CI_AS_KS_WS NULL, CONSTRAINT PK_SecData PRIMARY KEY (SecDataID), CONSTRAINT FK_SecDataPolicyID FOREIGN KEY (PolicyID) REFERENCES ReportServer.dbo.Policies(PolicyID)
ON
DELETE CASCADE );

CREATE TABLE ReportServer.dbo.Subscriptions ( SubscriptionID uniqueidentifier NOT NULL, OwnerID uniqueidentifier NOT NULL, Report_OID uniqueidentifier NOT NULL, Locale nvarchar(128) COLLATE Latin1_General_100_CI_AS_KS_WS NOT NULL, InactiveFlags int NOT NULL, ExtensionSettings ntext COLLATE Latin1_General_100_CI_AS_KS_WS NULL, ModifiedByID uniqueidentifier NOT NULL, ModifiedDate datetime NOT NULL, Description nvarchar(512) COLLATE Latin1_General_100_CI_AS_KS_WS NULL, LastStatus nvarchar(260) COLLATE Latin1_General_100_CI_AS_KS_WS NULL, EventType nvarchar(260) COLLATE Latin1_General_100_CI_AS_KS_WS NOT NULL, MatchData ntext COLLATE Latin1_General_100_CI_AS_KS_WS NULL, LastRunTime datetime NULL, Parameters ntext COLLATE Latin1_General_100_CI_AS_KS_WS NULL, DataSettings ntext COLLATE Latin1_General_100_CI_AS_KS_WS NULL, DeliveryExtension nvarchar(260) COLLATE Latin1_General_100_CI_AS_KS_WS NULL, Version int NOT NULL, ReportZone int DEFAULT 0 NOT NULL, CONSTRAINT PK_Subscriptions PRIMARY KEY (SubscriptionID), CONSTRAINT FK_Subscriptions_Catalog FOREIGN KEY (Report_OID) REFERENCES ReportServer.dbo.[Catalog](ItemID)
ON
DELETE CASCADE, CONSTRAINT FK_Subscriptions_ModifiedBy FOREIGN KEY (ModifiedByID) REFERENCES ReportServer.dbo.Users(UserID), CONSTRAINT FK_Subscriptions_Owner FOREIGN KEY (OwnerID) REFERENCES ReportServer.dbo.Users(UserID) );

CREATE TABLE ReportServer.dbo.ActiveSubscriptions ( ActiveID uniqueidentifier NOT NULL, SubscriptionID uniqueidentifier NOT NULL, TotalNotifications int NULL, TotalSuccesses int NOT NULL, TotalFailures int NOT NULL, CONSTRAINT PK_ActiveSubscriptions PRIMARY KEY (ActiveID), CONSTRAINT FK_ActiveSubscriptions_Subscriptions FOREIGN KEY (SubscriptionID) REFERENCES ReportServer.dbo.Subscriptions(SubscriptionID)
ON
DELETE CASCADE );

CREATE TABLE ReportServer.dbo.CachePolicy ( CachePolicyID uniqueidentifier NOT NULL, ReportID uniqueidentifier NOT NULL, ExpirationFlags int NOT NULL, CacheExpiration int NULL, CONSTRAINT PK_CachePolicy PRIMARY KEY (CachePolicyID), CONSTRAINT FK_CachePolicyReportID FOREIGN KEY (ReportID) REFERENCES ReportServer.dbo.[Catalog](ItemID)
ON
DELETE CASCADE );

CREATE TABLE ReportServer.dbo.Notifications ( NotificationID uniqueidentifier NOT NULL, SubscriptionID uniqueidentifier NOT NULL, ActivationID uniqueidentifier NULL, ReportID uniqueidentifier NOT NULL, SnapShotDate datetime NULL, ExtensionSettings ntext COLLATE Latin1_General_100_CI_AS_KS_WS NOT NULL, Locale nvarchar(128) COLLATE Latin1_General_100_CI_AS_KS_WS NOT NULL, Parameters ntext COLLATE Latin1_General_100_CI_AS_KS_WS NULL, ProcessStart datetime NULL, NotificationEntered datetime NOT NULL, ProcessAfter datetime NULL, Attempt int NULL, SubscriptionLastRunTime datetime NOT NULL, DeliveryExtension nvarchar(260) COLLATE Latin1_General_100_CI_AS_KS_WS NOT NULL, SubscriptionOwnerID uniqueidentifier NOT NULL, IsDataDriven bit NOT NULL, BatchID uniqueidentifier NULL, ProcessHeartbeat datetime NULL, Version int NOT NULL, ReportZone int DEFAULT 0 NOT NULL, CONSTRAINT PK_Notifications PRIMARY KEY (NotificationID), CONSTRAINT FK_Notifications_Subscriptions FOREIGN KEY (SubscriptionID) REFERENCES ReportServer.dbo.Subscriptions(SubscriptionID)
ON
DELETE CASCADE );

CREATE TABLE ReportServer.dbo.ReportSchedule ( ScheduleID uniqueidentifier NOT NULL, ReportID uniqueidentifier NOT NULL, SubscriptionID uniqueidentifier NULL, ReportAction int NOT NULL, CONSTRAINT FK_ReportSchedule_Report FOREIGN KEY (ReportID) REFERENCES ReportServer.dbo.[Catalog](ItemID)
ON
DELETE CASCADE, CONSTRAINT FK_ReportSchedule_Schedule FOREIGN KEY (ScheduleID) REFERENCES ReportServer.dbo.Schedule(ScheduleID)
ON
DELETE CASCADE, CONSTRAINT FK_ReportSchedule_Subscriptions FOREIGN KEY (SubscriptionID) REFERENCES ReportServer.dbo.Subscriptions(SubscriptionID) );

CREATE TABLE ReportServer.dbo.SubscriptionResults ( SubscriptionResultID uniqueidentifier NOT NULL, SubscriptionID uniqueidentifier NOT NULL, ExtensionSettingsHash int NOT NULL, ExtensionSettings nvarchar(MAX) COLLATE Latin1_General_100_CI_AS_KS_WS NOT NULL, SubscriptionResult nvarchar(260) COLLATE Latin1_General_100_CI_AS_KS_WS NULL, CONSTRAINT PK_SubscriptionResults PRIMARY KEY (SubscriptionResultID), CONSTRAINT FK_SubscriptionResults_Subscriptions FOREIGN KEY (SubscriptionID) REFERENCES ReportServer.dbo.Subscriptions(SubscriptionID)
ON
DELETE CASCADE );
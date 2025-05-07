USE massage;

CREATE TABLE massage.dbo.sms_send ( SendPhone varchar(3000) COLLATE Chinese_PRC_CI_AS NULL, SendContent varchar(1500) COLLATE Chinese_PRC_CI_AS NULL, SendState int NOT NULL, Senddefault varchar(255) COLLATE Chinese_PRC_CI_AS NULL, id int IDENTITY(1, 1) NOT NULL, CONSTRAINT PK__sms_send__3213E83F484F8483 PRIMARY KEY (id) );
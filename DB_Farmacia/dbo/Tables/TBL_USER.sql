﻿CREATE TABLE [dbo].[TBL_USER] (
    [USE_INT_ID]     UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [USE_INF_INT_ID] UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [USE_NAME]       VARCHAR (100)    NULL,
    [USE_LOGIN]      VARCHAR (100)    NULL,
    [USE_PASS]       VARCHAR (300)    NULL,
    [ROL_INT_ID]     UNIQUEIDENTIFIER DEFAULT (newid()) NULL,
    [USE_STATUS]     BIT              NULL,
    PRIMARY KEY CLUSTERED ([USE_INT_ID] ASC),
    CONSTRAINT [FK_TBL_USER_CAT_ROLE] FOREIGN KEY ([ROL_INT_ID]) REFERENCES [dbo].[CAT_ROLE] ([ROL_INT_ID]),
    CONSTRAINT [FK_TBL_USER_TBL_USER_INFO] FOREIGN KEY ([USE_INF_INT_ID]) REFERENCES [dbo].[TBL_USER_INFO] ([USE_INF_INT_ID])
);

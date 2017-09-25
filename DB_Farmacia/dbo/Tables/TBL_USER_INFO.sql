﻿CREATE TABLE [dbo].[TBL_USER_INFO] (
    [USE_INF_INT_ID]    UNIQUEIDENTIFIER CONSTRAINT [DF__tmp_ms_xx__USE_I__72C60C4A] DEFAULT (newid()) NOT NULL,
    [CAT_TYP_USER]      UNIQUEIDENTIFIER CONSTRAINT [DF__tmp_ms_xx__CAT_T__73BA3083] DEFAULT (newid()) NOT NULL,
    [USE_INF_PRIMER_N]  VARCHAR (100)    NOT NULL,
    [USE_INF_SEGUNDO_N] VARCHAR (100)    NULL,
    [USE_INF_PRIMER_A]  VARCHAR (50)     NOT NULL,
    [USE_INF_SEGUNDO_A] VARCHAR (50)     NULL,
    [USE_INF_FECHA_NAC] DATETIME         NOT NULL,
    [USE_INF_CED]       VARCHAR (50)     NOT NULL,
    [USE_INF_TEL]       VARCHAR (50)     NOT NULL,
    [USE_INF_EMAIL]     VARCHAR (100)    NOT NULL,
    CONSTRAINT [PK__tmp_ms_x__B10173A3FDB5B68A] PRIMARY KEY CLUSTERED ([USE_INF_INT_ID] ASC),
    CONSTRAINT [FK_TBL_USER_INFO_CAT_TYPE_USER] FOREIGN KEY ([CAT_TYP_USER]) REFERENCES [dbo].[CAT_TYPE_USER] ([CAT_TYP_USER])
);




USE [CustodyAdmin_Dev]
GO

/****** Object:  Table [dbo].[InternalReconciliation]    Script Date: 11/21/2024 5:54:58 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[InternalReconciliation](
	[Id] [uniqueidentifier] NOT NULL,
	[AccountId] [bigint] NULL,
	[Name] [nvarchar](50) NULL,
	[Cif] [nvarchar](max) NULL,
	[Individuals] [bit] NULL,
	[CoinName] [nvarchar](32) NULL,
	[ChainType] [nvarchar](64) NULL,
	[Address] [nvarchar](max) NULL,
	[PreFund] [decimal](24, 10) NULL,
	[Fund] [decimal](24, 10) NULL,
	[Deposit] [decimal](24, 10) NULL,
	[WithDrawal] [decimal](24, 10) NULL,
	[Fee] [decimal](24, 10) NULL,
	[Gas] [decimal](24, 10) NULL,
	[Amount] [decimal](24, 10) NULL,
	[SynTime] [datetime] NULL,
	[CreationTime] [datetime] NULL,
	[LastUpdated] [datetime] NULL,
	[LastDiff] [decimal](24, 10) NULL,
	[CurDiff] [decimal](24, 10) NULL,
	[OperatorId] [bigint] NOT NULL,
	[OperatorName] [nvarchar](256) NOT NULL,
	[Status] [int] NULL,
	[Remark] [nvarchar](max) NULL,
 CONSTRAINT [PK_InternalReconciliation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

insert into InternalReconciliation values('F2594DF3-560D-3D53-2950-3A1635CAAB65','100010','test','111111','0','BTC','BTC','2NEZ7JySGnmemxmYeBrkKVxFcs2xMSNDuJF','0','0','0','0','0','0','0','2024-10-25','2024-10-25','2024-10-25','0','0','123','test123','9','test')
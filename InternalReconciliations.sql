USE [CustodyAdmin_Dev]
GO

/****** Object:  Table [dbo].[InternalReconciliations]    Script Date: 12/4/2024 8:10:24 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[InternalReconciliations](
	[Id] [uniqueidentifier] NOT NULL,
	[AccountId] [bigint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Cif] [nvarchar](20) NOT NULL,
	[AccountType] [int] NOT NULL,
	[CoinName] [nvarchar](32) NOT NULL,
	[ChainType] [nvarchar](64) NOT NULL,
	[Address] [nvarchar](300) NOT NULL,
	[PreFund] [decimal](24, 10) NOT NULL,
	[Fund] [decimal](24, 10) NOT NULL,
	[Deposit] [decimal](24, 10) NOT NULL,
	[WithDrawal] [decimal](24, 10) NOT NULL,
	[Fee] [decimal](24, 10) NOT NULL,
	[Gas] [decimal](24, 10) NOT NULL,
	[Amount] [decimal](24, 10) NOT NULL,
	[CreationTime] [datetime2](7) NULL,
	[LastDiff] [decimal](24, 10) NOT NULL,
	[CurDiff] [decimal](24, 10) NOT NULL,
	[LastModifierName] [nvarchar](256) NULL,
	[Status] [int] NOT NULL,
	[Remark] [nvarchar](200) NULL,
	[CreatorId] [uniqueidentifier] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierId] [uniqueidentifier] NULL,
	[SynStartTime] [datetime2](7) NULL,
	[SynEndTime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_InternalReconciliation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


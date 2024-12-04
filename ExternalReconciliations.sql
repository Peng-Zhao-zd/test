USE [CustodyAdmin_Dev]
GO

/****** Object:  Table [dbo].[ExternalReconciliations]    Script Date: 12/4/2024 8:10:56 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ExternalReconciliations](
	[Id] [uniqueidentifier] NOT NULL,
	[HoldsId] [nvarchar](450) NOT NULL,
	[AccountgId] [uniqueidentifier] NOT NULL,
	[AccountId] [bigint] NOT NULL,
	[AccountType] [int] NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Cif] [nvarchar](50) NOT NULL,
	[Balance] [decimal](24, 10) NOT NULL,
	[PreviousBalance] [decimal](24, 10) NOT NULL,
	[WalletBalance] [decimal](24, 10) NOT NULL,
	[PreviousWalletBalance] [decimal](24, 10) NOT NULL,
	[HighRiskAmount] [decimal](24, 10) NOT NULL,
	[AwaitVerificationAmount] [decimal](24, 10) NOT NULL,
	[PreviousHighRiskAmount] [decimal](24, 10) NOT NULL,
	[SynStartTime] [datetime2](7) NOT NULL,
	[SynEndTime] [datetime2](7) NOT NULL,
	[CoinCode] [nvarchar](50) NOT NULL,
	[ChainType] [nvarchar](50) NOT NULL,
	[WalletAddress] [nvarchar](300) NOT NULL,
	[WalletId] [nvarchar](50) NOT NULL,
	[ExceptionAmount] [decimal](24, 10) NOT NULL,
	[PreviousExceptionAmount] [decimal](24, 10) NOT NULL,
	[Remark] [nvarchar](300) NOT NULL,
	[Status] [int] NOT NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierId] [uniqueidentifier] NULL,
	[CreationTime] [datetime2](7) NULL,
	[CreatorId] [uniqueidentifier] NULL,
	[LastModifierName] [nvarchar](50) NULL,
	[PreviousAwaitVerificationAmount] [decimal](24, 10) NOT NULL,
 CONSTRAINT [PK_ExternalReconciliations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ExternalReconciliations] ADD  CONSTRAINT [DF_ExternalReconciliations_PreviousAwaitVerificationAmount]  DEFAULT ((0)) FOR [PreviousAwaitVerificationAmount]
GO


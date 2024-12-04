USE [CustodyAdmin_Dev]
GO

/****** Object:  Table [dbo].[CoinTransactionOuts]    Script Date: 12/4/2024 8:11:41 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CoinTransactionOuts](
	[Id] [nvarchar](450) NOT NULL,
	[WebSiteID] [uniqueidentifier] NOT NULL,
	[AccountId] [bigint] NOT NULL,
	[CoinAddress] [nvarchar](max) NOT NULL,
	[CoinID] [uniqueidentifier] NOT NULL,
	[CoinChain] [nvarchar](max) NULL,
	[ApplyQuantity] [decimal](24, 10) NOT NULL,
	[ActualPayQuantity] [decimal](24, 10) NOT NULL,
	[NeedPayQuantity] [decimal](24, 10) NOT NULL,
	[FeeRate] [decimal](24, 10) NULL,
	[Fee] [decimal](24, 10) NOT NULL,
	[BillNo] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[ApproveComments] [nvarchar](max) NULL,
	[CreatorID] [nvarchar](max) NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[LastUpdateUserID] [nvarchar](max) NULL,
	[LastUpdateTime] [datetime2](7) NULL,
	[TXID] [nvarchar](max) NULL,
	[CacheVersion] [bigint] NULL,
	[BlockTime] [datetime2](7) NULL,
	[ApproverID] [nvarchar](max) NULL,
	[Available] [decimal](24, 10) NULL,
	[CoinAddressTag] [nvarchar](max) NULL,
	[Version] [bigint] NULL,
	[BatchApprovalID] [nvarchar](max) NULL,
	[Memo] [nvarchar](max) NULL,
	[Type] [int] NOT NULL,
	[AuditReason] [nvarchar](max) NULL,
	[GasFee] [decimal](24, 10) NULL,
	[RequestId] [nvarchar](max) NULL,
	[FromAddress] [nvarchar](200) NOT NULL,
	[InternalReconciliationId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_CoinTransactionOuts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[CoinTransactionOuts] ADD  DEFAULT ('') FOR [FromAddress]
GO


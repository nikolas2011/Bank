USE [Bank]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 4/15/2022 4:06:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[idAccount] [int] IDENTITY(1,1) NOT NULL,
	[AccountNumber] [nvarchar](50) NOT NULL,
	[CurrencyName] [nvarchar](50) NOT NULL,
	[CurrencyCode] [nvarchar](10) NOT NULL,
	[DepositedAmount] [float] NOT NULL,
	[CardLimit] [int] NULL,
	[TypeOfAccount] [nvarchar](10) NOT NULL,
	[WithdrawalFee] [nvarchar](5) NOT NULL,
	[CreditPayment] [nvarchar](50) NOT NULL,
	[idClient] [int] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[idAccount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 4/15/2022 4:06:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[idClient] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[DateBirth] [date] NOT NULL,
	[StreetName] [nvarchar](50) NULL,
	[HouseNumber] [int] NOT NULL,
	[PostalCode] [int] NOT NULL,
	[CountryName] [nvarchar](50) NULL,
	[CountryCode] [nvarchar](50) NOT NULL,
	[CustomerType] [nvarchar](50) NOT NULL,
	[ListOfAccounts] [nvarchar](50) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[idClient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([idAccount], [AccountNumber], [CurrencyName], [CurrencyCode], [DepositedAmount], [CardLimit], [TypeOfAccount], [WithdrawalFee], [CreditPayment], [idClient]) VALUES (1, N'111-111-22', N'Dinar', N'RSD', 2000000, 20000, N'Credit', N'0', N'monthly', 1)
INSERT [dbo].[Account] ([idAccount], [AccountNumber], [CurrencyName], [CurrencyCode], [DepositedAmount], [CardLimit], [TypeOfAccount], [WithdrawalFee], [CreditPayment], [idClient]) VALUES (2, N'353-353-99', N'Euro', N'EUR', 3500, 20000, N'Credit', N'0', N'quarterly', 3)
INSERT [dbo].[Account] ([idAccount], [AccountNumber], [CurrencyName], [CurrencyCode], [DepositedAmount], [CardLimit], [TypeOfAccount], [WithdrawalFee], [CreditPayment], [idClient]) VALUES (5, N'555-999-36', N'Dinar', N'RSD', 965320, 5000, N'Credit', N'1', N'yearly', 5)
INSERT [dbo].[Account] ([idAccount], [AccountNumber], [CurrencyName], [CurrencyCode], [DepositedAmount], [CardLimit], [TypeOfAccount], [WithdrawalFee], [CreditPayment], [idClient]) VALUES (6, N'999-777-23', N'Euro', N'EUR', 200000, 0, N'Debut', N'1', N'yearly', 7)
INSERT [dbo].[Account] ([idAccount], [AccountNumber], [CurrencyName], [CurrencyCode], [DepositedAmount], [CardLimit], [TypeOfAccount], [WithdrawalFee], [CreditPayment], [idClient]) VALUES (7, N'123-123-88', N'Euro', N'EUR', 60321, 0, N'Debut', N'0', N'quarterly', 8)
INSERT [dbo].[Account] ([idAccount], [AccountNumber], [CurrencyName], [CurrencyCode], [DepositedAmount], [CardLimit], [TypeOfAccount], [WithdrawalFee], [CreditPayment], [idClient]) VALUES (8, N'565-987-85', N'Euro', N'EUR', 1000, 5000, N'Credit', N'1', N'monthly', 9)
INSERT [dbo].[Account] ([idAccount], [AccountNumber], [CurrencyName], [CurrencyCode], [DepositedAmount], [CardLimit], [TypeOfAccount], [WithdrawalFee], [CreditPayment], [idClient]) VALUES (9, N'222-789-10', N'Euro', N'EUR', 0, 20000, N'Credit', N'0', N'monthly', 10)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([idClient], [Name], [LastName], [DateBirth], [StreetName], [HouseNumber], [PostalCode], [CountryName], [CountryCode], [CustomerType], [ListOfAccounts]) VALUES (1, N'Nikola', N'Spaskovski', CAST(N'1994-11-20' AS Date), N'Nevesinjska, Beograd', 11, 11000, N'Srbija', N'+381', N'Premium', NULL)
INSERT [dbo].[Client] ([idClient], [Name], [LastName], [DateBirth], [StreetName], [HouseNumber], [PostalCode], [CountryName], [CountryCode], [CustomerType], [ListOfAccounts]) VALUES (3, N'Marko', N'Markovic', CAST(N'1993-07-01' AS Date), N'Glavna, Zemun', 44, 11080, N'Srbija', N'+381', N'Premium', NULL)
INSERT [dbo].[Client] ([idClient], [Name], [LastName], [DateBirth], [StreetName], [HouseNumber], [PostalCode], [CountryName], [CountryCode], [CustomerType], [ListOfAccounts]) VALUES (5, N'Ana', N'Djuric', CAST(N'1996-02-24' AS Date), N'Makenzijeva, Beograd', 68, 11000, N'Srbija', N'+381', N'Regular', NULL)
INSERT [dbo].[Client] ([idClient], [Name], [LastName], [DateBirth], [StreetName], [HouseNumber], [PostalCode], [CountryName], [CountryCode], [CustomerType], [ListOfAccounts]) VALUES (7, N'Jelena ', N'Jovanovic', CAST(N'1991-05-12' AS Date), N'Beogradska, Nis', 99, 18000, N'Srbija', N'+381', N'Regular', NULL)
INSERT [dbo].[Client] ([idClient], [Name], [LastName], [DateBirth], [StreetName], [HouseNumber], [PostalCode], [CountryName], [CountryCode], [CustomerType], [ListOfAccounts]) VALUES (8, N'Ante', N'Doncic', CAST(N'1986-09-06' AS Date), N'Splitska, Zagreb', 6, 10000, N'Hrvatska', N'+385', N'Premium', NULL)
INSERT [dbo].[Client] ([idClient], [Name], [LastName], [DateBirth], [StreetName], [HouseNumber], [PostalCode], [CountryName], [CountryCode], [CustomerType], [ListOfAccounts]) VALUES (9, N'Mina', N'Soskic', CAST(N'1998-06-14' AS Date), N'Zagrebacka, Split', 8, 27000, N'Hrvatska', N'+385', N'Regular', NULL)
INSERT [dbo].[Client] ([idClient], [Name], [LastName], [DateBirth], [StreetName], [HouseNumber], [PostalCode], [CountryName], [CountryCode], [CustomerType], [ListOfAccounts]) VALUES (10, N'Biljana', N'Radovic', CAST(N'1990-03-30' AS Date), N'Njegoseva, Podgorica', 55, 81000, N'Crna Gora', N'+382', N'Premium', NULL)
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Client] FOREIGN KEY([idClient])
REFERENCES [dbo].[Client] ([idClient])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Client]
GO

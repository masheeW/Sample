USE [master]
GO
/****** Object:  Database [EcommerceDB]    Script Date: 9/7/2021 3:17:36 AM ******/
CREATE DATABASE [EcommerceDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EcommerceDB', FILENAME = N'E:\SQLServer\MSSQL15.MSSQLSERVER\MSSQL\DATA\EcommerceDB.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EcommerceDB_log', FILENAME = N'E:\SQLServer\MSSQL15.MSSQLSERVER\MSSQL\DATA\EcommerceDB_log.ldf' , SIZE = 2880KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EcommerceDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EcommerceDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EcommerceDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EcommerceDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EcommerceDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EcommerceDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EcommerceDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [EcommerceDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EcommerceDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EcommerceDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EcommerceDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EcommerceDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EcommerceDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EcommerceDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EcommerceDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EcommerceDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EcommerceDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EcommerceDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EcommerceDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EcommerceDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EcommerceDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EcommerceDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EcommerceDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [EcommerceDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EcommerceDB] SET RECOVERY FULL 
GO
ALTER DATABASE [EcommerceDB] SET  MULTI_USER 
GO
ALTER DATABASE [EcommerceDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EcommerceDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EcommerceDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EcommerceDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [EcommerceDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'EcommerceDB', N'ON'
GO
ALTER DATABASE [EcommerceDB] SET QUERY_STORE = OFF
GO
USE [EcommerceDB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET ACCELERATED_PLAN_FORCING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET BATCH_MODE_ADAPTIVE_JOINS = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET BATCH_MODE_MEMORY_GRANT_FEEDBACK = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET BATCH_MODE_ON_ROWSTORE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET DEFERRED_COMPILATION_TV = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET ELEVATE_ONLINE = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET ELEVATE_RESUMABLE = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET GLOBAL_TEMPORARY_TABLE_AUTO_DROP = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET INTERLEAVED_EXECUTION_TVF = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET ISOLATE_SECURITY_POLICY_CARDINALITY = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LAST_QUERY_PLAN_STATS = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LIGHTWEIGHT_QUERY_PROFILING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET OPTIMIZE_FOR_AD_HOC_WORKLOADS = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET ROW_MODE_MEMORY_GRANT_FEEDBACK = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET TSQL_SCALAR_UDF_INLINING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET VERBOSE_TRUNCATION_WARNINGS = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET XTP_PROCEDURE_EXECUTION_STATISTICS = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET XTP_QUERY_EXECUTION_STATISTICS = OFF;
GO
USE [EcommerceDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 9/7/2021 3:17:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 9/7/2021 3:17:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 9/7/2021 3:17:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 9/7/2021 3:17:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 9/7/2021 3:17:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 9/7/2021 3:17:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 9/7/2021 3:17:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 9/7/2021 3:17:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 9/7/2021 3:17:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [nvarchar](50) NOT NULL,
	[Customer] [nvarchar](50) NOT NULL,
	[OrderNumber] [nvarchar](100) NOT NULL,
	[OrderStatus] [nvarchar](50) NULL,
	[OrderDate] [datetime] NOT NULL,
	[TotalAmount] [decimal](12, 2) NOT NULL,
	[TotalDiscount] [decimal](12, 2) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](128) NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](128) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItem]    Script Date: 9/7/2021 3:17:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItem](
	[Id] [nvarchar](50) NOT NULL,
	[OrderId] [nvarchar](50) NOT NULL,
	[ProductId] [nvarchar](50) NULL,
	[Quantity] [decimal](12, 2) NOT NULL,
	[UnitPrice] [decimal](12, 2) NOT NULL,
	[TotalPrice] [decimal](12, 2) NOT NULL,
 CONSTRAINT [PK_OrderItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 9/7/2021 3:17:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [nvarchar](50) NOT NULL,
	[ProductName] [nvarchar](150) NOT NULL,
	[Category] [nvarchar](100) NOT NULL,
	[Size] [nvarchar](50) NULL,
	[Price] [decimal](12, 2) NOT NULL,
	[ImageName] [nvarchar](250) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](128) NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](128) NULL,
	[Status] [bit] NOT NULL,
	[OutOfStock] [bit] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 9/7/2021 3:17:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[Id] [nvarchar](100) NOT NULL,
	[CategoryName] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](150) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](128) NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](128) NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210827192816_Identity', N'5.0.9')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1', N'Admin', N'Admin', NULL)
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2', N'Customer', N'Customer', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e698ac57-e8e3-4d6b-b8d9-4bb471a77909', N'1')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4ef2bf9b-ad04-4404-aa6b-04ef51d3f302', N'2')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'53fe9fe6-77c0-400c-98d4-e23dcfdbfd3a', N'2')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'64629f13-18b7-4f3c-a9b1-ce26d6159525', N'2')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6c5c39d8-d59f-4f7d-9551-2141a0c31388', N'2')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', N'2')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4ef2bf9b-ad04-4404-aa6b-04ef51d3f302', N'test', N'user', N'mashee@live.com', N'MASHEE@LIVE.COM', N'mashee@live.com', N'MASHEE@LIVE.COM', 0, N'AQAAAAEAACcQAAAAEP/7xy84HsMmtPPH0TnAMJ1nrW/dEEVJl5Lq/evpp0csqZd0ClZUAp1JwN1LtVmcvw==', N'MYQ2OT44LZV6HMFRVOQPJBNDNATO7IRC', N'71de5088-08f7-4150-9a45-f23b5741777a', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'53fe9fe6-77c0-400c-98d4-e23dcfdbfd3a', N'testm', N'user', N'testm@gmail.com', N'TESTM@GMAIL.COM', N'testm@gmail.com', N'TESTM@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEI5sInTz6uUMu9r4NTLCp8OaeNTT1CrlieFWHRhhObl4uaJfWlNF7u2A6W+TnIWPLQ==', N'FFRELN73TXKRACY4Z43WTSFF3OY3PFO3', N'e3386a27-155f-4d81-b511-d2475ab457f4', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'64629f13-18b7-4f3c-a9b1-ce26d6159525', N'test5', N'user', N'test5@gmail.com', N'TEST5@GMAIL.COM', N'test5@gmail.com', N'TEST5@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJ/s5YKTJe1Y6khhjNYKYUZNoWo/v1aOUcmKeljnITPQJqMAJDoYDYyzKEMGK2NpbQ==', N'RURWKDJGYULGVVL5Z2HFMCDIFU423TJ3', N'68985005-9a00-425e-b75c-119119724e83', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6c5c39d8-d59f-4f7d-9551-2141a0c31388', N'test3', N'user', N'test3@gmail.com', N'TEST3@GMAIL.COM', N'test3@gmail.com', N'TEST3@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAECXHS37OURUo/ttlrSN0roN4M/N5DANGgLUxEY4rUZ2/h0wZoI388n0hNgB5koiyjQ==', N'R6F6JU2RAJ5FNPQJ2U3N6XMMKUYL4Z5L', N'76c5fc6d-f926-47d7-b17b-3c6374fdc0cf', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', N'test2', N'user', N'test@gmail.com', N'TEST@GMAIL.COM', N'test@gmail.com', N'TEST@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJvh/jE5cjl/r7f+2AQ+pj6TUkRlA+9F/xP1VPbGEJWvJNdOorhlFJsJHoR0a8sxMQ==', N'Y2DOXGEVEDRZTBHEUYRDCOBDB6URE7LH', N'80b569dd-4e5b-4979-af6b-53128bef1eca', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e698ac57-e8e3-4d6b-b8d9-4bb471a77909', N'admin', N'user', N'admin@mystore.com', N'ADMIN@MYSTORE.COM', N'admin@mystore.com', N'ADMIN@MYSTORE.COM', 0, N'AQAAAAEAACcQAAAAEFmdxYhUltEAFMkC8ANBEcBs0FG8sSH7tjsWMNVwfDIZLO8iAvbW9j+HQIHD4zdw+w==', N'YLODG3KPFBQ5ME4ALPUGV66C4ZGDTRE4', N'c4ac36c3-590b-463b-aecc-31b48d40078f', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[Order] ([Id], [Customer], [OrderNumber], [OrderStatus], [OrderDate], [TotalAmount], [TotalDiscount], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (N'0cfe76e1-d852-47c2-b125-5b18089f2a4b', N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', N'M2568', N'New', CAST(N'2021-09-02T19:52:31.293' AS DateTime), CAST(97000.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(N'2021-09-03T01:23:09.9517123' AS DateTime2), N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', NULL, NULL)
GO
INSERT [dbo].[Order] ([Id], [Customer], [OrderNumber], [OrderStatus], [OrderDate], [TotalAmount], [TotalDiscount], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (N'0ef88122-73ee-424a-90d6-a873f846ed47', N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', N'M8552', N'New', CAST(N'2021-09-02T20:33:15.287' AS DateTime), CAST(24100.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(N'2021-09-03T02:03:37.8337942' AS DateTime2), N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', NULL, NULL)
GO
INSERT [dbo].[Order] ([Id], [Customer], [OrderNumber], [OrderStatus], [OrderDate], [TotalAmount], [TotalDiscount], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (N'2f6bcbb0-716e-4e99-8258-14d4c6bbbede', N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', N'M7228', N'New', CAST(N'2021-08-29T20:22:55.197' AS DateTime), CAST(104600.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(N'2021-08-30T01:53:19.8689640' AS DateTime2), N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', NULL, NULL)
GO
INSERT [dbo].[Order] ([Id], [Customer], [OrderNumber], [OrderStatus], [OrderDate], [TotalAmount], [TotalDiscount], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (N'3f79d468-f8e0-4f4a-89c3-74ebd5c9048e', N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', N'M0237', N'New', CAST(N'2021-09-02T20:14:14.510' AS DateTime), CAST(62600.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(N'2021-09-03T01:44:37.6759891' AS DateTime2), N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', NULL, NULL)
GO
INSERT [dbo].[Order] ([Id], [Customer], [OrderNumber], [OrderStatus], [OrderDate], [TotalAmount], [TotalDiscount], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (N'47E82E27-E00A-475E-B84F-305EE0AAA280', N'4ef2bf9b-ad04-4404-aa6b-04ef51d3f302', N'M1235', N'New', CAST(N'2021-08-28T18:24:52.790' AS DateTime), CAST(42000.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(N'2021-08-28T18:24:52.7900000' AS DateTime2), N'SYSTEM', NULL, NULL)
GO
INSERT [dbo].[Order] ([Id], [Customer], [OrderNumber], [OrderStatus], [OrderDate], [TotalAmount], [TotalDiscount], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (N'507d2544-ebc8-4114-8af8-d1ed28b576b7', N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', N'M1666', N'New', CAST(N'2021-09-06T21:24:20.520' AS DateTime), CAST(52500.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(N'2021-09-07T02:54:39.6152940' AS DateTime2), N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', NULL, NULL)
GO
INSERT [dbo].[Order] ([Id], [Customer], [OrderNumber], [OrderStatus], [OrderDate], [TotalAmount], [TotalDiscount], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (N'54a61e8b-f2db-4db6-b2df-0bf4ad6aef56', N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', N'M7497', N'New', CAST(N'2021-09-05T12:10:42.383' AS DateTime), CAST(62600.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(N'2021-09-05T17:41:56.4402262' AS DateTime2), N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', NULL, NULL)
GO
INSERT [dbo].[Order] ([Id], [Customer], [OrderNumber], [OrderStatus], [OrderDate], [TotalAmount], [TotalDiscount], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (N'73e38051-8eab-4637-9dea-49e61b434bc8', N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', N'M6418', N'New', CAST(N'2021-09-05T18:41:53.600' AS DateTime), CAST(45500.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(N'2021-09-06T00:12:26.0258984' AS DateTime2), N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', NULL, NULL)
GO
INSERT [dbo].[Order] ([Id], [Customer], [OrderNumber], [OrderStatus], [OrderDate], [TotalAmount], [TotalDiscount], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (N'7505433c-4fb5-4e78-9663-9767ccc3dc71', N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', N'M5368', N'New', CAST(N'2021-08-30T12:08:44.820' AS DateTime), CAST(62600.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(N'2021-08-30T17:39:07.4605464' AS DateTime2), N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', NULL, NULL)
GO
INSERT [dbo].[Order] ([Id], [Customer], [OrderNumber], [OrderStatus], [OrderDate], [TotalAmount], [TotalDiscount], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (N'816e520a-6f76-41e5-be5a-2f2f12a38502', N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', N'M7550', N'New', CAST(N'2021-09-04T18:59:51.113' AS DateTime), CAST(97000.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(N'2021-09-05T00:30:23.2396368' AS DateTime2), N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', NULL, NULL)
GO
INSERT [dbo].[Order] ([Id], [Customer], [OrderNumber], [OrderStatus], [OrderDate], [TotalAmount], [TotalDiscount], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (N'8875b76a-286d-486b-87bb-5f371df63ced', N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', N'M9388', N'New', CAST(N'2021-09-04T11:11:11.227' AS DateTime), CAST(97000.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(N'2021-09-04T16:41:39.3624226' AS DateTime2), N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', NULL, NULL)
GO
INSERT [dbo].[Order] ([Id], [Customer], [OrderNumber], [OrderStatus], [OrderDate], [TotalAmount], [TotalDiscount], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (N'96f7a967-d622-45c4-bb7d-62b26f869500', N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', N'M1799', N'New', CAST(N'2021-09-02T20:48:32.107' AS DateTime), CAST(121100.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(N'2021-09-03T02:19:02.0147755' AS DateTime2), N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', NULL, NULL)
GO
INSERT [dbo].[Order] ([Id], [Customer], [OrderNumber], [OrderStatus], [OrderDate], [TotalAmount], [TotalDiscount], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (N'9dbb195f-c2ff-4086-ba77-4ecd7f9ef126', N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', N'M5161', N'New', CAST(N'2021-09-02T20:53:08.887' AS DateTime), CAST(121100.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(N'2021-09-03T02:23:29.8804935' AS DateTime2), N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', NULL, NULL)
GO
INSERT [dbo].[Order] ([Id], [Customer], [OrderNumber], [OrderStatus], [OrderDate], [TotalAmount], [TotalDiscount], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (N'a377917e-5559-4fc9-9100-aefba845683a', N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', N'M7082', N'New', CAST(N'2021-09-04T20:18:03.127' AS DateTime), CAST(66000.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(N'2021-09-05T01:48:33.6657892' AS DateTime2), N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', NULL, NULL)
GO
INSERT [dbo].[Order] ([Id], [Customer], [OrderNumber], [OrderStatus], [OrderDate], [TotalAmount], [TotalDiscount], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (N'ad3c36c5-dcca-46e1-b3d1-851d12c34ec3', N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', N'M9880', N'New', CAST(N'2021-09-05T20:00:01.693' AS DateTime), CAST(38800.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(N'2021-09-06T01:31:39.1416460' AS DateTime2), N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', NULL, NULL)
GO
INSERT [dbo].[Order] ([Id], [Customer], [OrderNumber], [OrderStatus], [OrderDate], [TotalAmount], [TotalDiscount], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (N'b76ae3f1-139f-4e65-8561-6b9215eb8fc7', N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', N'M4280', N'New', CAST(N'2021-09-05T12:02:27.850' AS DateTime), CAST(104800.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(N'2021-09-05T17:33:27.9754623' AS DateTime2), N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', NULL, NULL)
GO
INSERT [dbo].[Order] ([Id], [Customer], [OrderNumber], [OrderStatus], [OrderDate], [TotalAmount], [TotalDiscount], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (N'c47a1a3a-4d79-4583-9ffe-2ace01de62ad', N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', N'M3757', N'New', CAST(N'2021-09-02T20:07:40.820' AS DateTime), CAST(45500.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(N'2021-09-03T01:38:05.4855809' AS DateTime2), N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', NULL, NULL)
GO
INSERT [dbo].[Order] ([Id], [Customer], [OrderNumber], [OrderStatus], [OrderDate], [TotalAmount], [TotalDiscount], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (N'cc192094-1e53-405d-84fb-4f5a490c1e49', N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', N'M5789', N'New', CAST(N'2021-09-02T20:56:21.763' AS DateTime), CAST(121100.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(N'2021-09-03T02:26:48.2796973' AS DateTime2), N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', NULL, NULL)
GO
INSERT [dbo].[Order] ([Id], [Customer], [OrderNumber], [OrderStatus], [OrderDate], [TotalAmount], [TotalDiscount], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (N'd9557cd9-7484-4416-a5b7-56b6187d2de6', N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', N'M2110', N'New', CAST(N'2021-09-02T20:36:15.000' AS DateTime), CAST(97000.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(N'2021-09-03T02:06:47.9080978' AS DateTime2), N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', NULL, NULL)
GO
INSERT [dbo].[Order] ([Id], [Customer], [OrderNumber], [OrderStatus], [OrderDate], [TotalAmount], [TotalDiscount], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (N'e2678c3f-c64f-4206-8ffc-f4b7200bfbf2', N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', N'M4734', N'New', CAST(N'2021-09-05T12:05:19.300' AS DateTime), CAST(30500.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(N'2021-09-05T17:37:36.0533322' AS DateTime2), N'97dd6c1c-12ad-47e8-8279-a5f2cbfed8f3', NULL, NULL)
GO
INSERT [dbo].[Order] ([Id], [Customer], [OrderNumber], [OrderStatus], [OrderDate], [TotalAmount], [TotalDiscount], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (N'E7F8FB5C-9A83-4BB4-8FDF-BE8CC2FFAA4A', N'4ef2bf9b-ad04-4404-aa6b-04ef51d3f302', N'M1234', N'New', CAST(N'2021-08-28T17:15:41.237' AS DateTime), CAST(20600.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(N'2021-08-28T17:15:41.2370000' AS DateTime2), N'SYSTEM', NULL, NULL)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'07092abf-ecd8-4e5f-bd96-1b563bccfcb2', N'a377917e-5559-4fc9-9100-aefba845683a', N'322c0ac7-6739-4099-b4ae-44ae11dfe0de', CAST(1.00 AS Decimal(12, 2)), CAST(16000.00 AS Decimal(12, 2)), CAST(16000.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'12c0b8cb-a8e2-4941-8ce2-6ef8370491e7', N'0cfe76e1-d852-47c2-b125-5b18089f2a4b', N'2E5C1524-948B-4106-BB03-7FACBAD5C92B', CAST(1.00 AS Decimal(12, 2)), CAST(42000.00 AS Decimal(12, 2)), CAST(42000.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'1a32efef-80e9-413e-bdfa-19a19d86e5ac', N'7505433c-4fb5-4e78-9663-9767ccc3dc71', N'2E5C1524-948B-4106-BB03-7FACBAD5C92B', CAST(1.00 AS Decimal(12, 2)), CAST(42000.00 AS Decimal(12, 2)), CAST(42000.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'20ddf785-3791-46d5-89a7-1acbdf946560', N'e2678c3f-c64f-4206-8ffc-f4b7200bfbf2', N'bd151437-5e18-4681-bd71-c3118d454f3b', CAST(1.00 AS Decimal(12, 2)), CAST(10500.00 AS Decimal(12, 2)), CAST(10500.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'21fbe7c7-a6d5-4cdc-8e4d-51475a30b668', N'0ef88122-73ee-424a-90d6-a873f846ed47', N'c3f1e88e-86af-43c0-bfd2-97ef402a347b', CAST(1.00 AS Decimal(12, 2)), CAST(3500.00 AS Decimal(12, 2)), CAST(3500.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'31AA28DA-2630-4680-89D7-70B5B14DCE32', N'b76ae3f1-139f-4e65-8561-6b9215eb8fc7', N'7b61c8c4-06ff-4429-a2f8-88e9f9a1ac6d', CAST(1.00 AS Decimal(12, 2)), CAST(26000.00 AS Decimal(12, 2)), CAST(26000.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'34B3C2CC-C77B-4596-8867-6C4C6193D9F1', N'e2678c3f-c64f-4206-8ffc-f4b7200bfbf2', N'bd151437-5e18-4681-bd71-c3118d454f3b', CAST(1.00 AS Decimal(12, 2)), CAST(10500.00 AS Decimal(12, 2)), CAST(10500.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'378f07c3-e7cb-463c-a519-a344de51f6a9', N'0cfe76e1-d852-47c2-b125-5b18089f2a4b', N'748b00ad-3999-402b-bee4-f6c16e8ae3c9', CAST(1.00 AS Decimal(12, 2)), CAST(55000.00 AS Decimal(12, 2)), CAST(55000.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'395d402b-c138-440a-97e6-435e0584b8d6', N'9dbb195f-c2ff-4086-ba77-4ecd7f9ef126', N'9C4D2A21-DB1C-4D70-9B9C-68B5C5A052A2', CAST(1.00 AS Decimal(12, 2)), CAST(20600.00 AS Decimal(12, 2)), CAST(20600.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'45ad651b-b0e6-4dc2-84dd-e49abadc706a', N'cc192094-1e53-405d-84fb-4f5a490c1e49', N'2E5C1524-948B-4106-BB03-7FACBAD5C92B', CAST(1.00 AS Decimal(12, 2)), CAST(42000.00 AS Decimal(12, 2)), CAST(42000.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'4C549709-6772-4235-856F-54C5D449E086', N'b76ae3f1-139f-4e65-8561-6b9215eb8fc7', N'2ddcd5e8-0099-44eb-a0ea-d920ac3f6ec1', CAST(1.00 AS Decimal(12, 2)), CAST(12800.00 AS Decimal(12, 2)), CAST(12800.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'4cd92a8d-6938-47f3-931a-ce96865db8a6', N'507d2544-ebc8-4114-8af8-d1ed28b576b7', N'bd151437-5e18-4681-bd71-c3118d454f3b', CAST(1.00 AS Decimal(12, 2)), CAST(10500.00 AS Decimal(12, 2)), CAST(10500.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'4f8306fa-db44-48c4-8ae3-9f44200928bd', N'a377917e-5559-4fc9-9100-aefba845683a', N'cbc4f18a-f899-42b0-bfe4-1b00b736208a', CAST(1.00 AS Decimal(12, 2)), CAST(50000.00 AS Decimal(12, 2)), CAST(50000.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'52e704dd-5c16-4957-8844-1e2b3f9af20f', N'd9557cd9-7484-4416-a5b7-56b6187d2de6', N'2E5C1524-948B-4106-BB03-7FACBAD5C92B', CAST(1.00 AS Decimal(12, 2)), CAST(42000.00 AS Decimal(12, 2)), CAST(42000.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'57021d95-7b34-4407-b1c2-b1964ec21e8b', N'73e38051-8eab-4637-9dea-49e61b434bc8', N'2E5C1524-948B-4106-BB03-7FACBAD5C92B', CAST(1.00 AS Decimal(12, 2)), CAST(42000.00 AS Decimal(12, 2)), CAST(42000.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'5a312dfb-058f-4305-808c-3ed099deba85', N'507d2544-ebc8-4114-8af8-d1ed28b576b7', N'2E5C1524-948B-4106-BB03-7FACBAD5C92B', CAST(1.00 AS Decimal(12, 2)), CAST(42000.00 AS Decimal(12, 2)), CAST(42000.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'60caa6a4-5c31-43c8-9cc3-bd3e3ab89b25', N'c47a1a3a-4d79-4583-9ffe-2ace01de62ad', N'c3f1e88e-86af-43c0-bfd2-97ef402a347b', CAST(1.00 AS Decimal(12, 2)), CAST(3500.00 AS Decimal(12, 2)), CAST(3500.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'720727c0-78cc-4478-9b17-ef8a56fef425', N'b76ae3f1-139f-4e65-8561-6b9215eb8fc7', N'cbc4f18a-f899-42b0-bfe4-1b00b736208a', CAST(1.00 AS Decimal(12, 2)), CAST(50000.00 AS Decimal(12, 2)), CAST(50000.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'7423ec52-e0e1-4284-af7a-2375ed04673c', N'73e38051-8eab-4637-9dea-49e61b434bc8', N'c3f1e88e-86af-43c0-bfd2-97ef402a347b', CAST(1.00 AS Decimal(12, 2)), CAST(3500.00 AS Decimal(12, 2)), CAST(3500.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'7654e34d-fa0d-4af2-8572-a85817f4501f', N'0ef88122-73ee-424a-90d6-a873f846ed47', N'9C4D2A21-DB1C-4D70-9B9C-68B5C5A052A2', CAST(1.00 AS Decimal(12, 2)), CAST(20600.00 AS Decimal(12, 2)), CAST(20600.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'7e061c12-7af3-4f2e-ae3b-b14d5e784c1b', N'54a61e8b-f2db-4db6-b2df-0bf4ad6aef56', N'9C4D2A21-DB1C-4D70-9B9C-68B5C5A052A2', CAST(1.00 AS Decimal(12, 2)), CAST(20600.00 AS Decimal(12, 2)), CAST(20600.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'7f05e6c9-5ded-4814-a2d0-04d8bb3341a3', N'c47a1a3a-4d79-4583-9ffe-2ace01de62ad', N'2E5C1524-948B-4106-BB03-7FACBAD5C92B', CAST(1.00 AS Decimal(12, 2)), CAST(42000.00 AS Decimal(12, 2)), CAST(42000.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'837037bc-3aba-445c-bfd6-125066f9c81a', N'54a61e8b-f2db-4db6-b2df-0bf4ad6aef56', N'2E5C1524-948B-4106-BB03-7FACBAD5C92B', CAST(1.00 AS Decimal(12, 2)), CAST(42000.00 AS Decimal(12, 2)), CAST(42000.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'8e65950c-9c61-443f-9d2c-66c8a2aeeb1a', N'e2678c3f-c64f-4206-8ffc-f4b7200bfbf2', N'2fc65f7f-2af9-4f14-8120-c7374fd4fa39', CAST(1.00 AS Decimal(12, 2)), CAST(20000.00 AS Decimal(12, 2)), CAST(20000.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'939c5a81-346b-4888-9908-3636b953ec06', N'96f7a967-d622-45c4-bb7d-62b26f869500', N'748b00ad-3999-402b-bee4-f6c16e8ae3c9', CAST(1.00 AS Decimal(12, 2)), CAST(55000.00 AS Decimal(12, 2)), CAST(55000.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'94F5E748-B3B3-4451-960A-862D7AB8B155', N'b76ae3f1-139f-4e65-8561-6b9215eb8fc7', N'cbc4f18a-f899-42b0-bfe4-1b00b736208a', CAST(1.00 AS Decimal(12, 2)), CAST(50000.00 AS Decimal(12, 2)), CAST(50000.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'9b26a7e2-20a7-4a48-9b71-30230bdabb13', N'b76ae3f1-139f-4e65-8561-6b9215eb8fc7', N'7b61c8c4-06ff-4429-a2f8-88e9f9a1ac6d', CAST(1.00 AS Decimal(12, 2)), CAST(26000.00 AS Decimal(12, 2)), CAST(26000.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'a11d8a61-4181-49eb-b408-ae50f868600c', N'8875b76a-286d-486b-87bb-5f371df63ced', N'2E5C1524-948B-4106-BB03-7FACBAD5C92B', CAST(1.00 AS Decimal(12, 2)), CAST(42000.00 AS Decimal(12, 2)), CAST(42000.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'a3224aef-7a35-4a49-9d91-a729e6e84ade', N'cc192094-1e53-405d-84fb-4f5a490c1e49', N'c3f1e88e-86af-43c0-bfd2-97ef402a347b', CAST(1.00 AS Decimal(12, 2)), CAST(3500.00 AS Decimal(12, 2)), CAST(3500.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'A4CCEF5A-E16F-483C-950E-9FC9BE222D61', N'b76ae3f1-139f-4e65-8561-6b9215eb8fc7', N'322c0ac7-6739-4099-b4ae-44ae11dfe0de', CAST(1.00 AS Decimal(12, 2)), CAST(16000.00 AS Decimal(12, 2)), CAST(16000.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'a5440f38-fbc3-429d-816d-b2a0934777d9', N'9dbb195f-c2ff-4086-ba77-4ecd7f9ef126', N'748b00ad-3999-402b-bee4-f6c16e8ae3c9', CAST(1.00 AS Decimal(12, 2)), CAST(55000.00 AS Decimal(12, 2)), CAST(55000.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'A778B142-7432-460B-ADAA-5007AAA82DB8', N'e2678c3f-c64f-4206-8ffc-f4b7200bfbf2', N'2fc65f7f-2af9-4f14-8120-c7374fd4fa39', CAST(1.00 AS Decimal(12, 2)), CAST(20000.00 AS Decimal(12, 2)), CAST(20000.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'a9343c29-bf98-476f-bc6a-d670a0a351e1', N'ad3c36c5-dcca-46e1-b3d1-851d12c34ec3', N'2ddcd5e8-0099-44eb-a0ea-d920ac3f6ec1', CAST(1.00 AS Decimal(12, 2)), CAST(12800.00 AS Decimal(12, 2)), CAST(12800.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'a936dd24-7a25-4812-b0bb-238ff789c02f', N'ad3c36c5-dcca-46e1-b3d1-851d12c34ec3', N'7b61c8c4-06ff-4429-a2f8-88e9f9a1ac6d', CAST(1.00 AS Decimal(12, 2)), CAST(26000.00 AS Decimal(12, 2)), CAST(26000.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'ab5b8e01-9fde-4609-8d3b-4aacb65e77d6', N'b76ae3f1-139f-4e65-8561-6b9215eb8fc7', N'2ddcd5e8-0099-44eb-a0ea-d920ac3f6ec1', CAST(1.00 AS Decimal(12, 2)), CAST(12800.00 AS Decimal(12, 2)), CAST(12800.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'b442fdce-801d-4742-ad43-94962e1e9a2f', N'816e520a-6f76-41e5-be5a-2f2f12a38502', N'2E5C1524-948B-4106-BB03-7FACBAD5C92B', CAST(1.00 AS Decimal(12, 2)), CAST(42000.00 AS Decimal(12, 2)), CAST(42000.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'b8c3c4a8-c08c-4d2f-9df7-1c3e3d894704', N'96f7a967-d622-45c4-bb7d-62b26f869500', N'2E5C1524-948B-4106-BB03-7FACBAD5C92B', CAST(1.00 AS Decimal(12, 2)), CAST(42000.00 AS Decimal(12, 2)), CAST(42000.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'be5dbd86-3e84-4760-93be-761ae431755d', N'b76ae3f1-139f-4e65-8561-6b9215eb8fc7', N'322c0ac7-6739-4099-b4ae-44ae11dfe0de', CAST(1.00 AS Decimal(12, 2)), CAST(16000.00 AS Decimal(12, 2)), CAST(16000.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'c18fb609-402f-40dc-8b3a-23eb4e531281', N'9dbb195f-c2ff-4086-ba77-4ecd7f9ef126', N'2E5C1524-948B-4106-BB03-7FACBAD5C92B', CAST(1.00 AS Decimal(12, 2)), CAST(42000.00 AS Decimal(12, 2)), CAST(42000.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'c6c4e261-9ca6-448d-bad3-1fe9802f975b', N'9dbb195f-c2ff-4086-ba77-4ecd7f9ef126', N'c3f1e88e-86af-43c0-bfd2-97ef402a347b', CAST(1.00 AS Decimal(12, 2)), CAST(3500.00 AS Decimal(12, 2)), CAST(3500.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'c8a181b8-0a4a-4af9-963c-a0f119fea75d', N'96f7a967-d622-45c4-bb7d-62b26f869500', N'9C4D2A21-DB1C-4D70-9B9C-68B5C5A052A2', CAST(1.00 AS Decimal(12, 2)), CAST(20600.00 AS Decimal(12, 2)), CAST(20600.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'd488a32a-0695-4a40-80fd-46675a6d21a0', N'cc192094-1e53-405d-84fb-4f5a490c1e49', N'748b00ad-3999-402b-bee4-f6c16e8ae3c9', CAST(1.00 AS Decimal(12, 2)), CAST(55000.00 AS Decimal(12, 2)), CAST(55000.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'd5ce2a1c-6ca6-4928-870e-7d050056a750', N'3f79d468-f8e0-4f4a-89c3-74ebd5c9048e', N'9C4D2A21-DB1C-4D70-9B9C-68B5C5A052A2', CAST(1.00 AS Decimal(12, 2)), CAST(20600.00 AS Decimal(12, 2)), CAST(20600.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'dbedfb11-e70f-482a-9957-e5a1b4632d57', N'2f6bcbb0-716e-4e99-8258-14d4c6bbbede', N'2E5C1524-948B-4106-BB03-7FACBAD5C92B', CAST(2.00 AS Decimal(12, 2)), CAST(42000.00 AS Decimal(12, 2)), CAST(84000.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'dc46eed8-2117-46fb-9a9a-9b046b28c0a1', N'816e520a-6f76-41e5-be5a-2f2f12a38502', N'748b00ad-3999-402b-bee4-f6c16e8ae3c9', CAST(1.00 AS Decimal(12, 2)), CAST(55000.00 AS Decimal(12, 2)), CAST(55000.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'dd8092ca-98a5-4e09-8044-5abc5dee27a0', N'8875b76a-286d-486b-87bb-5f371df63ced', N'748b00ad-3999-402b-bee4-f6c16e8ae3c9', CAST(1.00 AS Decimal(12, 2)), CAST(55000.00 AS Decimal(12, 2)), CAST(55000.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'dd895454-7858-4fce-b8bb-d5b7f5770921', N'96f7a967-d622-45c4-bb7d-62b26f869500', N'c3f1e88e-86af-43c0-bfd2-97ef402a347b', CAST(1.00 AS Decimal(12, 2)), CAST(3500.00 AS Decimal(12, 2)), CAST(3500.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'e79203e1-c9ca-4d58-a0fd-8f9b7df6b90e', N'cc192094-1e53-405d-84fb-4f5a490c1e49', N'9C4D2A21-DB1C-4D70-9B9C-68B5C5A052A2', CAST(1.00 AS Decimal(12, 2)), CAST(20600.00 AS Decimal(12, 2)), CAST(20600.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'ee87128d-a92d-4ffb-996e-52f8a85d7bce', N'd9557cd9-7484-4416-a5b7-56b6187d2de6', N'748b00ad-3999-402b-bee4-f6c16e8ae3c9', CAST(1.00 AS Decimal(12, 2)), CAST(55000.00 AS Decimal(12, 2)), CAST(55000.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'eec8e823-82f8-4163-9156-6e6fd47d1c62', N'2f6bcbb0-716e-4e99-8258-14d4c6bbbede', N'9C4D2A21-DB1C-4D70-9B9C-68B5C5A052A2', CAST(1.00 AS Decimal(12, 2)), CAST(20600.00 AS Decimal(12, 2)), CAST(20600.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'f53e8b4e-8159-4a34-8bc0-210fd87a39fd', N'7505433c-4fb5-4e78-9663-9767ccc3dc71', N'9C4D2A21-DB1C-4D70-9B9C-68B5C5A052A2', CAST(1.00 AS Decimal(12, 2)), CAST(20600.00 AS Decimal(12, 2)), CAST(20600.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice], [TotalPrice]) VALUES (N'fc55dd77-ee20-407c-a607-f272025e4079', N'3f79d468-f8e0-4f4a-89c3-74ebd5c9048e', N'2E5C1524-948B-4106-BB03-7FACBAD5C92B', CAST(1.00 AS Decimal(12, 2)), CAST(42000.00 AS Decimal(12, 2)), CAST(42000.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Product] ([Id], [ProductName], [Category], [Size], [Price], [ImageName], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status], [OutOfStock]) VALUES (N'1623f247-d2de-488c-b54b-5d8d181d8a6f', N'Black & Decker Drip Coffee Maker', N'131A5B67-549C-4A67-A5F6-829BBDD1FA83', N'Black & Decker 1 Cup Drip Coffee Maker DCM25', CAST(4050.00 AS Decimal(12, 2)), N'BD-DCM25-01.jpg', CAST(N'2021-09-06T00:15:34.4002149' AS DateTime2), N'Admin', NULL, NULL, 1, 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [Category], [Size], [Price], [ImageName], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status], [OutOfStock]) VALUES (N'2ddcd5e8-0099-44eb-a0ea-d920ac3f6ec1', N'Fabric High Back Chair ', N'B8795CBF-A092-495D-AB6D-8E2FBC7E376C', N'Chair H026-BU-S - Blue', CAST(12800.00 AS Decimal(12, 2)), N'WF-DOC-H026-BU-S_01.jpg', CAST(N'2021-09-04T02:16:24.5950988' AS DateTime2), N'Admin', NULL, NULL, 1, 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [Category], [Size], [Price], [ImageName], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status], [OutOfStock]) VALUES (N'2E5C1524-948B-4106-BB03-7FACBAD5C92B', N'TCL 32 inch LED Smart TV', N'131A5B67-549C-4A67-A5F6-829BBDD1FA83', N'32 inch LED Samrt TV', CAST(42000.00 AS Decimal(12, 2)), N'TCLLED32.jpg', CAST(N'2021-08-29T13:14:52.6200000' AS DateTime2), N'Admin', CAST(N'2021-09-07T01:48:53.7107940' AS DateTime2), N'Admin', 1, 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [Category], [Size], [Price], [ImageName], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status], [OutOfStock]) VALUES (N'2fc65f7f-2af9-4f14-8120-c7374fd4fa39', N'LEO Office Table With Drawer & Cupboard', N'B8795CBF-A092-495D-AB6D-8E2FBC7E376C', N'60 x 75 x 120 (W x H x L) cm', CAST(20000.00 AS Decimal(12, 2)), N'LF-LEO-12023-SHW.jpg', CAST(N'2021-09-04T02:12:00.0647850' AS DateTime2), N'Admin', NULL, NULL, 1, 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [Category], [Size], [Price], [ImageName], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status], [OutOfStock]) VALUES (N'322c0ac7-6739-4099-b4ae-44ae11dfe0de', N'Sony Portable Bluetooth Speaker', N'131A5B67-549C-4A67-A5F6-829BBDD1FA83', N'Extra Bass Portable Bluetooth Speaker (Black)', CAST(16000.00 AS Decimal(12, 2)), N'SNY_SRS-XB12-BLC-01.jpg', CAST(N'2021-09-05T01:14:42.2334649' AS DateTime2), N'Admin', NULL, NULL, 1, 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [Category], [Size], [Price], [ImageName], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status], [OutOfStock]) VALUES (N'748b00ad-3999-402b-bee4-f6c16e8ae3c9', N'Tefal Fry Delight Precision Air Fryer', N'131A5B67-549C-4A67-A5F6-829BBDD1FA83', N'Fryers - 1400W - 800g/ 2.8L', CAST(55000.00 AS Decimal(12, 2)), N'TEF_TF-FX112027-01.jpg', CAST(N'2021-09-01T02:04:19.3366439' AS DateTime2), N'Admin', NULL, NULL, 1, 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [Category], [Size], [Price], [ImageName], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status], [OutOfStock]) VALUES (N'7b61c8c4-06ff-4429-a2f8-88e9f9a1ac6d', N'LEO L Shape Office Table  ', N'B8795CBF-A092-495D-AB6D-8E2FBC7E376C', N'160x155x75 With Drawer & Cupboard', CAST(26000.00 AS Decimal(12, 2)), N'LF-LEO-LTAB-WNG.jpg', CAST(N'2021-09-04T02:13:14.9125941' AS DateTime2), N'Admin', NULL, NULL, 1, 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [Category], [Size], [Price], [ImageName], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status], [OutOfStock]) VALUES (N'9C4D2A21-DB1C-4D70-9B9C-68B5C5A052A2', N'Google Smart TV Kit', N'131A5B67-549C-4A67-A5F6-829BBDD1FA83', N'Height 10 cm Length 22 cm Width 9 cm', CAST(20600.00 AS Decimal(12, 2)), N'GoogleSmartTV.jpg', CAST(N'2021-08-29T13:14:52.6200000' AS DateTime2), N'SYSTEM', NULL, NULL, 1, 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [Category], [Size], [Price], [ImageName], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status], [OutOfStock]) VALUES (N'bd151437-5e18-4681-bd71-c3118d454f3b', N'Office Chair - Fabric Typist Chair', N'B8795CBF-A092-495D-AB6D-8E2FBC7E376C', N'Typist Chair T009-MR-S - Maroon', CAST(10500.00 AS Decimal(12, 2)), N'WF-DOC-T009-MR.jpg', CAST(N'2021-09-04T02:08:33.3525793' AS DateTime2), N'Admin', NULL, NULL, 1, 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [Category], [Size], [Price], [ImageName], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status], [OutOfStock]) VALUES (N'c3f1e88e-86af-43c0-bfd2-97ef402a347b', N'Unic Steam Iron 2000W', N'131A5B67-549C-4A67-A5F6-829BBDD1FA83', N'Steam Iron - 2000W', CAST(3500.00 AS Decimal(12, 2)), N'UNC_USI-ATC-302-01_zoom.jpg', CAST(N'2021-09-01T02:07:45.7660000' AS DateTime2), N'Admin', CAST(N'2021-09-07T01:49:19.5907078' AS DateTime2), N'Admin', 0, 1)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [Category], [Size], [Price], [ImageName], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status], [OutOfStock]) VALUES (N'cbc4f18a-f899-42b0-bfe4-1b00b736208a', N'TCL Android Smart 3 inch HD TV', N'131A5B67-549C-4A67-A5F6-829BBDD1FA83', N'32 inch 1366*768 HD 2K HDR Decoding', CAST(50000.00 AS Decimal(12, 2)), N'TCL_TCL32S65A-01_zoom.png', CAST(N'2021-09-05T00:50:25.5119114' AS DateTime2), N'Admin', NULL, NULL, 1, 0)
GO
INSERT [dbo].[ProductCategory] ([Id], [CategoryName], [Description], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (N'131A5B67-549C-4A67-A5F6-829BBDD1FA83', N'Electronics', N'Electronics', CAST(N'2021-09-04T00:42:36.7200000' AS DateTime2), N'SYSTEM', NULL, NULL)
GO
INSERT [dbo].[ProductCategory] ([Id], [CategoryName], [Description], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (N'B8795CBF-A092-495D-AB6D-8E2FBC7E376C', N'Furniture', N'Furniture', CAST(N'2021-09-04T01:19:27.7270000' AS DateTime2), N'SYSTEM', NULL, NULL)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 9/7/2021 3:17:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 9/7/2021 3:17:37 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 9/7/2021 3:17:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 9/7/2021 3:17:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 9/7/2021 3:17:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 9/7/2021 3:17:37 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 9/7/2021 3:17:37 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT (getdate()) FOR [OrderDate]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT ((0)) FOR [TotalAmount]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[OrderItem] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[OrderItem] ADD  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [OutOfStock]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderItemOrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_OrderItemOrderId]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderItemProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_OrderItemProductId]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_ProductCategoryId] FOREIGN KEY([Category])
REFERENCES [dbo].[ProductCategory] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_ProductCategoryId]
GO
USE [master]
GO
ALTER DATABASE [EcommerceDB] SET  READ_WRITE 
GO

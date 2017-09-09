/*
 Navicat Premium Data Transfer

 Source Server         : MSSQLSERVER
 Source Server Type    : SQL Server
 Source Server Version : 13004206
 Source Host           : localhost:1433
 Source Catalog        : PSMS2
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 13004206
 File Encoding         : 65001

 Date: 05/09/2017 14:11:56
*/


-- ----------------------------
-- Table structure for Customers
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND type IN ('U'))
	DROP TABLE [dbo].[Customers]
GO

CREATE TABLE [dbo].[Customers] (
  [CusID] int IDENTITY(1,1) NOT NULL,
  [CusCode] AS ('CUS'+right('0000'+CONVERT([nvarchar](5),[CusID]),(5))) PERSISTED NULL,
  [CusLNKH] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
  [CusFNKH] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
  [CusLNEN] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
  [CusFNEN] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
  [Gender] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Address] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Phone] nvarchar(13) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Phone2] nvarchar(13) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Email] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Balance] float(53) NULL,
  [Status] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Emp_ID] int NULL,
  [Acc_Opendate] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO

ALTER TABLE [dbo].[Customers] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [Customers]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Customers] ON
GO

INSERT INTO [dbo].[Customers] ([CusID], [CusLNKH], [CusFNKH], [CusLNEN], [CusFNEN], [Gender], [Address], [Phone], [Phone2], [Email], [Balance], [Status], [Emp_ID], [Acc_Opendate]) VALUES (N'1', N'លី', N'ហុង', N'Ly', N'Hong', N'Male', N'Takhmao', N'012656754', N'', N'', N'200.000000000000000', N'Active', N'0', N'7/1/2016')
GO

INSERT INTO [dbo].[Customers] ([CusID], [CusLNKH], [CusFNKH], [CusLNEN], [CusFNEN], [Gender], [Address], [Phone], [Phone2], [Email], [Balance], [Status], [Emp_ID], [Acc_Opendate]) VALUES (N'2', N'ថា', N'វី', N'Tha', N'Vy', N'Female', N'Takmao', N'098463354', N'', N'', N'0.000000000000000', N'Active', N'0', N'7/1/2016')
GO

INSERT INTO [dbo].[Customers] ([CusID], [CusLNKH], [CusFNKH], [CusLNEN], [CusFNEN], [Gender], [Address], [Phone], [Phone2], [Email], [Balance], [Status], [Emp_ID], [Acc_Opendate]) VALUES (N'5', N'លី', N'ហុង', N'Ly', N'Hong', N'Male', N'Takhmao', N'012656754', N'', N'', N'0.000000000000000', N'Active', N'0', N'7/1/2016')
GO

SET IDENTITY_INSERT [dbo].[Customers] OFF
GO


-- ----------------------------
-- Table structure for Employee
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type IN ('U'))
	DROP TABLE [dbo].[Employee]
GO

CREATE TABLE [dbo].[Employee] (
  [EmpID] int IDENTITY(1,1) NOT NULL,
  [EmpCode] AS ('EMP'+right('0000'+CONVERT([nvarchar](5),[EmpID]),(5))) PERSISTED NULL,
  [EmpLNKH] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
  [EmpFNKH] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
  [EmpLNEN] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
  [EmpFNEN] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
  [Gender] nvarchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [IDCard] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Address] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Phone] nvarchar(13) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Email] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [PosID] int NULL,
  [Salary] int NULL,
  [JoinDate] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Image] varbinary(max) NULL
)
GO

ALTER TABLE [dbo].[Employee] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [Employee]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Employee] ON
GO

INSERT INTO [dbo].[Employee] ([EmpID], [EmpLNKH], [EmpFNKH], [EmpLNEN], [EmpFNEN], [Gender], [IDCard], [Address], [Phone], [Email], [PosID], [Salary], [JoinDate], [Image]) VALUES (N'1', N'Sreng', N'សេងថៃ', N'Sreng', N'Sengthai', N'Male', N'', N'Takmao', N'', N'sreng.sengthai2@gmail.com', N'3', N'350', N'7/1/2016', NULL)
GO

SET IDENTITY_INSERT [dbo].[Employee] OFF
GO


-- ----------------------------
-- Table structure for Invoice
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoice]') AND type IN ('U'))
	DROP TABLE [dbo].[Invoice]
GO

CREATE TABLE [dbo].[Invoice] (
  [InvoiceNo] int IDENTITY(1,1) NOT NULL,
  [InvoiceCode] AS ('INV'+right('0000'+CONVERT([nvarchar](5),[InvoiceNo]),(5))) PERSISTED NULL,
  [CusID] int NULL,
  [EmpID] int NULL,
  [Date] datetime NULL,
  [TotalPrice] float(53) NULL,
  [Payment] float(53) NULL,
  [PaymentVerify] int NULL,
  [Profits] float(53) NULL,
  [Balance] float(53) NULL
)
GO

ALTER TABLE [dbo].[Invoice] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [Invoice]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Invoice] ON
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'1', N'1', N'1', N'2010-01-01 12:00:00.000', N'28.000000000000000', N'10.000000000000000', N'10', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'2', N'2', N'1', N'2010-01-01 12:00:00.000', N'764.000000000000000', N'10.000000000000000', N'10', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'5', N'2', N'1', N'2017-07-23 00:00:00.000', N'28.000000000000000', N'10.000000000000000', N'10', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'6', N'1', N'1', N'2017-07-23 00:00:00.000', N'750.000000000000000', N'10.000000000000000', N'10', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'7', N'1', N'1', N'2017-07-23 00:00:00.000', N'2250.000000000000000', N'2250.000000000000000', N'10', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'8', N'1', N'1', N'2017-07-23 00:00:00.000', N'750.000000000000000', N'700.000000000000000', N'0', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'9', N'1', N'1', N'2017-07-23 00:00:00.000', N'14.000000000000000', N'14.000000000000000', N'1', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'10', N'1', N'1', N'2017-07-23 00:00:00.000', N'210.000000000000000', N'0.000000000000000', N'0', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'11', N'2', N'1', N'2017-07-23 00:00:00.000', N'210.000000000000000', N'200.000000000000000', N'0', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'12', N'2', N'1', N'2017-07-23 00:00:00.000', N'210.000000000000000', N'200.000000000000000', N'0', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'13', N'1', N'1', N'2017-07-23 00:00:00.000', N'210.000000000000000', N'200.000000000000000', N'0', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'14', N'2', N'1', N'2017-07-23 00:00:00.000', N'210.000000000000000', N'180.000000000000000', N'0', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'15', N'2', N'1', N'2017-07-23 00:00:00.000', N'750.000000000000000', N'600.000000000000000', N'0', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'16', N'1', N'1', N'2017-07-23 00:00:00.000', N'1500.000000000000000', N'1000.000000000000000', N'0', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'17', N'2', N'1', N'2017-07-23 00:00:00.000', N'210.000000000000000', N'180.000000000000000', N'0', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'18', N'1', N'1', N'2017-07-23 00:00:00.000', N'210.000000000000000', N'100.000000000000000', N'0', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'19', N'1', N'1', N'2017-07-23 00:00:00.000', N'14.000000000000000', N'10.000000000000000', N'0', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'20', N'1', N'1', N'2017-07-23 00:00:00.000', N'750.000000000000000', N'600.000000000000000', N'0', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'21', N'1', N'1', N'2017-07-23 00:00:00.000', N'210.000000000000000', N'200.000000000000000', N'0', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'22', N'1', N'1', N'2017-07-23 00:00:00.000', N'210.000000000000000', N'200.000000000000000', N'0', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'23', N'1', N'1', N'2017-07-23 00:00:00.000', N'14.000000000000000', N'4.000000000000000', N'0', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'24', N'1', N'1', N'2017-07-23 00:00:00.000', N'14.000000000000000', N'4.000000000000000', N'0', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'25', N'1', N'1', N'2017-07-23 00:00:00.000', N'14.000000000000000', N'4.000000000000000', N'0', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'26', N'1', N'1', N'2017-07-23 00:00:00.000', N'14.000000000000000', N'4.000000000000000', N'0', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'27', N'1', N'1', N'2017-07-24 00:00:00.000', N'14.000000000000000', N'10.000000000000000', N'0', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'28', N'1', N'1', N'2017-07-24 00:00:00.000', N'750.000000000000000', N'700.000000000000000', N'0', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'29', N'1', N'1', N'2017-07-24 00:00:00.000', N'750.000000000000000', N'700.000000000000000', N'0', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'30', N'1', N'1', N'2017-07-24 00:00:00.000', N'210.000000000000000', N'10.000000000000000', N'0', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'31', N'1', N'1', N'2017-07-25 00:00:00.000', N'750.000000000000000', N'650.000000000000000', N'0', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'32', N'1', N'1', N'2017-07-25 00:00:00.000', N'210.000000000000000', N'10.000000000000000', N'0', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'33', N'1', N'1', N'2017-07-25 00:00:00.000', N'750.000000000000000', N'350.000000000000000', N'0', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'34', N'1', N'1', N'2017-07-25 00:00:00.000', N'850.000000000000000', N'850.000000000000000', N'1', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'35', N'2', N'1', N'2017-07-25 00:00:00.000', N'960.000000000000000', N'900.000000000000000', N'0', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'36', N'1', N'1', N'2017-07-25 00:00:00.000', N'210.000000000000000', N'210.000000000000000', N'1', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'37', N'2', N'1', NULL, N'210.000000000000000', N'210.000000000000000', N'1', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'1037', N'1', N'1', N'2017-07-27 00:00:00.000', N'14.000000000000000', N'14.000000000000000', N'1', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'1038', N'2', N'1', N'2017-07-27 00:00:00.000', N'14.000000000000000', N'10.000000000000000', N'0', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'1039', N'1', N'1', N'2017-07-27 00:00:00.000', N'14.000000000000000', N'10.000000000000000', N'0', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'1040', N'2', N'1', N'2017-07-28 00:00:00.000', N'1088.000000000000000', N'1000.000000000000000', N'0', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'1041', N'2', N'1', N'2017-07-28 00:00:00.000', N'764.000000000000000', N'764.000000000000000', N'1', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'1042', N'1', N'1', N'2017-07-28 00:00:00.000', N'448.000000000000000', N'448.000000000000000', N'1', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'1043', N'1', N'1', N'2017-07-29 00:00:00.000', N'28.000000000000000', N'28.000000000000000', N'1', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'1044', N'1', N'1', N'2017-07-29 00:00:00.000', N'1728.000000000000000', N'1728.000000000000000', N'1', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'1045', N'1', N'1', N'2017-07-29 00:00:00.000', N'448.000000000000000', N'448.000000000000000', N'1', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'1046', N'1', N'1', N'2017-07-29 00:00:00.000', N'448.000000000000000', N'448.000000000000000', N'1', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'1047', N'1', N'1', N'2017-08-03 00:00:00.000', N'238.000000000000000', N'238.000000000000000', N'1', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'1048', N'1', N'1', N'2017-08-03 00:00:00.000', N'960.000000000000000', N'960.000000000000000', N'1', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'1049', N'1', N'1', N'2017-08-08 00:00:00.000', N'24.000000000000000', N'24.000000000000000', N'1', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'1050', N'1', N'1', N'2017-08-11 00:00:00.000', N'28.000000000000000', N'28.000000000000000', N'1', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'1051', N'1', N'1', N'2017-08-11 00:00:00.000', N'448.000000000000000', N'448.000000000000000', N'1', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'1052', N'1', N'1', N'2017-08-11 00:00:00.000', N'84.000000000000000', N'84.000000000000000', N'1', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'1053', N'1', N'1', N'2017-08-11 00:00:00.000', N'28.000000000000000', N'28.000000000000000', N'1', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'1054', N'1', N'1', N'2017-08-26 00:00:00.000', N'3200.000000000000000', N'3200.000000000000000', N'1', NULL, NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'1055', N'1', N'1', N'2017-08-26 00:00:00.000', N'750.000000000000000', N'650.000000000000000', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'1056', N'1', N'1', N'2017-08-26 00:00:00.000', N'850.000000000000000', N'750.000000000000000', N'0', NULL, N'100.000000000000000')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'1057', N'1', N'1', N'2017-08-26 00:00:00.000', N'210.000000000000000', N'110.000000000000000', N'0', NULL, N'100.000000000000000')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'1058', N'1', N'1', N'2017-08-26 00:00:00.000', N'210.000000000000000', N'110.000000000000000', N'0', NULL, N'100.000000000000000')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'1059', N'1', N'1', N'2017-08-26 00:00:00.000', N'750.000000000000000', N'650.000000000000000', N'0', NULL, N'200.000000000000000')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'1060', N'2', N'1', N'2017-08-26 00:00:00.000', N'850.000000000000000', N'750.000000000000000', N'0', NULL, N'100.000000000000000')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'1061', N'2', N'1', N'2017-08-26 00:00:00.000', N'750.000000000000000', N'650.000000000000000', N'0', NULL, N'100.000000000000000')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'1062', N'2', N'1', N'2017-08-26 00:00:00.000', N'850.000000000000000', N'750.000000000000000', N'0', NULL, N'100.000000000000000')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'1063', N'2', N'1', N'2017-08-26 00:00:00.000', N'750.000000000000000', N'650.000000000000000', N'0', NULL, N'100.000000000000000')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'1064', N'2', N'1', N'2017-08-26 00:00:00.000', N'750.000000000000000', N'650.000000000000000', N'0', NULL, N'100.000000000000000')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceNo], [CusID], [EmpID], [Date], [TotalPrice], [Payment], [PaymentVerify], [Profits], [Balance]) VALUES (N'1065', N'2', N'1', N'2017-08-26 00:00:00.000', N'850.000000000000000', N'750.000000000000000', N'0', NULL, N'100.000000000000000')
GO

SET IDENTITY_INSERT [dbo].[Invoice] OFF
GO


-- ----------------------------
-- Table structure for InvoiceDetail
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[InvoiceDetail]') AND type IN ('U'))
	DROP TABLE [dbo].[InvoiceDetail]
GO

CREATE TABLE [dbo].[InvoiceDetail] (
  [InvoiceNo] int NULL,
  [PID] int NULL,
  [Quantity] int NULL,
  [Saleprice] float(53) NULL,
  [Amount] int NULL
)
GO

ALTER TABLE [dbo].[InvoiceDetail] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [InvoiceDetail]
-- ----------------------------
INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'1', N'2', N'14.000000000000000', NULL)
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'1', N'1', N'14.000000000000000', NULL)
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'1', N'2', N'14.000000000000000', NULL)
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'4', N'2', N'850.000000000000000', NULL)
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'1', N'2', N'14.000000000000000', N'28')
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'1', N'1', N'14.000000000000000', NULL)
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'2', N'1', N'750.000000000000000', NULL)
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'1', N'2', N'14.000000000000000', NULL)
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'3', N'2', N'210.000000000000000', NULL)
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'3', N'2', N'210.000000000000000', N'420')
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'3', N'2', N'210.000000000000000', N'420')
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'1', N'2', N'14.000000000000000', N'28')
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'1', N'2', N'14.000000000000000', N'28')
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'3', N'1', N'210.000000000000000', N'210')
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'3', N'1', N'210.000000000000000', N'210')
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'2', N'1', N'750.000000000000000', N'750')
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'1', N'2', N'12.000000000000000', N'24')
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'1', N'2', N'14.000000000000000', N'28')
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'1', N'2', N'14.000000000000000', N'28')
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'3', N'2', N'210.000000000000000', N'420')
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'1', N'6', N'14.000000000000000', N'84')
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'1', N'2', N'14.000000000000000', N'28')
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'2', N'2', N'750.000000000000000', N'1500')
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'4', N'2', N'850.000000000000000', N'1700')
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'2', N'1', N'750.000000000000000', N'750')
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'4', N'1', N'850.000000000000000', N'850')
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'3', N'1', N'210.000000000000000', N'210')
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'3', N'1', N'210.000000000000000', N'210')
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'2', N'1', N'750.000000000000000', N'750')
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'4', N'1', N'850.000000000000000', N'850')
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'4', N'1', N'850.000000000000000', N'850')
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'2', N'1', N'750.000000000000000', N'750')
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'4', N'1', N'850.000000000000000', N'850')
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'2', N'1', N'750.000000000000000', N'750')
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'2', N'1', N'750.000000000000000', N'750')
GO

INSERT INTO [dbo].[InvoiceDetail]  VALUES (NULL, N'4', N'1', N'850.000000000000000', N'850')
GO


-- ----------------------------
-- Table structure for Model
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Model]') AND type IN ('U'))
	DROP TABLE [dbo].[Model]
GO

CREATE TABLE [dbo].[Model] (
  [MID] int IDENTITY(1,1) NOT NULL,
  [MCode] AS ('M'+right('0000'+CONVERT([nvarchar](5),[MID]),(5))) PERSISTED NULL,
  [Description] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO

ALTER TABLE [dbo].[Model] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [Model]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Model] ON
GO

INSERT INTO [dbo].[Model] ([MID], [Description]) VALUES (N'1', N'Nokia')
GO

INSERT INTO [dbo].[Model] ([MID], [Description]) VALUES (N'2', N'LG')
GO

INSERT INTO [dbo].[Model] ([MID], [Description]) VALUES (N'3', N'Apple')
GO

INSERT INTO [dbo].[Model] ([MID], [Description]) VALUES (N'4', N'Samsung')
GO

INSERT INTO [dbo].[Model] ([MID], [Description]) VALUES (N'5', N'CamFone')
GO

INSERT INTO [dbo].[Model] ([MID], [Description]) VALUES (N'6', N'HTC')
GO

INSERT INTO [dbo].[Model] ([MID], [Description]) VALUES (N'7', N'Sony')
GO

INSERT INTO [dbo].[Model] ([MID], [Description]) VALUES (N'8', N'Motorola')
GO

SET IDENTITY_INSERT [dbo].[Model] OFF
GO


-- ----------------------------
-- Table structure for Phone_Type
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Phone_Type]') AND type IN ('U'))
	DROP TABLE [dbo].[Phone_Type]
GO

CREATE TABLE [dbo].[Phone_Type] (
  [PTypeID] int IDENTITY(1,1) NOT NULL,
  [PTypeCode] AS ('PT'+right('0000'+CONVERT([nvarchar](5),[PTypeID]),(5))) PERSISTED NULL,
  [Description] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO

ALTER TABLE [dbo].[Phone_Type] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [Phone_Type]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Phone_Type] ON
GO

INSERT INTO [dbo].[Phone_Type] ([PTypeID], [Description]) VALUES (N'1', N'Touchscreen')
GO

INSERT INTO [dbo].[Phone_Type] ([PTypeID], [Description]) VALUES (N'2', N'Dialpad')
GO

SET IDENTITY_INSERT [dbo].[Phone_Type] OFF
GO


-- ----------------------------
-- Table structure for Position
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Position]') AND type IN ('U'))
	DROP TABLE [dbo].[Position]
GO

CREATE TABLE [dbo].[Position] (
  [PosID] int IDENTITY(1,1) NOT NULL,
  [PosCode] AS ('POS'+right('0000'+CONVERT([nvarchar](5),[PosID]),(5))) PERSISTED NULL,
  [PosName] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)
GO

ALTER TABLE [dbo].[Position] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [Position]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Position] ON
GO

INSERT INTO [dbo].[Position] ([PosID], [PosName]) VALUES (N'1', N'Saler')
GO

INSERT INTO [dbo].[Position] ([PosID], [PosName]) VALUES (N'2', N'Manager')
GO

INSERT INTO [dbo].[Position] ([PosID], [PosName]) VALUES (N'3', N'Admin')
GO

SET IDENTITY_INSERT [dbo].[Position] OFF
GO


-- ----------------------------
-- Table structure for Product
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type IN ('U'))
	DROP TABLE [dbo].[Product]
GO

CREATE TABLE [dbo].[Product] (
  [PID] int IDENTITY(1,1) NOT NULL,
  [PCode] AS ('P'+right('0000'+CONVERT([nvarchar](5),[PID]),(5))) PERSISTED NULL,
  [PName] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [PSize] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Color] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Quantity] int NULL,
  [MID] int NULL,
  [PTypeID] int NULL,
  [TID] int NULL,
  [Saleprice] float(53) NULL,
  [Unitprice] float(53) NULL,
  [Image] varbinary(max) NULL
)
GO

ALTER TABLE [dbo].[Product] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [Product]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Product] ON
GO

INSERT INTO [dbo].[Product] ([PID], [PName], [PSize], [Color], [Quantity], [MID], [PTypeID], [TID], [Saleprice], [Unitprice], [Image]) VALUES (N'1', N'1280', N'', N'Blue', N'25', N'1', N'2', N'1', N'14.000000000000000', N'10.000000000000000', NULL)
GO

INSERT INTO [dbo].[Product] ([PID], [PName], [PSize], [Color], [Quantity], [MID], [PTypeID], [TID], [Saleprice], [Unitprice], [Image]) VALUES (N'2', N'Galaxy S7', N'32GB', N'Sliver', N'10', N'4', N'1', N'1', N'750.000000000000000', N'600.000000000000000', NULL)
GO

INSERT INTO [dbo].[Product] ([PID], [PName], [PSize], [Color], [Quantity], [MID], [PTypeID], [TID], [Saleprice], [Unitprice], [Image]) VALUES (N'3', N'One M8', N'16GB', N'Gold', N'6', N'6', N'1', N'1', N'210.000000000000000', N'190.000000000000000', NULL)
GO

INSERT INTO [dbo].[Product] ([PID], [PName], [PSize], [Color], [Quantity], [MID], [PTypeID], [TID], [Saleprice], [Unitprice], [Image]) VALUES (N'4', N'Galaxy S8 ', N'32GB', N'Gold', N'3', N'4', N'1', N'1', N'850.000000000000000', N'800.000000000000000', NULL)
GO

SET IDENTITY_INSERT [dbo].[Product] OFF
GO


-- ----------------------------
-- Table structure for Purchase
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Purchase]') AND type IN ('U'))
	DROP TABLE [dbo].[Purchase]
GO

CREATE TABLE [dbo].[Purchase] (
  [PurID] int IDENTITY(1,1) NOT NULL,
  [PurCode] AS ('PUR'+right('0000'+CONVERT([nvarchar](5),[PurID]),(5))) PERSISTED NULL,
  [Date] datetime NULL,
  [Payment] float(53) NULL,
  [Balance] float(53) NULL,
  [SuID] int NULL,
  [EmpID] int NULL,
  [Total] float(53) NULL
)
GO

ALTER TABLE [dbo].[Purchase] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [Purchase]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Purchase] ON
GO

INSERT INTO [dbo].[Purchase] ([PurID], [Date], [Payment], [Balance], [SuID], [EmpID], [Total]) VALUES (N'1', N'2017-08-27 00:00:00.000', N'0.000000000000000', N'18.000000000000000', N'1', N'1', N'18.000000000000000')
GO

INSERT INTO [dbo].[Purchase] ([PurID], [Date], [Payment], [Balance], [SuID], [EmpID], [Total]) VALUES (N'2', N'2017-08-28 00:00:00.000', N'90.000000000000000', N'0.000000000000000', N'1', N'1', N'90.000000000000000')
GO

INSERT INTO [dbo].[Purchase] ([PurID], [Date], [Payment], [Balance], [SuID], [EmpID], [Total]) VALUES (N'3', N'2017-08-28 00:00:00.000', N'1200.000000000000000', N'0.000000000000000', N'1', N'1', N'1200.000000000000000')
GO

INSERT INTO [dbo].[Purchase] ([PurID], [Date], [Payment], [Balance], [SuID], [EmpID], [Total]) VALUES (N'4', N'2017-08-28 00:00:00.000', N'90.000000000000000', N'10.000000000000000', N'1', N'1', N'100.000000000000000')
GO

SET IDENTITY_INSERT [dbo].[Purchase] OFF
GO


-- ----------------------------
-- Table structure for PurchaseDetail
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[PurchaseDetail]') AND type IN ('U'))
	DROP TABLE [dbo].[PurchaseDetail]
GO

CREATE TABLE [dbo].[PurchaseDetail] (
  [PurID] int NULL,
  [PID] int NULL,
  [Quantity] int NULL,
  [Unitprice] float(53) NULL,
  [Saleprice] float(53) NULL,
  [Amount] int NULL
)
GO

ALTER TABLE [dbo].[PurchaseDetail] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [PurchaseDetail]
-- ----------------------------
INSERT INTO [dbo].[PurchaseDetail]  VALUES (NULL, N'1', N'2', N'14.000000000000000', N'9.000000000000000', N'18')
GO

INSERT INTO [dbo].[PurchaseDetail]  VALUES (NULL, N'1', N'10', N'14.000000000000000', N'9.000000000000000', N'90')
GO

INSERT INTO [dbo].[PurchaseDetail]  VALUES (NULL, N'1', N'5', N'9.000000000000000', N'14.000000000000000', N'45')
GO

INSERT INTO [dbo].[PurchaseDetail]  VALUES (NULL, N'2', N'5', N'550.000000000000000', N'750.000000000000000', N'2750')
GO

INSERT INTO [dbo].[PurchaseDetail]  VALUES (NULL, N'2', N'2', N'600.000000000000000', N'750.000000000000000', N'1200')
GO

INSERT INTO [dbo].[PurchaseDetail]  VALUES (NULL, N'1', N'10', N'10.000000000000000', N'14.000000000000000', N'100')
GO


-- ----------------------------
-- Table structure for Supplier
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Supplier]') AND type IN ('U'))
	DROP TABLE [dbo].[Supplier]
GO

CREATE TABLE [dbo].[Supplier] (
  [SuID] int IDENTITY(1,1) NOT NULL,
  [SuCode] AS ('SU'+right('0000'+CONVERT([nvarchar](5),[SuID]),(5))) PERSISTED NULL,
  [SuLNKH] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
  [SuFNKH] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
  [SuLNEN] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
  [SuFNEN] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
  [Gender] nvarchar(7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Address] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Phone] nvarchar(14) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Phone2] nvarchar(14) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Email] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Fax] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Fax2] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Balance] float(53) NULL
)
GO

ALTER TABLE [dbo].[Supplier] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [Supplier]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Supplier] ON
GO

INSERT INTO [dbo].[Supplier] ([SuID], [SuLNKH], [SuFNKH], [SuLNEN], [SuFNEN], [Gender], [Address], [Phone], [Phone2], [Email], [Fax], [Fax2], [Balance]) VALUES (N'1', N'ខេម', N'ហ្វូន', N'Camfone', N'Camfone', N'Male', N'Phnom Penh', N'', N'', NULL, N'', N'', N'0.000000000000000')
GO

SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO


-- ----------------------------
-- Table structure for sysdiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sysdiagrams]') AND type IN ('U'))
	DROP TABLE [dbo].[sysdiagrams]
GO

CREATE TABLE [dbo].[sysdiagrams] (
  [name] sysname NOT NULL,
  [principal_id] int NOT NULL,
  [diagram_id] int IDENTITY(1,1) NOT NULL,
  [version] int NULL,
  [definition] varbinary(max) NULL
)
GO

ALTER TABLE [dbo].[sysdiagrams] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [sysdiagrams]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sysdiagrams] ON
GO

INSERT INTO [dbo].[sysdiagrams] ([name], [principal_id], [diagram_id], [version], [definition]) VALUES (N'Diagram_0', N'1', N'1', N'1', 0xD0CF11E0A1B11AE1000000000000000000000000000000003E000300FEFF0900060000000000000000000000010000000100000000000000001000000200000001000000FEFFFFFF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFF1F000000FEFFFFFF0400000005000000060000000700000008000000320000000A0000000B0000000C0000000D0000000E0000000F000000100000001100000012000000130000001400000015000000160000001700000018000000190000001A0000001B0000001C0000001D0000001E000000FEFFFFFFFEFFFFFF2100000022000000230000002400000025000000260000002700000028000000290000002A0000002B0000002C0000002D0000002E0000002F0000003000000031000000FEFFFFFF3300000034000000FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52006F006F007400200045006E00740072007900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016000500FFFFFFFFFFFFFFFF0200000000000000000000000000000000000000000000000000000000000000307F326726FED10103000000C0100000000000006600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000201FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000420B0000000000006F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040002010100000004000000FFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000009000000962B000000000000010043006F006D0070004F0062006A0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012000201FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000002E0000005F000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A0000000B0000000C0000000D0000000E0000000F000000100000001100000012000000130000001400000015000000160000001700000018000000190000001A0000001B0000001C0000001D0000001E0000001F000000200000002100000022000000230000002400000025000000260000002700000028000000290000002A0000002B0000002C0000002D000000FEFFFFFF2F000000FEFFFFFFFEFFFFFF32000000330000003400000035000000360000003700000038000000390000003A0000003B0000003C0000003D0000003E0000003F0000004000000041000000FEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000434000A1E500C05000080290000000F00FFFF3200000029000000007D000099870000BE3800003188010035C70000E42500008381FFFFDE805B10F195D011B0A000AA00BDCB5C0000080030000000000200000300000038002B00000009000000D9E6B0E91C81D011AD5100A0C90F5739F43B7F847F61C74385352986E1D552F8A0327DB2D86295428D98273C25A2DA2D00002C0043200000000000000000000053444DD2011FD1118E63006097D2DF4834C9D2777977D811907000065B840D9C00002C0043200000000000000000000051444DD2011FD1118E63006097D2DF4834C9D2777977D811907000065B840D9C25000000480A000000A5015400003400A50900000700008001000000A402000000800000090000805363684772696400AC7100002086FFFF437573746F6D65727300000000003000A50900000700008002000000A202000000800000080000805363684772696400546F000078D3FFFF456D706C6F79656500003000A50900000700008003000000A002000000800000070000805363684772696465E0C400007081FFFF496E766F6963656500003800A50900000700008004000000AC020000008000000D000080536368477269646594F20000A0ABFFFF496E766F69636544657461696C08000000003000A509000007000080050000009C02000000800000050000805363684772696465EA500100BA64FFFF4D6F64656C69646500003400A50900000700008006000000A6020000008000000A00008053636847726964006E540100808FFFFF50686F6E655F54797065616900003000A50900000700008007000000A2020000008000000800008053636847726964658E4400003AD5FFFF506F736974696F6E00003000A50900000700008008000000A00200000080000007000080536368477269640040190100B06EFFFF50726F647563740000003000A50900000700008009000000A20200000080000008000080536368477269646EDC310100D6A2FFFF507572636861736500003800A5090000070000800A000000AE020000008000000E00008053636847726964650A22010018CAFFFF507572636861736544657461696C000000003000A5090000070000800B000000A202000000800000080000805363684772696465F86F01007EA0FFFF537570706C69657200002C00A5090000070000800C0000009A020000008000000400008053636847726964007C7301002275FFFF5479706500003000A5090000070000800D0000009C02000000800000050000805363684772696472D4DF0000A4D4FFFF557365727369647200007000A5090000070000800E000000620000000180000045000080436F6E74726F6C0096A40000A388FFFF52656C6174696F6E736869702027464B5F496E766F6963655F437573746F6D65727327206265747765656E2027437573746F6D6572732720616E642027496E766F6963652700000000002800B5010000070000800F000000310000005B00000002800000436F6E74726F6C003FA80000198CFFFF00006C00A50900000700008010000000620000000180000043000080436F6E74726F6C7243AB000081A3FFFF52656C6174696F6E736869702027464B5F496E766F6963655F456D706C6F79656527206265747765656E2027456D706C6F7965652720616E642027496E766F696365270000002800B50100000700008011000000310000005900000002800000436F6E74726F6C72D7B9000089BDFFFF00007000A509000007000080120000005A0000000180000045000080436F6E74726F6C723B59000091E0FFFF52656C6174696F6E736869702027464B5F456D706C6F7965655F506F736974696F6E27206265747765656E2027506F736974696F6E2720616E642027456D706C6F7965652700000000002800B50100000700008013000000310000005B00000002800000436F6E74726F6C72476300001DF8FFFF00007800A5090000070000801400000062000000018000004D000080436F6E74726F6C00C5EA00002DA4FFFF52656C6174696F6E736869702027464B5F496E766F69636544657461696C5F496E766F69636527206265747765656E2027496E766F6963652720616E642027496E766F69636544657461696C27852C1100002800B50100000700008015000000310000006300000002800000436F6E74726F6C72DFE0000073A6FFFF00007800A5090000070000801600000072000000018000004D000080436F6E74726F6C72360A01009D70FFFF52656C6174696F6E736869702027464B5F496E766F69636544657461696C5F50726F6475637427206265747765656E202750726F647563742720616E642027496E766F69636544657461696C2700000000002800B50100000700008017000000310000006300000002800000436F6E74726F6C7269FE00008189FFFF00006800A5090000070000801800000062000000018000003D000080436F6E74726F6C726B410100D367FFFF52656C6174696F6E736869702027464B5F50726F647563745F4D6F64656C27206265747765656E20274D6F64656C2720616E64202750726F647563742700000000002800B50100000700008019000000310000005300000002800000436F6E74726F6C00374101005D73FFFF00007000A5090000070000801A000000620000000180000047000080436F6E74726F6C726B410100BF88FFFF52656C6174696F6E736869702027464B5F50726F647563745F50686F6E655F5479706527206265747765656E202750686F6E655F547970652720616E64202750726F64756374270000002800B5010000070000801B000000310000005D00000002800000436F6E74726F6C00784301007595FFFF00006400A5090000070000801C00000062000000018000003B000080436F6E74726F6C726B410100A577FFFF52656C6174696F6E736869702027464B5F50726F647563745F5479706527206265747765656E2027547970652720616E64202750726F64756374277400002800B5010000070000801D000000310000005100000002800000436F6E74726F6C00C7500100867EFFFF00007C00A50900000700008020000000820000000180000051000080436F6E74726F6C00CF1B0100C3A4FFFF52656C6174696F6E736869702027464B5F507572636861736544657461696C5F507572636861736527206265747765656E202750757263686173652720616E642027507572636861736544657461696C2702000000002800B50100000700008021000000310000006700000002800000436F6E74726F6C005A170100A3A8FFFF00007000A50900000700008022000000820000000180000045000080436F6E74726F6C00744E010087A3FFFF52656C6174696F6E736869702027464B5F50757263686173655F537570706C69657227206265747765656E2027537570706C6965722720616E64202750757263686173652700000000002800B50100000700008023000000310000005B00000002800000436F6E74726F6C002C53010029ABFFFF00007000A50900000700008024000000820000000180000045000080436F6E74726F6C0094AC00009FB7FFFF52656C6174696F6E736869702027464B5F50757263686173655F456D706C6F79656527206265747765656E2027456D706C6F7965652720616E64202750757263686173652700000000002800B50100000700008025000000310000005B00000002800000436F6E74726F6C00CFDD000032C5FFFF00007800A5090000070000802800000062000000018000004F000080436F6E74726F6C72EA120100C971FFFF52656C6174696F6E736869702027464B5F507572636861736544657461696C5F50726F6475637427206265747765656E202750726F647563742720616E642027507572636861736544657461696C270000002800B50100000700008029000000310000006500000002800000436F6E74726F6C72880401001BA6FFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100FEFF030A0000FFFFFFFF00000000000000000000000000000000170000004D6963726F736F66742044445320466F726D20322E300010000000456D626564646564204F626A6563740000000000F439B271000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000214334120800000016340000BE35000078563412070000001401000043007500730074006F006D00650072007300000061002C002000560065007200730069006F006E003D0034002E0030002E0030002E0030002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D00620037003700610035006300350036003100390033003400650030003800390000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000A7290000DD230000000000002D0100000D0000000C000000070000001C010000F708000053070000A40100000D02000068010000DD0400000C030000D10100000C030000DE030000A3020000000000000100000016340000BE350000000000000F0000000C00000002000000020000001C010000F41A00000000000001000000F21300004E06000000000000010000000100000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000005C00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000A00000043007500730074006F006D00650072007300000021433412080000006C3E00006731000078563412070000001401000045006D0070006C006F007900650065000000000078382C110000000078382C1108B16009050000000000000003000000000000000000000000010000000100000000000098629E72D036A872A026DF72D83FA772B082EE0510AAA772B83FA772D83FA77298629E7240619E721B2C066C580600800000000038000000000200002F002F0000000000F4C5D7740D00FFFF0300000009000100030000001300FFFF04000000110001000400000000000000E8C5D7741300FFFF050000006900630072006F0073006F0066007400250032003000530051004C002500320030005300650072007600650072002F003100000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000A7290000DD230000000000002D0100000D0000000C000000070000001C010000F708000053070000A40100000D02000068010000DD0400000C030000D10100000C030000DE030000A302000000000000010000006C3E000067310000000000000E0000000C00000002000000020000001C010000D02000000000000001000000F21300004E06000000000000010000000100000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000005A00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000900000045006D0070006C006F007900650065000000214334120800000011270000CC24000078563412070000001401000049006E0076006F00690063006500000009000000B0BE501100000000B0BE5011D8AF600907000000000000000E0000000000000000000000000100000001000000000000EC609E7298629E7290619E72D83FA772B082EE0510AAA772B83FA772D83FA77270ABEE0510AAA772B83FA772D83FA77298629E7240619E72785C1F71A45C1F71A45C1F71AC5C1F71AC5C1F71CC5C1F71CC5C1F71B05D1F71B05D1F71B85D1F71B85D1F71FC5D1F71FC5D1F71045E1F71045E1F710C5E1F710C5E1F712C5E1F712C5E1F71945E1F71945E1F719C5E1F719C5E1F71F8621F71F8621F7124631F7124631F7138631F713863000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000A7290000511F0000000000002D0100000B0000000C000000070000001C010000F708000053070000A40100000D02000068010000DD0400000C030000D10100000C030000DE030000A3020000000000000100000011270000CC24000000000000090000000900000002000000020000001C010000921300000000000001000000F21300004E06000000000000010000000100000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000005800000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000800000049006E0076006F0069006300650000002143341208000000CE1800004214000078563412070000001401000049006E0076006F00690063006500440065007400610069006C00000061006D002000460069006C00650073002000280078003800360029002F004D006900630072006F0073006F00660074002000530051004C0020005300650072007600650072002F003100310030002F0054006F006F006C0073002F00420069006E006E002F004D0061006E006100670065006D0065006E007400530074007500640069006F002F0045007800740065006E00730069006F006E0073002F004100700070006C00690063006100740069006F006E002F0065006E002F004D006900630072006F0073006F00660074002E005300000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000A729000039160000000000002D010000070000000C000000070000001C010000F708000053070000A40100000D02000068010000DD0400000C030000D10100000C030000DE030000A30200000000000001000000CE1800004214000000000000040000000400000002000000020000001C0100007C0B00000000000001000000F21300000804000000000000000000000000000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000006400000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000E00000049006E0076006F00690063006500440065007400610069006C0000002143341208000000C41D0000C71100007856341207000000140100004D006F00640065006C0000002B00000000000000002B80D5FFFFFFFFFFFFFFD5802B0000000000002B80D5AA5500000000002B80D5FFD5802B0000000055AAFFFFAA5500000000002B80D5FFAA5500000000000000000000000000000055AAFFFFAA5500000055AAFFD5802B00000000002B80D5FFFFFFAA55000000000000000000000000002B80D5FFAA550000002B80D5FFAA5500000055AAFFFFD58080AAFFD5802B0000000000000000000055AAFFFFAA5500000000002B80D5FFAA5555AAFFFFAA5500000055AAFFD5802B0000000000002B80D5FFFFAA5500000000000000000055AAFFFFFFD5802B0000000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000A729000039160000000000002D010000070000000C000000070000001C010000F708000053070000A40100000D02000068010000DD0400000C030000D10100000C030000DE030000A30200000000000001000000C41D0000C711000000000000030000000300000002000000020000001C0100004C0E00000000000001000000F21300004E06000000000000010000000100000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000005400000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000060000004D006F00640065006C00000021433412080000007E1B000055100000785634120700000014010000500068006F006E0065005F00540079007000650000006F006700720061006D002000460069006C00650073002000280078003800360029002F004D006900630072006F0073006F00660074002000530051004C0020005300650072007600650072002F003100310030002F0054006F006F006C0073002F00420069006E006E002F004D0061006E006100670065006D0065006E007400530074007500640069006F002F004900440045002F00500072006900760061007400650041007300730065006D0062006C006900650073002F0065006E002F004D006900630072006F0073006F00660074002E0053007100000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000A729000039160000000000002D010000070000000C000000070000001C010000F708000053070000A40100000D02000068010000DD0400000C030000D10100000C030000DE030000A302000000000000010000007E1B00005510000000000000030000000300000002000000020000001C010000020D00000000000001000000F21300004E06000000000000010000000100000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000005E00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000B000000500068006F006E0065005F005400790070006500000021433412080000000B1A00000E0E000078563412070000001401000050006F0073006900740069006F006E0000000000002B80D5FFFFFFFFFFFFFFD5802B0000000000002B80D5FFAA5500000000000000000000000000000055AAFFFFAA5500000000002B80D5FFAA55000000002B80D5FFAA55000000000000000000000000000055AAFFD5802B00000000002B80D5FFFFFFAA550000002B80D5FFFFFFFFFFFFFFFFFFD5802B000000002B80D5FFAA5500000055AAFFFFD58080AAFFD5802B0000000000000000000000002B80D5FFFFAA5500002B80D5FFAA5555AAFFFFAA5500000055AAFFD5802B000000000000000000000000002B80D5FFD5802B000055AAFFFFFFD5802B0000000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000A729000039160000000000002D010000070000000C000000070000001C010000F708000053070000A40100000D02000068010000DD0400000C030000D10100000C030000DE030000A302000000000000010000000B1A00000E0E000000000000030000000300000002000000020000001C010000300C00000000000001000000F21300004E06000000000000010000000100000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000005A00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000900000050006F0073006900740069006F006E000000214334120800000057290000FF2A0000785634120700000014010000500072006F006400750063007400000000000000002B80D5FFFFFFFFFFFFFFD5802B00000000000055AAFFD5802B2B80D5FFAA5500000000000000000055AAFFFFAA5500000000002B80D5FFAA55000000000000000000002B80D5FFAA55000000000000000055AAFFD5802B00000000002B80D5FFFFFFAA550000000000000000002B80D5FFAA55000000000000002B80D5FFAA5500000055AAFFFFD58080AAFFD5802B00000000000000002B80D5FFAA55000000000000002B80D5FFAA5555AAFFFFAA5500000055AAFFD5802B00000000000000002B80D5FFAA55000000000000000055AAFFFFFFD5802B0000000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000A7290000DD230000000000002D0100000D0000000C000000070000001C010000F708000053070000A40100000D02000068010000DD0400000C030000D10100000C030000DE030000A3020000000000000100000057290000FF2A0000000000000B0000000B00000002000000020000001C010000DC1400000000000001000000F21300004E06000000000000010000000100000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000005800000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F00000008000000500072006F00640075006300740000002143341208000000C41D0000742000007856341207000000140100005000750072006300680061007300650000000000000000000080944000000000000010400100000000000000000000000E000000050000001801000000000000000000000000000000000000F80000000000000005000000000000000000000002000000000000000080944000000000000000000000000000809440000000000000004004000000200000003000000000000000000000000078944000000000000010400000000000000040000000000000004000000000000000000100000000000000050000000000000040000000010000000000000000000040000000000000104004000000200000002000000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000A72900000B1D0000000000002D0100000A0000000C000000070000001C010000F708000053070000A40100000D02000068010000DD0400000C030000D10100000C030000DE030000A30200000000000001000000C41D00007420000000000000080000000800000002000000020000001C0100004C0E00000000000001000000F21300004E06000000000000010000000100000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000005A00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000090000005000750072006300680061007300650000002143341208000000C12900007714000078563412070000001401000050007500720063006800610073006500440065007400610069006C0000006D002000460069006C00650073002000280078003800360029002F004D006900630072006F0073006F00660074002000530051004C0020005300650072007600650072002F003100310030002F0054006F006F006C0073002F00420069006E006E002F004D0061006E006100670065006D0065006E007400530074007500640069006F002F0045007800740065006E00730069006F006E0073002F004100700070006C00690063006100740069006F006E002F0065006E002F004D006900630072006F0073006F00660074002E005300000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000A729000039160000000000002D010000070000000C000000070000001C010000F708000053070000A40100000D02000068010000DD0400000C030000D10100000C030000DE030000A30200000000000001000000C12900007714000000000000050000000500000002000000020000001C010000181500000000000001000000F21300000804000000000000000000000000000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000006600000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000F00000050007500720063006800610073006500440065007400610069006C0000002143341208000000952A00002936000078563412070000001401000053007500700070006C006900650072000000000055AAFFFFFFFFFFFFFFFFFFD5802B00000000000055AAFFD5802B2B80D5FFAA55000000000000000000000000000000000000002B80D5FFD5802B000000000000000000002B80D5FFAA55000000000000000000000000000000000000002B80D5FFAA5500000000000000000000002B80D5FFAA5500000000000000000000000055AAFFFFFFFFFFFFD5802B000000000000000000000000002B80D5FFAA55000000000000000000000000000000000000000055AAFFFFAA55000000000000000000002B80D5FFAA55000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000A7290000DD230000000000002D0100000D0000000C000000070000001C010000F708000053070000A40100000D02000068010000DD0400000C030000D10100000C030000DE030000A30200000000000001000000952A000029360000000000000F0000000C00000002000000020000001C010000901500000000000001000000F21300004E06000000000000010000000100000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000005A00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000900000053007500700070006C0069006500720000002143341208000000491B0000C41D0000785634120700000014010000540079007000650000002F0043003A002F00500072006F006700720061006D002000460069006C00650073002000280078003800360029002F004D006900630072006F0073006F00660074002000530051004C0020005300650072007600650072002F003100310030002F0054006F006F006C0073002F00420069006E006E002F004D0061006E006100670065006D0065006E007400530074007500640069006F002F004900440045002F00500072006900760061007400650041007300730065006D0062006C006900650073002F0065006E002F004D006900630072006F0073006F00660074002E0053007100000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000A729000039160000000000002D010000070000000C000000070000001C010000F708000053070000A40100000D02000068010000DD0400000C030000D10100000C030000DE030000A30200000000000001000000491B0000C41D000000000000030000000300000002000000020000001C010000E40C00000000000001000000F21300004E06000000000000010000000100000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000005200000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F00000005000000540079007000650000002143341208000000361F0000F3100000785634120700000014010000550073006500720073000000000000000000F03F00000000000034400000000000405A400100000000000000000000000E00000005000000180100000000000000000000000000000000F03FE800000000000000050000000000000000000000010000000000000000803240000000000000F03F0400000020000000200000000000000000000000000034400000000000000440000000000000F83F000000000000F83F000000000000000001000000000000000500000000000000400000000100000000000000000034400000000000E059400400000020000000200000000000000000000000008032400000000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000A729000039160000000000002D010000070000000C000000070000001C010000F708000053070000A40100000D02000068010000DD0400000C030000D10100000C030000DE030000A30200000000000001000000361F0000F310000000000000040000000400000002000000020000001C0100001E0F00000000000001000000F21300004E06000000000000010000000100000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000005400000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000600000055007300650072007300000004000B00C2A500003A8AFFFF51B500003A8AFFFF51B50000928CFFFFE0C40000928CFFFF0000000002000000F0F0F00000000000000000000000000000000000010000000F000000000000003FA80000198CFFFF630C00005801000032000000010000020000630C000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61140046004B005F0049006E0076006F006900630065005F0043007500730074006F006D0065007200730004000B00DAAC000078D3FFFFDAAC0000DABCFFFF76C50000DABCFFFF76C500003CA6FFFF0000000002000000F0F0F00000000000000000000000000000000000010000001100000000000000D7B9000089BDFFFFD40B00005801000032000000010000020000D40B000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61130046004B005F0049006E0076006F006900630065005F0045006D0070006C006F0079006500650003000B00D25A000048E3FFFFD25A000024FAFFFF546F000024FAFFFF0000000002000000F0F0F00000000000000000000000000000000000010000001300000000000000476300001DF8FFFF0D0C000058010000640000000100000200000D0C000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61140046004B005F0045006D0070006C006F007900650065005F0050006F0073006900740069006F006E0004000B00F1EB0000C4A5FFFFACEE0000C4A5FFFFACEE000036ACFFFF94F2000036ACFFFF0000000002000000F0F0F00000000000000000000000000000000000010000001500000000000000DFE0000073A6FFFFA10D00005801000014000000010000020000A10D000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61180046004B005F0049006E0076006F00690063006500440065007400610069006C005F0049006E0076006F0069006300650006000B00401901003472FFFF7E1701003472FFFF7E1701002472FFFFF20C01002472FFFFF20C0100BAAFFFFF620B0100BAAFFFFF0000000002000000F0F0F0000000000000000000000000000000000001000000170000000000000069FE00008189FFFFDA0D00005801000032000000010000020000DA0D000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61180046004B005F0049006E0076006F00690063006500440065007400610069006C005F00500072006F00640075006300740004000B00EA5001006A69FFFFEC4B01006A69FFFFEC4B01000682FFFF974201000682FFFF0000000002000000F0F0F00000000000000000000000000000000000010000001900000000000000374101005D73FFFF060A0000580100002C000000010000020000060A000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61100046004B005F00500072006F0064007500630074005F004D006F00640065006C0004000B006E540100C694FFFF834B0100C694FFFF834B01003A8AFFFF974201003A8AFFFF0000000002000000F0F0F00000000000000000000000000000000000010000001B00000000000000784301007595FFFFA10D0000580100000B000000010000020000A10D000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61150046004B005F00500072006F0064007500630074005F00500068006F006E0065005F00540079007000650004000B007C7301003C79FFFF095B01003C79FFFF095B0100E287FFFF97420100E287FFFF0000000002000000F0F0F00000000000000000000000000000000000010000001D00000000000000C7500100867EFFFF9309000058010000320000000100000200009309000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D610F0046004B005F00500072006F0064007500630074005F00540079007000650008000B00DC3101005AA6FFFFB22701005AA6FFFFB2270100B1C6FFFFFB1C0100B1C6FFFFFB1C01003FCEFFFF482001003FCEFFFF48200100C8CEFFFF0A220100C8CEFFFF0000000002000000F0F0F000000000000000000000000000000000000100000021000000000000005A170100A3A8FFFFA90F00005801000016000000010000020000A90F000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D611A0046004B005F0050007500720063006800610073006500440065007400610069006C005F005000750072006300680061007300650008000B00F86F01002EA5FFFF366E01002EA5FFFF366E0100B3A4FFFF996D0100B3A4FFFF996D010017A5FFFFCC5F010017A5FFFFCC5F01002CB6FFFFA04F01002CB6FFFF0000000002000000F0F0F000000000000000000000000000000000000100000023000000000000002C53010029ABFFFFF10B00005801000032000000010000020000F10B000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61140046004B005F00500075007200630068006100730065005F0053007500700070006C0069006500720008000B00C0AD0000EAD9FFFF55C00000EAD9FFFF55C0000083C4FFFF65E9000083C4FFFF65E9000083C4FFFFA10F010083C4FFFFA10F01001AB9FFFFDC3101001AB9FFFF0000000002000000F0F0F00000000000000000000000000000000000010000002500000000000000CFDD000032C5FFFFD70C00005801000032000000010000020000D70C000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61140046004B005F00500075007200630068006100730065005F0045006D0070006C006F0079006500650004000B00401901006073FFFF161401006073FFFF1614010020D1FFFF0A22010020D1FFFF0000000002000000F0F0F00000000000000000000000000000000000010000002900000000000000880401001BA6FFFFDF0E00005801000032000000010000020000DF0E000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61190046004B005F0050007500720063006800610073006500440065007400610069006C005F00500072006F006400750063007400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000300440064007300530074007200650061006D000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000160002000300000006000000FFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000200000003A2200000000000053006300680065006D00610020005500440056002000440065006600610075006C0074000000000000000000000000000000000000000000000000000000000026000200FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000300000001600000000000000440053005200450046002D0053004300480045004D0041002D0043004F004E00540045004E0054005300000000000000000000000000000000000000000000002C0002010500000007000000FFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000031000000140400000000000053006300680065006D00610020005500440056002000440065006600610075006C007400200050006F007300740020005600360000000000000000000000000036000200FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000004200000012000000000000000C000000E42500008381FFFF0100260000007300630068005F006C006100620065006C0073005F00760069007300690062006C0065000000010000000B0000001E000000000000000000000000000000000000006400000000000000000000000000000000000000000000000000010000000100000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0036003900300030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C0031003600360035000000020000000200000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0038003400300030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C0031003600360035000000030000000300000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0035003000310030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C0031003600360035000000040000000400000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900340030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C0031003600360035000000050000000500000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0033003600360030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C0031003600360035000000060000000600000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0033003300330030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C0031003600360035000000070000000700000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0033003100320030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C0031003600360035000000080000000800000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0035003300340030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C0031003600360035000000090000000900000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0033003600360030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C00310036003600350000000A0000000A00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0035003400300030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C00310036003600350000000B0000000B00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0035003500320030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C00310036003600350000000C0000000C00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0033003300300030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C00310036003600350000000D0000000D00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0033003800370030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C00310036003600350000000E0000000E000000000000003A000000014A7F5401000000640062006F00000046004B005F0049006E0076006F006900630065005F0043007500730074006F006D0065007200730000000000000000000000C402000000000F0000000F0000000E0000000800000001673911E86739110000000000000000AD0F0000010000100000001000000000000000380000000100000001000000640062006F00000046004B005F0049006E0076006F006900630065005F0045006D0070006C006F0079006500650000000000000000000000C4020000000011000000110000001000000008000000016A3911E86A39110000000000000000AD0F00000100001200000012000000000000003A000000014A7F5401000000640062006F00000046004B005F0045006D0070006C006F007900650065005F0050006F0073006900740069006F006E0000000000000000000000C402000000001300000013000000120000000800000001693911286939110000000000000000AD0F0000010000140000001400000000000000420000000100000001000000640062006F00000046004B005F0049006E0076006F00690063006500440065007400610069006C005F0049006E0076006F0069006300650000000000000000000000C402000000001500000015000000140000000800000001543911285439110000000000000000AD0F0000010000160000001600000000000000420000000100000001000000640062006F00000046004B005F0049006E0076006F00690063006500440065007400610069006C005F00500072006F00640075006300740000000000000000000000C4020000000017000000170000001600000008000000014F3911A84F39110000000000000000AD0F0000010000180000001800000000000000320000000100000001000000640062006F00000046004B005F00500072006F0064007500630074005F004D006F00640065006C0000000000000000000000C402000000001900000019000000180000000800000001503911A85039110000000000000000AD0F00000100001A0000001A000000000000003C000000014A7F5401000000640062006F00000046004B005F00500072006F0064007500630074005F00500068006F006E0065005F00540079007000650000000000000000000000C402000000001B0000001B0000001A0000000800000001513911A85139110000000000000000AD0F00000100001C0000001C00000000000000300000000100000001000000640062006F00000046004B005F00500072006F0064007500630074005F00540079007000650000000000000000000000C402000000001D0000001D0000001C00000008000000014F3911E84F39110000000000000000AD0F000001000020000000200000000000000046000000011BD17401000000640062006F00000046004B005F0050007500720063006800610073006500440065007400610069006C005F005000750072006300680061007300650000000000000000000000C402000000002100000021000000200000000800000001503911E85039110000000000000000AD0F00000100002200000022000000000000003A000000014A7F5401000000640062006F00000046004B005F00500075007200630068006100730065005F0053007500700070006C0069006500720000000000000000000000C402000000002300000023000000220000000800000001693911686939110000000000000000AD0F00000100002400000024000000000000003A000000014A7F5401000000640062006F00000046004B005F00500075007200630068006100730065005F0045006D0070006C006F0079006500650000000000000000000000C402000000002500000025000000240000000800000001523911E85239110000000000000000AD0F0000010000280000002800000000000000440000000100000001000000640062006F00000046004B005F0050007500720063006800610073006500440065007400610069006C005F00500072006F00640075006300740000000000000000000000C4020000000029000000290000002800000008000000015D3911E85D39110000000000000000AD0F00000100003C0000000E0000000100000003000000BD000000A6000000240000000200000009000000E7000000AE000000100000000200000003000000D000000001000000140000000300000004000000FD0000005200000018000000050000000800000072000000CB0000001A00000006000000080000006C000000E70000001200000007000000020000004B0000005401000028000000080000000A00000098000000A2000000160000000800000004000000940000005F00000020000000090000000A0000006E0000009A000000220000000B000000090000009C000000A50000001C0000000C0000000800000066000000DF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010003000000000000000C0000000B0000004E61BC00000000000000000000000000000000000000000000000000000000000000000000000000000000000000DBE6B0E91C81D011AD5100A0C90F573900000200309D2D6726FED101020200001048450000000000000000000000000000000000660100004400610074006100200053006F0075007200630065003D004100520041004600410054005F004A0055004E0049004F0052003B0049006E0069007400690061006C00200043006100740061006C006F0067003D00500053004D00530032003B0049006E00740065006700720061007400650064002000530065006300750072006900740079003D0054007200750065003B004D0075006C007400690070006C00650041006300740069007600650052006500730075006C00740053006500740073003D00460061006C00730065003B005000610063006B00650074002000530069007A0065003D0034003000390036003B004100700070006C00690063006100740069006F006E0020004E0061006D0065003D0022004D006900630072006F0073006F00660074002000530051004C00200053006500720076006500720020004D0061006E006100670065006D0065006E0074002000530074007500640069006F002200000000800500140000004400690061006700720061006D005F0030000000000226001400000043007500730074006F006D00650072007300000008000000640062006F000000000226001200000045006D0070006C006F00790065006500000008000000640062006F000000000226001000000049006E0076006F00690063006500000008000000640062006F000000000226001C00000049006E0076006F00690063006500440065007400610069006C00000008000000640062006F000000000226000C0000004D006F00640065006C00000008000000640062006F0000000002260016000000500068006F006E0065005F005400790070006500000008000000640062006F000000000226001200000050006F0073006900740069006F006E00000008000000640062006F0000000002260010000000500072006F006400750063007400000008000000640062006F000000000226001200000050007500720063006800610073006500000008000000640062006F000000000226001E00000050007500720063006800610073006500440065007400610069006C00000008000000640062006F000000000226001200000053007500700070006C00690065007200000008000000640062006F000000000226000A0000005400790070006500000008000000640062006F000000000224000C00000055007300650072007300000008000000640062006F00000001000000D68509B3BB6BF2459AB8371664F0327008004E0000007B00310036003300340043004400440037002D0030003800380038002D0034003200450033002D0039004600410032002D004200360044003300320035003600330042003900310044007D0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010003000000000000000C0000000B00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000062885214)
GO

SET IDENTITY_INSERT [dbo].[sysdiagrams] OFF
GO


-- ----------------------------
-- Table structure for Type
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Type]') AND type IN ('U'))
	DROP TABLE [dbo].[Type]
GO

CREATE TABLE [dbo].[Type] (
  [TID] int IDENTITY(1,1) NOT NULL,
  [TCode] AS ('T'+right('0000'+CONVERT([nvarchar](5),[TID]),(5))) PERSISTED NULL,
  [Description] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO

ALTER TABLE [dbo].[Type] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [Type]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Type] ON
GO

INSERT INTO [dbo].[Type] ([TID], [Description]) VALUES (N'1', N'Phone')
GO

INSERT INTO [dbo].[Type] ([TID], [Description]) VALUES (N'2', N'Service')
GO

INSERT INTO [dbo].[Type] ([TID], [Description]) VALUES (N'3', N'Accessaies')
GO

SET IDENTITY_INSERT [dbo].[Type] OFF
GO


-- ----------------------------
-- Table structure for Users
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type IN ('U'))
	DROP TABLE [dbo].[Users]
GO

CREATE TABLE [dbo].[Users] (
  [UID] int IDENTITY(1,1) NOT NULL,
  [UCode] AS ('U'+right('0000'+CONVERT([nvarchar](5),[UID]),(5))) PERSISTED NULL,
  [UName] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Password] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO

ALTER TABLE [dbo].[Users] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [Users]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Users] ON
GO

INSERT INTO [dbo].[Users] ([UID], [UName], [Password]) VALUES (N'1', N'admin', N'123')
GO

SET IDENTITY_INSERT [dbo].[Users] OFF
GO


-- ----------------------------
-- Procedure structure for sp_upgraddiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_upgraddiagrams]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_upgraddiagrams]
GO

CREATE PROCEDURE [dbo].[sp_upgraddiagrams]
	AS
	BEGIN
		IF OBJECT_ID(N'dbo.sysdiagrams') IS NOT NULL
			return 0;
	
		CREATE TABLE dbo.sysdiagrams
		(
			name sysname NOT NULL,
			principal_id int NOT NULL,	-- we may change it to varbinary(85)
			diagram_id int PRIMARY KEY IDENTITY,
			version int,
	
			definition varbinary(max)
			CONSTRAINT UK_principal_name UNIQUE
			(
				principal_id,
				name
			)
		);


		/* Add this if we need to have some form of extended properties for diagrams */
		/*
		IF OBJECT_ID(N'dbo.sysdiagram_properties') IS NULL
		BEGIN
			CREATE TABLE dbo.sysdiagram_properties
			(
				diagram_id int,
				name sysname,
				value varbinary(max) NOT NULL
			)
		END
		*/

		IF OBJECT_ID(N'dbo.dtproperties') IS NOT NULL
		begin
			insert into dbo.sysdiagrams
			(
				[name],
				[principal_id],
				[version],
				[definition]
			)
			select	 
				convert(sysname, dgnm.[uvalue]),
				DATABASE_PRINCIPAL_ID(N'dbo'),			-- will change to the sid of sa
				0,							-- zero for old format, dgdef.[version],
				dgdef.[lvalue]
			from dbo.[dtproperties] dgnm
				inner join dbo.[dtproperties] dggd on dggd.[property] = 'DtgSchemaGUID' and dggd.[objectid] = dgnm.[objectid]	
				inner join dbo.[dtproperties] dgdef on dgdef.[property] = 'DtgSchemaDATA' and dgdef.[objectid] = dgnm.[objectid]
				
			where dgnm.[property] = 'DtgSchemaNAME' and dggd.[uvalue] like N'_EA3E6268-D998-11CE-9454-00AA00A3F36E_' 
			return 2;
		end
		return 1;
	END
GO


-- ----------------------------
-- Procedure structure for sp_helpdiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagrams]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_helpdiagrams]
GO

CREATE PROCEDURE [dbo].[sp_helpdiagrams]
	(
		@diagramname sysname = NULL,
		@owner_id int = NULL
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		DECLARE @user sysname
		DECLARE @dboLogin bit
		EXECUTE AS CALLER;
			SET @user = USER_NAME();
			SET @dboLogin = CONVERT(bit,IS_MEMBER('db_owner'));
		REVERT;
		SELECT
			[Database] = DB_NAME(),
			[Name] = name,
			[ID] = diagram_id,
			[Owner] = USER_NAME(principal_id),
			[OwnerID] = principal_id
		FROM
			sysdiagrams
		WHERE
			(@dboLogin = 1 OR USER_NAME(principal_id) = @user) AND
			(@diagramname IS NULL OR name = @diagramname) AND
			(@owner_id IS NULL OR principal_id = @owner_id)
		ORDER BY
			4, 5, 1
	END
GO


-- ----------------------------
-- Procedure structure for sp_helpdiagramdefinition
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagramdefinition]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_helpdiagramdefinition]
GO

CREATE PROCEDURE [dbo].[sp_helpdiagramdefinition]
	(
		@diagramname 	sysname,
		@owner_id	int	= null 		
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		set nocount on

		declare @theId 		int
		declare @IsDbo 		int
		declare @DiagId		int
		declare @UIDFound	int
	
		if(@diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner');
		if(@owner_id is null)
			select @owner_id = @theId;
		revert; 
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname;
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId ))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end

		select version, definition FROM dbo.sysdiagrams where diagram_id = @DiagId ; 
		return 0
	END
GO


-- ----------------------------
-- Procedure structure for sp_creatediagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_creatediagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_creatediagram]
GO

CREATE PROCEDURE [dbo].[sp_creatediagram]
	(
		@diagramname 	sysname,
		@owner_id		int	= null, 	
		@version 		int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId int
		declare @retval int
		declare @IsDbo	int
		declare @userName sysname
		if(@version is null or @diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID(); 
		select @IsDbo = IS_MEMBER(N'db_owner');
		revert; 
		
		if @owner_id is null
		begin
			select @owner_id = @theId;
		end
		else
		begin
			if @theId <> @owner_id
			begin
				if @IsDbo = 0
				begin
					RAISERROR (N'E_INVALIDARG', 16, 1);
					return -1
				end
				select @theId = @owner_id
			end
		end
		-- next 2 line only for test, will be removed after define name unique
		if EXISTS(select diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @diagramname)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end
	
		insert into dbo.sysdiagrams(name, principal_id , version, definition)
				VALUES(@diagramname, @theId, @version, @definition) ;
		
		select @retval = @@IDENTITY 
		return @retval
	END
GO


-- ----------------------------
-- Procedure structure for sp_renamediagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_renamediagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_renamediagram]
GO

CREATE PROCEDURE [dbo].[sp_renamediagram]
	(
		@diagramname 		sysname,
		@owner_id		int	= null,
		@new_diagramname	sysname
	
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @DiagIdTarg		int
		declare @u_name			sysname
		if((@diagramname is null) or (@new_diagramname is null))
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT;
	
		select @u_name = USER_NAME(@owner_id)
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		-- if((@u_name is not null) and (@new_diagramname = @diagramname))	-- nothing will change
		--	return 0;
	
		if(@u_name is null)
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @new_diagramname
		else
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @owner_id and name = @new_diagramname
	
		if((@DiagIdTarg is not null) and  @DiagId <> @DiagIdTarg)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end		
	
		if(@u_name is null)
			update dbo.sysdiagrams set [name] = @new_diagramname, principal_id = @theId where diagram_id = @DiagId
		else
			update dbo.sysdiagrams set [name] = @new_diagramname where diagram_id = @DiagId
		return 0
	END
GO


-- ----------------------------
-- Procedure structure for sp_alterdiagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_alterdiagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_alterdiagram]
GO

CREATE PROCEDURE [dbo].[sp_alterdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null,
		@version 	int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId 			int
		declare @retval 		int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @ShouldChangeUID	int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid ARG', 16, 1)
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();	 
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		revert;
	
		select @ShouldChangeUID = 0
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		
		if(@DiagId IS NULL or (@IsDbo = 0 and @theId <> @UIDFound))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end
	
		if(@IsDbo <> 0)
		begin
			if(@UIDFound is null or USER_NAME(@UIDFound) is null) -- invalid principal_id
			begin
				select @ShouldChangeUID = 1 ;
			end
		end

		-- update dds data			
		update dbo.sysdiagrams set definition = @definition where diagram_id = @DiagId ;

		-- change owner
		if(@ShouldChangeUID = 1)
			update dbo.sysdiagrams set principal_id = @theId where diagram_id = @DiagId ;

		-- update dds version
		if(@version is not null)
			update dbo.sysdiagrams set version = @version where diagram_id = @DiagId ;

		return 0
	END
GO


-- ----------------------------
-- Procedure structure for sp_dropdiagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_dropdiagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_dropdiagram]
GO

CREATE PROCEDURE [dbo].[sp_dropdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT; 
		
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		delete from dbo.sysdiagrams where diagram_id = @DiagId;
	
		return 0;
	END
GO


-- ----------------------------
-- Function structure for fn_diagramobjects
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_diagramobjects]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fn_diagramobjects]
GO

CREATE FUNCTION [dbo].[fn_diagramobjects]() 
	RETURNS int
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		declare @id_upgraddiagrams		int
		declare @id_sysdiagrams			int
		declare @id_helpdiagrams		int
		declare @id_helpdiagramdefinition	int
		declare @id_creatediagram	int
		declare @id_renamediagram	int
		declare @id_alterdiagram 	int 
		declare @id_dropdiagram		int
		declare @InstalledObjects	int

		select @InstalledObjects = 0

		select 	@id_upgraddiagrams = object_id(N'dbo.sp_upgraddiagrams'),
			@id_sysdiagrams = object_id(N'dbo.sysdiagrams'),
			@id_helpdiagrams = object_id(N'dbo.sp_helpdiagrams'),
			@id_helpdiagramdefinition = object_id(N'dbo.sp_helpdiagramdefinition'),
			@id_creatediagram = object_id(N'dbo.sp_creatediagram'),
			@id_renamediagram = object_id(N'dbo.sp_renamediagram'),
			@id_alterdiagram = object_id(N'dbo.sp_alterdiagram'), 
			@id_dropdiagram = object_id(N'dbo.sp_dropdiagram')

		if @id_upgraddiagrams is not null
			select @InstalledObjects = @InstalledObjects + 1
		if @id_sysdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 2
		if @id_helpdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 4
		if @id_helpdiagramdefinition is not null
			select @InstalledObjects = @InstalledObjects + 8
		if @id_creatediagram is not null
			select @InstalledObjects = @InstalledObjects + 16
		if @id_renamediagram is not null
			select @InstalledObjects = @InstalledObjects + 32
		if @id_alterdiagram  is not null
			select @InstalledObjects = @InstalledObjects + 64
		if @id_dropdiagram is not null
			select @InstalledObjects = @InstalledObjects + 128
		
		return @InstalledObjects 
	END
GO


-- ----------------------------
-- Primary Key structure for table Customers
-- ----------------------------
ALTER TABLE [dbo].[Customers] ADD CONSTRAINT [PK__Customer__2F187130B2F4C763] PRIMARY KEY CLUSTERED ([CusID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Employee
-- ----------------------------
ALTER TABLE [dbo].[Employee] ADD CONSTRAINT [PK__Employee__AF2DBA79EB345F7B] PRIMARY KEY CLUSTERED ([EmpID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Invoice
-- ----------------------------
ALTER TABLE [dbo].[Invoice] ADD CONSTRAINT [PK__Invoice__D796B226D2C8DA27] PRIMARY KEY CLUSTERED ([InvoiceNo])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Model
-- ----------------------------
ALTER TABLE [dbo].[Model] ADD CONSTRAINT [PK__Model__C797348A85EE01B6] PRIMARY KEY CLUSTERED ([MID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Phone_Type
-- ----------------------------
ALTER TABLE [dbo].[Phone_Type] ADD CONSTRAINT [PK__Phone_Ty__CD06245F8565AA0E] PRIMARY KEY CLUSTERED ([PTypeID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Position
-- ----------------------------
ALTER TABLE [dbo].[Position] ADD CONSTRAINT [PK__Position__67572BB3199E95D2] PRIMARY KEY CLUSTERED ([PosID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Product
-- ----------------------------
ALTER TABLE [dbo].[Product] ADD CONSTRAINT [PK__Product__C5775520580AAF4E] PRIMARY KEY CLUSTERED ([PID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Purchase
-- ----------------------------
ALTER TABLE [dbo].[Purchase] ADD CONSTRAINT [PK__Purchase__DA08B2314CB4A4EA] PRIMARY KEY CLUSTERED ([PurID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Supplier
-- ----------------------------
ALTER TABLE [dbo].[Supplier] ADD CONSTRAINT [PK__Supplier__C36716DBFF5DD312] PRIMARY KEY CLUSTERED ([SuID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Uniques structure for table sysdiagrams
-- ----------------------------
ALTER TABLE [dbo].[sysdiagrams] ADD CONSTRAINT [UK_principal_name] UNIQUE NONCLUSTERED ([principal_id] ASC, [name] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sysdiagrams
-- ----------------------------
ALTER TABLE [dbo].[sysdiagrams] ADD CONSTRAINT [PK__sysdiagr__C2B05B61B0F3FA1E] PRIMARY KEY CLUSTERED ([diagram_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Type
-- ----------------------------
ALTER TABLE [dbo].[Type] ADD CONSTRAINT [PK__Type__C456D72997F90BB1] PRIMARY KEY CLUSTERED ([TID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Users
-- ----------------------------
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [PK__Users__C5B19602FE348084] PRIMARY KEY CLUSTERED ([UID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table Employee
-- ----------------------------
ALTER TABLE [dbo].[Employee] ADD CONSTRAINT [FK_Employee_Position] FOREIGN KEY ([PosID]) REFERENCES [Position] ([PosID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Invoice
-- ----------------------------
ALTER TABLE [dbo].[Invoice] ADD CONSTRAINT [FK_Invoice_Employee] FOREIGN KEY ([EmpID]) REFERENCES [Employee] ([EmpID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Invoice] ADD CONSTRAINT [FK_Invoice_Customers] FOREIGN KEY ([CusID]) REFERENCES [Customers] ([CusID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table InvoiceDetail
-- ----------------------------
ALTER TABLE [dbo].[InvoiceDetail] ADD CONSTRAINT [FK_InvoiceDetail_Product] FOREIGN KEY ([PID]) REFERENCES [Product] ([PID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[InvoiceDetail] ADD CONSTRAINT [FK_InvoiceDetail_Invoice] FOREIGN KEY ([InvoiceNo]) REFERENCES [Invoice] ([InvoiceNo]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Product
-- ----------------------------
ALTER TABLE [dbo].[Product] ADD CONSTRAINT [FK_Product_Model] FOREIGN KEY ([MID]) REFERENCES [Model] ([MID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Product] ADD CONSTRAINT [FK_Product_Phone_Type] FOREIGN KEY ([PTypeID]) REFERENCES [Phone_Type] ([PTypeID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Product] ADD CONSTRAINT [FK_Product_Type] FOREIGN KEY ([TID]) REFERENCES [Type] ([TID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Purchase
-- ----------------------------
ALTER TABLE [dbo].[Purchase] ADD CONSTRAINT [FK_Purchase_Supplier] FOREIGN KEY ([SuID]) REFERENCES [Supplier] ([SuID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Purchase] ADD CONSTRAINT [FK_Purchase_Employee] FOREIGN KEY ([EmpID]) REFERENCES [Employee] ([EmpID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table PurchaseDetail
-- ----------------------------
ALTER TABLE [dbo].[PurchaseDetail] ADD CONSTRAINT [FK_PurchaseDetail_Product] FOREIGN KEY ([PID]) REFERENCES [Product] ([PID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[PurchaseDetail] ADD CONSTRAINT [FK_PurchaseDetail_Purchase] FOREIGN KEY ([PurID]) REFERENCES [Purchase] ([PurID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

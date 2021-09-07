﻿CREATE TABLE [dbo].[Product]
(
Id	NVARCHAR(50) NOT NULL,	
ProductName	NVARCHAR(150) NOT NULL,
Category	NVARCHAR	(100)	NOT NULL,
Size	NVARCHAR (50)  NULL  ,		
Price	DECIMAL	(12 , 2)	NOT NULL	DEFAULT 0,
ImageName NVARCHAR(250)  NULL,
CreatedDate	DATETIME2 NOT NULL DEFAULT GETDATE(),
CreatedBy NVARCHAR(128) NOT NULL,
UpdatedDate DATETIME2 NULL,
UpdatedBy NVARCHAR(128) NULL,
[Status] bit NOT NULL DEFAULT 1,
OutOfStock bit NOT NULL DEFAULT 0,
CONSTRAINT PK_Product PRIMARY KEY(Id),
CONSTRAINT FK_ProductCategoryId FOREIGN KEY(Category) REFERENCES [dbo].[ProductCategory] (Id)
)

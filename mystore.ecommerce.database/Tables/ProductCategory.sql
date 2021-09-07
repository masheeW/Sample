CREATE TABLE [dbo].[ProductCategory]
(
	Id nvarchar(100) NOT NULL,
	CategoryName nvarchar(100) NOT NULL,
	[Description] nvarchar(150) NOT NULL,
	CreatedDate datetime2(7) NOT NULL DEFAULT GETDATE(),
	CreatedBy nvarchar(128) NOT NULL,
	UpdatedDate datetime2(7) NULL,
	UpdatedBy nvarchar(128) NULL,
	CONSTRAINT PK_ProductCategory PRIMARY KEY(Id)
)

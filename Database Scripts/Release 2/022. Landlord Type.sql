/*
   Sunday, April 26, 20156:52:01 AM
   User: centrilla
   Server: centrilladb2008.czegvmfnsctg.ap-southeast-1.rds.amazonaws.com,1433
   Database: RHP
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.LandlordType
	(
	LandlordTypeId int NOT NULL,
	Name nvarchar(50) NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.LandlordType ADD CONSTRAINT
	PK_LandlordType PRIMARY KEY CLUSTERED 
	(
	LandlordTypeId
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.LandlordType SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.LandlordType', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.LandlordType', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.LandlordType', 'Object', 'CONTROL') as Contr_Per 
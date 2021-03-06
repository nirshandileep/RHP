/*
   Sunday, April 26, 20156:53:20 AM
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
ALTER TABLE dbo.LandlordType SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.LandlordType', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.LandlordType', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.LandlordType', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Landlord ADD
	LandlordTypeId int NULL
GO
ALTER TABLE dbo.Landlord ADD CONSTRAINT
	FK_Landlord_LandlordType FOREIGN KEY
	(
	LandlordTypeId
	) REFERENCES dbo.LandlordType
	(
	LandlordTypeId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Landlord SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Landlord', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Landlord', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Landlord', 'Object', 'CONTROL') as Contr_Per 
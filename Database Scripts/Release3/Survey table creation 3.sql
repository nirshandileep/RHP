/*
   Wednesday, September 02, 201510:27:50 PM
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
CREATE TABLE dbo.Tmp_Survey
	(
	SurveyId int NOT NULL IDENTITY (1, 1),
	MyUniversity nvarchar(250) NULL,
	UniversityName nvarchar(250) NULL,
	UniversityAddress nvarchar(250) NULL,
	TypeOfResidence nvarchar(250) NULL,
	TypeOfResidenceOption nvarchar(250) NULL,
	NameOfResidence nvarchar(250) NULL,
	AddressOfResidence nvarchar(250) NULL,
	Email nvarchar(250) NULL,
	CreatedDate datetime NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_Survey SET (LOCK_ESCALATION = TABLE)
GO
SET IDENTITY_INSERT dbo.Tmp_Survey ON
GO
IF EXISTS(SELECT * FROM dbo.Survey)
	 EXEC('INSERT INTO dbo.Tmp_Survey (SurveyId, MyUniversity, UniversityName, UniversityAddress, TypeOfResidence, TypeOfResidenceOption, NameOfResidence, AddressOfResidence, Email, CreatedDate)
		SELECT SurveyId, MyUniversity, UniversityName, UniversityAddress, TypeOfResidence, TypeOfResidenceOption, NameOfResidence, AddressOfResidence, Email, CreatedDate FROM dbo.Survey WITH (HOLDLOCK TABLOCKX)')
GO
SET IDENTITY_INSERT dbo.Tmp_Survey OFF
GO
DROP TABLE dbo.Survey
GO
EXECUTE sp_rename N'dbo.Tmp_Survey', N'Survey', 'OBJECT' 
GO
ALTER TABLE dbo.Survey ADD CONSTRAINT
	PK_Survey PRIMARY KEY CLUSTERED 
	(
	SurveyId
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
COMMIT
select Has_Perms_By_Name(N'dbo.Survey', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Survey', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Survey', 'Object', 'CONTROL') as Contr_Per 
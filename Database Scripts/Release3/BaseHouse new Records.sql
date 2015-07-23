
SET NOCOUNT ON;
SET XACT_ABORT ON;
GO

SET IDENTITY_INSERT [dbo].[BaseHouse] ON;

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouse]([BaseHouseId], [ContactName], [HouseTypeId], [Name], [Address], [City], [State], [Zip], [PhoneNumber], [ManagerEmail], [AssistantManagerEmail], [PropertyManagementCompanyName], [WebSiteURL], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [LandlordId])
SELECT 6, N'Canyon Crest Family Housing', 1, N'Test', N'Test', N'Test', N'Tes', N'Test', N'Test', N'Test@test.com', N'test@test.com', N'test', NULL, N'nirshan', NULL, NULL, NULL, NULL UNION ALL
SELECT 7, N'Oban', 1, N'Test', N'Test', N'Test', N'Tes', N'Test', N'Test', N'Test@test.com', N'test@test.com', N'test', NULL, N'nirshan', NULL, NULL, NULL, NULL UNION ALL
SELECT 8, N'Glen Mor', 1, N'Test', N'Test', N'Test', N'Tes', N'Test', N'Test', N'Test@test.com', N'test@test.com', N'test', NULL, N'nirshan', NULL, NULL, NULL, NULL UNION ALL
SELECT 9, N'Falkirk', 1, N'Test', N'Test', N'Test', N'Tes', N'Test', N'Test', N'Test@test.com', N'test@test.com', N'test', NULL, N'nirshan', NULL, NULL, NULL, NULL UNION ALL
SELECT 10, N'Plaza', 1, N'Test', N'Test', N'Test', N'Tes', N'Test', N'Test', N'Test@test.com', N'test@test.com', N'test', NULL, N'nirshan', NULL, NULL, NULL, NULL
COMMIT;
RAISERROR (N'[dbo].[BaseHouse]: Insert Batch: 1.....Done!', 10, 1) WITH NOWAIT;
GO

SET IDENTITY_INSERT [dbo].[BaseHouse] OFF;


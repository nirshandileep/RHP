
SET NOCOUNT ON;
SET XACT_ABORT ON;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 8, N'L507', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'79b386ec-e15b-499c-b542-002855513f14', 0 UNION ALL
SELECT 8, N'M 305-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ab7ea9e0-c579-42e6-8f7a-002932035ea0', 0 UNION ALL
SELECT 10, N'A2-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'a2b72aef-0cf3-444e-b127-00319954135d', 0 UNION ALL
SELECT 9, N'5A', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'015ee9ae-4465-4630-bb0a-004cf680ebcb', 0 UNION ALL
SELECT 8, N'L204', N'2 BR 1 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'5a5aec9b-4f66-4885-85a3-009070a96f48', 0 UNION ALL
SELECT 8, N'A301', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'9ec22458-8df7-4aba-acb0-0093a85c5149', 0 UNION ALL
SELECT 8, N'I509-A', N'Apartment/Bedroom-I509-A', N'nirshan', '20150723 08:06:45.067', N'dc1d75af-1a94-4f47-9aa3-0113b8dbbccf', 0 UNION ALL
SELECT 8, N'D303', N'1BR Apartment', N'nirshan', '20150723 08:06:45.067', N'a1e4d23c-16f9-479d-899c-0113c9a43f8f', 0 UNION ALL
SELECT 8, N'E207-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'abcba254-5308-4181-9523-0173451a6e08', 0 UNION ALL
SELECT 8, N'B404-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e56aadb8-7413-4276-8b27-0179bc14862f', 0 UNION ALL
SELECT 8, N'M 401-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'33187a44-f58e-48cc-9856-01b589242294', 0 UNION ALL
SELECT 10, N'B23-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'8e59b290-9f79-429e-9258-01b91e10f904', 0 UNION ALL
SELECT 8, N'M 409-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'67d1bb86-7446-47a8-908c-01cce03b6df1', 0 UNION ALL
SELECT 8, N'A302-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd3e6d183-34fb-423b-a38c-01fb5403bfa9', 0 UNION ALL
SELECT 6, N'3323-3325', NULL, N'nirshan', '20150723 08:03:32.660', N'3f774a4d-7b3f-476f-871c-020541f46a53', 0 UNION ALL
SELECT 10, N'E-57-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'27cf847c-8ef2-4704-b4ed-0205f877ea90', 0 UNION ALL
SELECT 7, N'019-1A', N'Apartment - 019-1A', N'nirshan', '20150723 08:05:19.033', N'd78445d2-45e8-483d-9818-021189fb7417', 0 UNION ALL
SELECT 8, N'I107-C', N'Apartment/Bedroom-I107-C', N'nirshan', '20150723 08:06:45.067', N'326ac483-fe51-46ee-b2d5-02159b05f78b', 0 UNION ALL
SELECT 8, N'D210-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6a7800c9-36d8-47c9-8dc4-024f92a095c8', 0 UNION ALL
SELECT 8, N'I502-D', N'Apartment/Bedroom-I502-D', N'nirshan', '20150723 08:06:45.067', N'a2496f42-7de3-4d72-9b9a-02f95f75c18e', 0 UNION ALL
SELECT 8, N'D201-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'5d6b4d55-6215-4db8-ba37-02fb60c6cba5', 0 UNION ALL
SELECT 10, N'D53-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'8f47d726-8669-41bf-9b62-03157ef46356', 0 UNION ALL
SELECT 9, N'2C', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'9474deda-fc52-42ce-abed-03256fb7257f', 0 UNION ALL
SELECT 9, N'2L', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'2a255f15-01e5-467e-a3df-03297c676d48', 0 UNION ALL
SELECT 8, N'D302', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'f6ca16be-8b60-4e9f-8e8c-032f51f1354f', 0 UNION ALL
SELECT 8, N'F310-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'40a4b870-a089-4e7e-9cc0-0348a69aecbc', 0 UNION ALL
SELECT 8, N'D410', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'38da0cd0-83fd-44c4-b0d0-034b5710aeaa', 0 UNION ALL
SELECT 8, N'F304-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6f2051d6-f122-4dda-9038-0373bb4025c2', 0 UNION ALL
SELECT 8, N'F502-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'732aaef2-5ef8-4382-9367-037a47028ad3', 0 UNION ALL
SELECT 7, N'023-2C', N'Apartment - 023-2C', N'nirshan', '20150723 08:05:19.033', N'c0e0a7ae-55d8-4dcd-980a-0390ae57faae', 0 UNION ALL
SELECT 8, N'E201-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3f3d86bd-10ed-4aaf-9236-0393cce12b4d', 0 UNION ALL
SELECT 10, N'C39-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'abf2e8bb-aec3-44ed-8894-03a8ff244b08', 0 UNION ALL
SELECT 8, N'B407', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'0d2be53e-285e-4e98-b70e-03ba64aeb7f6', 0 UNION ALL
SELECT 8, N'A306-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'4905ca90-0feb-4a64-828f-03d41dc98bcb', 0 UNION ALL
SELECT 9, N'6F', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'89568081-ca20-44ce-8c09-33fbd6923af6', 0 UNION ALL
SELECT 8, N'L307', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'3af93b75-9213-439b-bf5c-3404ca0f6a0a', 0 UNION ALL
SELECT 8, N'E406-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'901b1815-88ba-4e97-875a-34063eeeae36', 0 UNION ALL
SELECT 8, N'D104-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'17aefaf2-6967-48a0-b721-340abdfb89a4', 0 UNION ALL
SELECT 7, N'022-2C', N'Apartment - 022-2C', N'nirshan', '20150723 08:05:19.033', N'c2d8c0e7-de49-4681-b54a-342414d3f446', 0 UNION ALL
SELECT 10, N'F-66-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'75c194a5-cf8d-4072-bd30-343d17e72f31', 0 UNION ALL
SELECT 8, N'F507-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'90ba63e1-55ac-45b0-b571-3446d92b7f31', 0 UNION ALL
SELECT 8, N'G203-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'53ec5f98-1934-4a3a-8e44-344f02dd4cf3', 0 UNION ALL
SELECT 8, N'D408-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'1070daa9-9c98-4e14-bf79-345281ffacb8', 0 UNION ALL
SELECT 8, N'D410-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd1a6d79f-ce2e-4b19-b982-348858e5c698', 0 UNION ALL
SELECT 8, N'E402-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ebff2d69-b5c7-4267-860a-349c9366e5ed', 0 UNION ALL
SELECT 8, N'G505', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'6b39f82c-c8f5-411d-9047-349f4bafcda6', 0 UNION ALL
SELECT 8, N'E107-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e40b598e-7595-43ad-bd23-34e311c2d665', 0 UNION ALL
SELECT 8, N'A203-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'cc31aed1-3017-44ff-9b61-34f2901817ae', 0 UNION ALL
SELECT 9, N'12B', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'80125c7a-9cd5-4101-94ef-351a17f429bf', 0 UNION ALL
SELECT 7, N'001-1B', N'Apartment - 001-1B', N'nirshan', '20150723 08:05:19.033', N'fbef8a12-52cf-43f9-afe1-351ccb43cfac', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 1.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 8, N'F507-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'4f18c8fd-80ff-4f4c-aeac-353a9e0ce4b5', 0 UNION ALL
SELECT 8, N'I201-A', N'Apartment/Bedroom-I201-A', N'nirshan', '20150723 08:06:45.067', N'01893b7d-f925-4a3a-9db1-35691d92839f', 0 UNION ALL
SELECT 8, N'B302-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e59b19c3-9f81-4495-b1ff-359b5eea6aa2', 0 UNION ALL
SELECT 8, N'D103', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'd9fae63a-5eb4-49c1-852d-359f29b6f402', 0 UNION ALL
SELECT 8, N'F203-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e2fb7dec-9176-4352-8ee4-359fa35a3bb8', 0 UNION ALL
SELECT 8, N'D406', N'2BR Apartment', N'nirshan', '20150723 08:06:45.067', N'f0b472ff-e5fe-4e88-be73-35edd178a89e', 0 UNION ALL
SELECT 8, N'M 606-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'daa2ae80-309c-47cf-963d-35f6a2027ef2', 0 UNION ALL
SELECT 8, N'L207', N'RD Apartment', N'nirshan', '20150723 08:06:45.067', N'3ea239f9-b697-4f90-bde9-360296245e8c', 0 UNION ALL
SELECT 6, N'3402-3404', NULL, N'nirshan', '20150723 08:03:32.660', N'34b397c9-cebe-44e8-a434-36714c4b96ea', 0 UNION ALL
SELECT 8, N'D110-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f72dc924-778b-4a1d-b993-367ea3dfe6e3', 0 UNION ALL
SELECT 8, N'I405-D', N'Apartment/Bedroom-I405-D', N'nirshan', '20150723 08:06:45.067', N'8b9ee65f-c0ba-44b6-9d70-36998f4c42e1', 0 UNION ALL
SELECT 6, N'876-878', NULL, N'nirshan', '20150723 08:03:32.660', N'229f24ac-5f2a-4a83-9fdd-36ddd2f2fac0', 0 UNION ALL
SELECT 10, N'E60-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'bfb562d4-87a0-4fe6-919d-37602e42c889', 0 UNION ALL
SELECT 10, N'A12-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'b8d5d82a-1cfb-4e9d-8672-37d78f120a11', 0 UNION ALL
SELECT 8, N'M 403-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'34bbd7a8-835e-43fe-888e-37d819e29639', 0 UNION ALL
SELECT 6, N'685-687', NULL, N'nirshan', '20150723 08:03:32.660', N'da2b3ebb-d129-4e0d-b001-381907fc0ca1', 0 UNION ALL
SELECT 7, N'009-2D', N'Apartment - 009-2D', N'nirshan', '20150723 08:05:19.033', N'c890fd26-99d5-4f87-a2e1-382a55d2846b', 0 UNION ALL
SELECT 8, N'M 209-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'be077d2d-288c-48c1-be3f-383718b2788f', 0 UNION ALL
SELECT 8, N'D205-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'66860bc1-a447-4f94-9ae5-383c7571621e', 0 UNION ALL
SELECT 10, N'E-60', N'1BR Apartment', N'nirshan', '20150723 08:08:25.727', N'24c480a5-88f9-4679-aa02-29868cffc34b', 0 UNION ALL
SELECT 9, N'6K', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'f96130e6-95c1-4aa1-b0f2-29916e916a8d', 0 UNION ALL
SELECT 8, N'F605', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'b47ae8c4-db29-43d2-ac49-29b82262645b', 0 UNION ALL
SELECT 8, N'E109-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'0ece5184-8585-4f19-bcbf-29c9b4814654', 0 UNION ALL
SELECT 10, N'B32-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'73c6a32a-096e-46ee-b66a-29dcdc7efd71', 0 UNION ALL
SELECT 8, N'A206-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'67d27888-be6a-4cb6-af87-29f307335bfa', 0 UNION ALL
SELECT 8, N'B405-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'5725997c-1dca-4ada-9f1f-2a0c592e6bd3', 0 UNION ALL
SELECT 8, N'B303-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e439a67e-0d52-4525-a4d7-2a35e7b30519', 0 UNION ALL
SELECT 9, N'10A', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'c91a23bd-4b4f-4e89-98e5-2a374ff0c7af', 0 UNION ALL
SELECT 9, N'7R', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'39418968-3597-4141-b21f-2a48c81f1f03', 0 UNION ALL
SELECT 8, N'A201-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'65411ab1-19a3-4c38-b54a-2a59c0a8ba31', 0 UNION ALL
SELECT 8, N'E105', N'2BR Apartment', N'nirshan', '20150723 08:06:45.067', N'3cd29f54-7cc2-4548-89aa-2a5a8998f5b8', 0 UNION ALL
SELECT 9, N'6C', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'1f164fc4-1d27-4346-877b-2a7b2720d5c2', 0 UNION ALL
SELECT 8, N'B303', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'df1935b4-701f-423a-94c1-2aa93244c66c', 0 UNION ALL
SELECT 10, N'D54', N'2BR 2BA Apartment', N'nirshan', '20150723 08:08:25.727', N'9b8013a2-8f5d-4a20-80d1-2b0382a78f24', 0 UNION ALL
SELECT 9, N'4S', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'7c2749ba-cd5f-41f6-ac58-2b2de10a12eb', 0 UNION ALL
SELECT 8, N'L104-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'0315a14c-66b9-4bf3-83c4-2b4d07f71440', 0 UNION ALL
SELECT 10, N'D43', N'2BR Apartment', N'nirshan', '20150723 08:08:25.727', N'd3c37b59-2f6f-4085-abcc-2b500210316d', 0 UNION ALL
SELECT 8, N'A306-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f745c9ea-ce34-40f5-aa23-2b76a4232a73', 0 UNION ALL
SELECT 10, N'F-67-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'df4849a6-d250-42a1-9a95-2b7ef7a466eb', 0 UNION ALL
SELECT 8, N'I409-A', N'Apartment/Bedroom-I409-A', N'nirshan', '20150723 08:06:45.067', N'63efd38e-f0c7-45df-9f6e-2b8bf9c4e8cb', 0 UNION ALL
SELECT 10, N'A9-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'765fdc9c-6543-42b8-820d-2ba3252e0973', 0 UNION ALL
SELECT 8, N'G304-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'90a78a51-d351-42c5-890e-2bbcb88e435c', 0 UNION ALL
SELECT 9, N'1J', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'a5a87a17-1f8a-4c39-b6fd-2bbf1b76a6d8', 0 UNION ALL
SELECT 9, N'16G', N'Deluxe 2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'968aaa9e-b007-4ac9-bcef-609d1da9b23f', 0 UNION ALL
SELECT 8, N'A303-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'59c7dbaa-a279-4898-8eea-60ab550851ed', 0 UNION ALL
SELECT 9, N'3H', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'bf5f7fbe-80f6-43b9-8c89-60b113fbee0b', 0 UNION ALL
SELECT 8, N'G307-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd93ef809-88d9-415c-b2de-60d894e4178f', 0 UNION ALL
SELECT 8, N'I407-C', N'Apartment/Bedroom-I407-C', N'nirshan', '20150723 08:06:45.067', N'c2c922b9-4358-4474-b1b7-60d9709150a2', 0 UNION ALL
SELECT 10, N'D54-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'61690154-7313-42d4-96e3-60f7456aa318', 0 UNION ALL
SELECT 8, N'B304-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'7aecbc02-a3eb-403b-930d-60fecd3c8bb5', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 2.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 10, N'D44-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'300adf9b-76df-4729-a4c6-61336dce48f4', 0 UNION ALL
SELECT 9, N'19D', N'Studio Apartment', N'nirshan', '20150723 08:07:50.047', N'8ae5f0a0-c466-44a9-87f7-613c57cc8810', 0 UNION ALL
SELECT 8, N'M 212-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3c123c5a-3ed1-4256-86b3-613daa50fd45', 0 UNION ALL
SELECT 8, N'E407-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'75c24415-a0cc-4277-94f2-614f0567c91c', 0 UNION ALL
SELECT 8, N'G104', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'89129ed3-5de7-4401-b0d5-61899518ec59', 0 UNION ALL
SELECT 8, N'A403-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'01e77c83-127a-4b82-90ab-61bc427f9ffc', 0 UNION ALL
SELECT 8, N'B304-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'cb60fa09-cfc6-4c98-b72f-61bee886ad94', 0 UNION ALL
SELECT 6, N'3495-3497', NULL, N'nirshan', '20150723 08:03:32.660', N'313d4376-903f-45de-902e-86955656c8f4', 0 UNION ALL
SELECT 8, N'I307', N'Apartment/ 4BR 2BA-I307', N'nirshan', '20150723 08:06:45.067', N'78fbf9ac-0c85-4b18-aefa-86a8cde955a2', 0 UNION ALL
SELECT 8, N'M 301-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'08c98d80-68f1-4243-b2e2-86ad6d3edde1', 0 UNION ALL
SELECT 10, N'D42-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'7a2ebe7b-1ebc-498d-a53e-86be9b5e3eef', 0 UNION ALL
SELECT 8, N'F205-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'37216c63-45d0-40ae-884e-86e6f3c1b398', 0 UNION ALL
SELECT 8, N'G208-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'17fab31b-1f61-45c9-8964-86e70c7bd784', 0 UNION ALL
SELECT 8, N'I504', N'Apartment/ 4BR 2BA-I504', N'nirshan', '20150723 08:06:45.067', N'12f20ce1-8feb-48fd-a382-86e8019af715', 0 UNION ALL
SELECT 9, N'3F', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'f7e073c5-5bbe-497b-8949-870b19f988f6', 0 UNION ALL
SELECT 8, N'F302-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'bdb18026-76f9-40d7-9e7b-871e30aeb726', 0 UNION ALL
SELECT 9, N'11O', N'1 BR Apartment', N'nirshan', '20150723 08:07:50.047', N'95738e39-481e-4100-a6a1-87ce01a8d149', 0 UNION ALL
SELECT 8, N'G303', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'f228a6b8-a3fc-40df-8857-87e9f187e918', 0 UNION ALL
SELECT 8, N'D208-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'de8922c4-8fb3-4660-a25c-880384025981', 0 UNION ALL
SELECT 8, N'G307', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'c761d223-c010-4c74-b055-8817e08d439e', 0 UNION ALL
SELECT 6, N'3481-3489', NULL, N'nirshan', '20150723 08:03:32.660', N'24ef1b49-2128-4ca4-a4d1-8841271b78d0', 0 UNION ALL
SELECT 8, N'A306', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'8db525c0-a8a0-4c69-8f7a-8844c724a425', 0 UNION ALL
SELECT 8, N'E403-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'7e950d6b-11a6-4747-a6f7-8851ede0a80a', 0 UNION ALL
SELECT 9, N'6H', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'a621d468-be38-40d1-a107-88af08f6333e', 0 UNION ALL
SELECT 8, N'E101-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'333b3788-8690-4575-9f1d-88d74598d056', 0 UNION ALL
SELECT 8, N'A202-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6daf1ab6-9c2b-447c-941f-88dbddc1ac92', 0 UNION ALL
SELECT 9, N'15E', N'Deluxe 2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'7cbbfc7a-d58d-4b80-ab88-89035480a81e', 0 UNION ALL
SELECT 6, N'772-774', NULL, N'nirshan', '20150723 08:03:32.660', N'd6166a78-49db-419b-9980-8917f4a7bfb8', 0 UNION ALL
SELECT 8, N'F501-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'726ee181-be63-4b98-b54e-b3ade62fd001', 0 UNION ALL
SELECT 8, N'G109-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'2de3f25c-bdc2-4eec-8d7c-b3c98c2ff1a5', 0 UNION ALL
SELECT 8, N'D210-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'c657c028-2bb4-4566-89f5-b3dee31d81aa', 0 UNION ALL
SELECT 8, N'A205-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'c746dc2d-b465-4c2c-950b-b3f4f8e41a81', 0 UNION ALL
SELECT 6, N'710-712', NULL, N'nirshan', '20150723 08:03:32.660', N'9048c835-6370-4549-9de4-b4024e0ecab9', 0 UNION ALL
SELECT 9, N'12H', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'fd686a66-13db-401a-ab6e-b427657d9188', 0 UNION ALL
SELECT 9, N'19E', N'Studio Apartment', N'nirshan', '20150723 08:07:50.047', N'3a80190a-c739-4599-a9b4-b44285fe606f', 0 UNION ALL
SELECT 8, N'F208', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'a1e91a6b-478c-45f6-b581-b489c1281f94', 0 UNION ALL
SELECT 8, N'D309', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'6af659b3-ec4e-4451-b701-b519cef56aa4', 0 UNION ALL
SELECT 8, N'D107-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3057735d-ff97-4983-8364-b5228e4cbaaf', 0 UNION ALL
SELECT 8, N'E204', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'bf33136c-d0e8-4443-ad48-b55d9b075229', 0 UNION ALL
SELECT 8, N'F405-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd4d5042d-8043-4563-824e-b56f1555a81f', 0 UNION ALL
SELECT 8, N'G101-A', N'RD Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'2e5d19cd-15a2-478d-b1b0-b57d2e13ec3a', 0 UNION ALL
SELECT 8, N'E205-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'26ec98f1-1b4e-4162-aedb-b5a6d037a3db', 0 UNION ALL
SELECT 8, N'E109-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'902f1956-4653-4189-99f1-b5f38de99224', 0 UNION ALL
SELECT 8, N'G401-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'516b6f86-9a1d-4a96-ac31-b5fe7875b600', 0 UNION ALL
SELECT 10, N'A16-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'5c872643-fa5a-4265-afd8-b6562fb3229b', 0 UNION ALL
SELECT 8, N'L302', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'107a7205-9f09-4518-997f-b675cedc08c3', 0 UNION ALL
SELECT 8, N'F510-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'0925f0b4-0762-4382-b2fb-b6a98ea90899', 0 UNION ALL
SELECT 8, N'M 410-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'39da4421-423d-46f6-9e65-b6ae53ccb0b8', 0 UNION ALL
SELECT 8, N'B403-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'43ea8769-5b9e-41aa-bcbc-b6cf0c4cdd91', 0 UNION ALL
SELECT 8, N'M 306', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'feb1d025-fb34-4df0-baa5-b70305d032c2', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 3.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 8, N'B105-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'77a69954-39b5-46d3-a43d-b760a6d93e47', 0 UNION ALL
SELECT 8, N'A305-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'082f5c83-6f84-4fd2-997b-b763c9519f38', 0 UNION ALL
SELECT 8, N'I303-A', N'Apartment/Bedroom-I303-A', N'nirshan', '20150723 08:06:45.067', N'693650f7-4067-4ea3-ba3b-b786b07a6efd', 0 UNION ALL
SELECT 9, N'11Q', N'1 BR Apartment', N'nirshan', '20150723 08:07:50.047', N'eca08d2a-5013-4295-b999-b793f86c4b6c', 0 UNION ALL
SELECT 8, N'B406-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd4a7b7c8-b2d8-439f-89f8-b7ae80d985b3', 0 UNION ALL
SELECT 8, N'I304-D', N'Apartment/Bedroom-I304-D', N'nirshan', '20150723 08:06:45.067', N'3dbc1d58-f227-4f1d-96a5-b7b90475de53', 0 UNION ALL
SELECT 8, N'M 401', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'91fe6f83-de3b-41c1-9c83-b7c7428964a2', 0 UNION ALL
SELECT 10, N'B25-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'a42ca351-2237-40c6-aacf-b81f863c4c98', 0 UNION ALL
SELECT 8, N'A207-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd022eb4a-a747-4a77-8f2f-b83e268c6f80', 0 UNION ALL
SELECT 8, N'D404-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'0dc921ef-9e46-4103-8202-b84ffb42c82a', 0 UNION ALL
SELECT 8, N'A208-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'18642a25-7d06-425a-9a49-b85b6d3a16e7', 0 UNION ALL
SELECT 8, N'B208-A', N'Apartment/Bedroom- B208-A', N'nirshan', '20150723 08:06:45.067', N'9a020417-e756-4d0a-a1bb-b888da66ca57', 0 UNION ALL
SELECT 8, N'I203-C', N'Apartment/Bedroom-I203-C', N'nirshan', '20150723 08:06:45.067', N'23dab623-b9d7-4404-924c-b89530575546', 0 UNION ALL
SELECT 8, N'B107-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f5ec6a4f-24e9-49f4-b183-b8c00699f553', 0 UNION ALL
SELECT 8, N'G508', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'56aec09a-86a9-4e03-bc8e-b905dd5d46c6', 0 UNION ALL
SELECT 8, N'M 207-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f39aeaff-b7e0-47f6-a2ef-b91214931a2d', 0 UNION ALL
SELECT 8, N'M 407', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'2f692a21-f487-4673-8c71-b95b5b9c9515', 0 UNION ALL
SELECT 9, N'7S', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'b103954c-7cba-4791-a158-dd02444764b3', 0 UNION ALL
SELECT 9, N'7O', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'4f01db26-9e2d-4011-9ae7-dd1e9db0febe', 0 UNION ALL
SELECT 9, N'9D', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'db246b1e-3b69-41d0-94d8-dd2988b6f3ec', 0 UNION ALL
SELECT 8, N'F401', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'f0f2ea9a-14d1-4c70-a493-dd38e3aaf2a9', 0 UNION ALL
SELECT 9, N'12M', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'0ab22e83-66c6-4a71-aca0-dd3a0948a1d4', 0 UNION ALL
SELECT 8, N'G402-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'aa31eaca-9dd5-4c04-905b-dd54d5dd83d9', 0 UNION ALL
SELECT 8, N'F607-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'9d494c99-4f57-4386-82f3-dd675a3ef3af', 0 UNION ALL
SELECT 7, N'018-2D', N'Apartment - 018-2D', N'nirshan', '20150723 08:05:19.033', N'79a01ed0-1e5d-4b8d-b329-dd8c5487bf83', 0 UNION ALL
SELECT 8, N'B205-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'80f0a021-0947-4c1d-8380-ddb80c09aade', 0 UNION ALL
SELECT 8, N'A301-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'4658f680-421b-47b0-add9-dddcf69fc6a3', 0 UNION ALL
SELECT 9, N'7B', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'f6e0da80-2399-455a-8298-dde703aced9f', 0 UNION ALL
SELECT 8, N'E308-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'1a82f668-43c9-46d2-85f1-ddf06fa1cef8', 0 UNION ALL
SELECT 8, N'M 302-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'fb57e904-2461-4fc9-84b6-de05e5d52aa5', 0 UNION ALL
SELECT 8, N'A103-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3e1b9f18-a42f-44c4-96da-de0eea17f22c', 0 UNION ALL
SELECT 8, N'L206', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'eb0fb6cf-0d85-4166-a948-de22e160fd7f', 0 UNION ALL
SELECT 8, N'F301-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'81981e4c-619e-4449-9b61-de3631b8beb4', 0 UNION ALL
SELECT 8, N'G107-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'56f30312-e38d-49b9-96f5-de3e18a4ebb5', 0 UNION ALL
SELECT 9, N'2Q', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'da537ee7-dbbc-4769-8ddf-deb1558f849b', 0 UNION ALL
SELECT 8, N'F602-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'04df71d0-5b97-47f1-bbb9-dee4f94cf801', 0 UNION ALL
SELECT 8, N'A406-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'8b553b05-9820-4f87-9229-def76f1a7ac0', 0 UNION ALL
SELECT 8, N'F501-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a7fac5f9-7b2a-4772-b564-df2c543b9517', 0 UNION ALL
SELECT 8, N'E402-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'159e69dc-fcc2-432d-9bf2-df3c4fa571e6', 0 UNION ALL
SELECT 8, N'E110-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'96d0a0dc-2459-44de-bcd6-df447a86a507', 0 UNION ALL
SELECT 7, N'010-2C', N'Apartment - 010-2C', N'nirshan', '20150723 08:05:19.033', N'cb07b892-c8c4-468c-aea4-df5030219304', 0 UNION ALL
SELECT 8, N'D302-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'2723b955-d9ab-478b-8191-df65a6773408', 0 UNION ALL
SELECT 9, N'9B', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'5ec96880-3ab7-4c36-93dd-df670ed7abfb', 0 UNION ALL
SELECT 8, N'B104-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6af9fd9a-3435-48f9-bb1a-df917220a0db', 0 UNION ALL
SELECT 10, N'A12-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'd5d43be9-f84a-4a1b-a5cc-dfb46d6b283b', 0 UNION ALL
SELECT 8, N'M 505', N'2 BR 1BA Apartment', N'nirshan', '20150723 08:06:45.067', N'62d79c57-2743-4317-8a82-dfbcab6c5999', 0 UNION ALL
SELECT 10, N'D50-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'1383b75b-cf87-4484-a373-dfc3e0818fa5', 0 UNION ALL
SELECT 10, N'D51-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'acc42a23-ebbd-4247-a731-dfea0ed1ba65', 0 UNION ALL
SELECT 8, N'M 303-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e3fa5d06-916e-4994-8e66-e011896d1577', 0 UNION ALL
SELECT 8, N'F202-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'2560a2f9-ce04-478d-b52d-e06a0170e30b', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 4.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 8, N'E203-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f8db7e2e-8b72-49d9-b2a2-e07ada60fe1f', 0 UNION ALL
SELECT 6, N'3329-3333', NULL, N'nirshan', '20150723 08:03:32.660', N'e706eae7-ac31-46dc-8cbe-e08cd7f15976', 0 UNION ALL
SELECT 8, N'A407-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'cea88fc6-1cda-473c-80e2-e092eb52b93a', 0 UNION ALL
SELECT 8, N'B305-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'32760ec5-ee4c-46c5-84be-e097392890f1', 0 UNION ALL
SELECT 10, N'B17-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'2f7c65c9-04cd-451d-bb75-e0a06e5f2d85', 0 UNION ALL
SELECT 8, N'M 212-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'729d2091-4e4e-4bf9-913f-e0a7113a5fd1', 0 UNION ALL
SELECT 8, N'B403-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a1a2dbbe-f2ce-444a-b013-e0ac1705c942', 0 UNION ALL
SELECT 8, N'M 608-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'9d9edfa5-f37f-4566-9472-2f2f9ea2de50', 0 UNION ALL
SELECT 8, N'E410-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'418d28b6-fa58-4a2e-8711-2f33822f274e', 0 UNION ALL
SELECT 8, N'M 404-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'dc2ce1af-5ccb-4309-876c-2f3e510dbb3a', 0 UNION ALL
SELECT 8, N'K 105', N'Pool', N'nirshan', '20150723 08:06:45.067', N'330945f0-9c3a-404a-af59-2f5730efa95d', 0 UNION ALL
SELECT 8, N'A304-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'0c4d2c7e-d5ff-4497-b03e-2f675193feed', 0 UNION ALL
SELECT 8, N'G403-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'85843c3d-44bb-46a9-9b0e-2f7b279aa923', 0 UNION ALL
SELECT 8, N'B105-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'fc18886b-a0b3-4c5b-a865-2f8352e5e423', 0 UNION ALL
SELECT 8, N'F302-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a30bc079-11a2-444b-bce0-2f8efec14f51', 0 UNION ALL
SELECT 8, N'E306', N'2BR Apartment', N'nirshan', '20150723 08:06:45.067', N'36424497-380f-4a6d-b771-2fb1cf35c0af', 0 UNION ALL
SELECT 6, N'3422-3424', NULL, N'nirshan', '20150723 08:03:32.660', N'bf197db3-1384-4c85-8af4-2fc14976a7e5', 0 UNION ALL
SELECT 8, N'D302-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'4f94a4b5-ec58-4fb4-9da1-2fe80b73850d', 0 UNION ALL
SELECT 8, N'E207-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'234c5cc7-53e1-471d-9a83-2ffc6008f944', 0 UNION ALL
SELECT 6, N'3312-3314', NULL, N'nirshan', '20150723 08:03:32.660', N'407cb080-216a-4562-9d85-2ffcfe533fee', 0 UNION ALL
SELECT 8, N'A404-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'219dd0e5-efbd-42d4-9737-301ddf33d488', 0 UNION ALL
SELECT 8, N'M 310', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'db1cbc04-10cc-4786-9f76-30407d472770', 0 UNION ALL
SELECT 9, N'15H', N'Deluxe 2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'd45c60c4-cb1b-4bae-899f-307bf898df7a', 0 UNION ALL
SELECT 8, N'B207-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'cf2173cb-464f-40c2-9e52-30a12a207756', 0 UNION ALL
SELECT 8, N'M 301', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'7c11d88c-64bb-4fe0-a9e4-30b4985ef554', 0 UNION ALL
SELECT 8, N'F206-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'1754ef0c-3805-4772-9c4f-30b6ecbdaf0d', 0 UNION ALL
SELECT 8, N'J 206', N'Office', N'nirshan', '20150723 08:06:45.067', N'5f2a88c0-0983-41ba-b7e4-30dabb850229', 0 UNION ALL
SELECT 8, N'I205-C', N'Apartment/Bedroom-I205-C', N'nirshan', '20150723 08:06:45.067', N'cf6396e0-b277-44d2-805c-318158537b41', 0 UNION ALL
SELECT 9, N'2I', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'afa8af88-f079-4286-b3ee-3194c01d487d', 0 UNION ALL
SELECT 8, N'F509-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'badb90d0-1a40-4270-96e2-31a28fbafecd', 0 UNION ALL
SELECT 9, N'13G', N'2 BR Apartment', N'nirshan', '20150723 08:07:50.047', N'105e9c68-fb61-4fb1-99c7-31a504d26dd0', 0 UNION ALL
SELECT 8, N'G105-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'01f54583-36e4-45e2-8702-31af7d4f88ed', 0 UNION ALL
SELECT 8, N'B402-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'2a41c422-4574-4fe5-9fe7-31b479bd47cf', 0 UNION ALL
SELECT 8, N'D309-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'8d8ffb7e-3f7d-488f-8610-31c000b29dc6', 0 UNION ALL
SELECT 7, N'017-2D', N'Apartment - 017-2D', N'nirshan', '20150723 08:05:19.033', N'd64c90bf-92ea-4489-b458-32810bd169eb', 0 UNION ALL
SELECT 8, N'M 501-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'751aca0b-1458-4f0d-9627-32cdb8f437b6', 0 UNION ALL
SELECT 8, N'F406-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'123d24b4-cfea-4e2f-8a8c-32d24bd80284', 0 UNION ALL
SELECT 8, N'A307-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'0034ddda-ee0f-4026-b8c9-32d731b4eb0e', 0 UNION ALL
SELECT 8, N'M103-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'47b5aa91-f0bc-4f0e-8460-331984bd7b38', 0 UNION ALL
SELECT 8, N'I205', N'Apartment/4BR 2BA- I205', N'nirshan', '20150723 08:06:45.067', N'4ee69126-e47a-490b-913a-33789a7dcdca', 0 UNION ALL
SELECT 8, N'I101-B', N'Apartment/Bedroom-I101-B', N'nirshan', '20150723 08:06:45.067', N'35f3b705-c359-499c-b789-3399654afd4a', 0 UNION ALL
SELECT 8, N'D105-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'abd173a5-464d-45e4-b420-33b640d329fb', 0 UNION ALL
SELECT 9, N'8E', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'1519a33d-4381-4e09-af1c-33c083d5fede', 0 UNION ALL
SELECT 8, N'A104-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'8de61b77-e49a-46c2-8b39-33c6399f7803', 0 UNION ALL
SELECT 9, N'19B', N'Studio Apartment', N'nirshan', '20150723 08:07:50.047', N'24ea8f18-8697-406c-a466-33e37cd62f8a', 0 UNION ALL
SELECT 10, N'A1-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'016b92db-36f0-41c0-8d4a-2215e3c90a5f', 0 UNION ALL
SELECT 8, N'D304-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'fb4198f9-a929-4b07-afaa-22496f9b4abd', 0 UNION ALL
SELECT 8, N'I307-A', N'Apartment/Bedroom-I307-A', N'nirshan', '20150723 08:06:45.067', N'1c62f6ba-c6e1-4042-95cd-2251460f4947', 0 UNION ALL
SELECT 8, N'B202', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'a9fe5f7a-8ec9-4ddc-ba69-2252c28b619c', 0 UNION ALL
SELECT 8, N'I510-D', N'Apartment/Bedroom-I510-D', N'nirshan', '20150723 08:06:45.067', N'cd59ccee-7b35-45a3-856d-226f4d076cd9', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 5.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 8, N'B401-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ed8f2895-2a95-490e-9b05-227a3be479a5', 0 UNION ALL
SELECT 9, N'6L', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'fcbec218-4dd7-442b-a8a2-228c03ca0ff6', 0 UNION ALL
SELECT 9, N'14B', N'Deluxe 2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'0366c088-53d2-495e-bc26-228ed21d159a', 0 UNION ALL
SELECT 8, N'E211-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'db60054a-b5ce-4da2-a7f6-22a8353f5a42', 0 UNION ALL
SELECT 8, N'E210-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'86144f76-57f2-461b-abe4-22b91f4b84e7', 0 UNION ALL
SELECT 8, N'G105-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'436d3e95-e0ef-47be-8a8a-22bfacbf1509', 0 UNION ALL
SELECT 8, N'G208-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e48c299b-fa8a-4152-b438-22c595260838', 0 UNION ALL
SELECT 7, N'013-1B', N'Apartment - 013-1B', N'nirshan', '20150723 08:05:19.033', N'f344778b-bcdc-4ef7-a46a-22cad91dc58e', 0 UNION ALL
SELECT 7, N'008-1A', N'Apartment - 008-1A', N'nirshan', '20150723 08:05:19.033', N'9b130422-0d72-4210-9db6-22f0d8c5823d', 0 UNION ALL
SELECT 8, N'B306-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'0522e1e7-70d7-4daa-82bd-22fd39c8cde3', 0 UNION ALL
SELECT 8, N'I102', N'Apartment/RD-I102', N'nirshan', '20150723 08:06:45.067', N'a9949314-0ba5-406c-ae14-2387cb156bb8', 0 UNION ALL
SELECT 7, N'007-2D', N'Apartment - 007-2D', N'nirshan', '20150723 08:05:19.033', N'11798179-6488-467d-8032-238d9c556f23', 0 UNION ALL
SELECT 8, N'L409', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'c9f1914e-e49f-414d-823e-23d685a21030', 0 UNION ALL
SELECT 8, N'M 204', N'2BR 1BA', N'nirshan', '20150723 08:06:45.067', N'4304b16e-947a-477b-b50c-246fc0f8f177', 0 UNION ALL
SELECT 8, N'L403', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'260ab641-740a-4307-9267-247c5c0e6ad5', 0 UNION ALL
SELECT 8, N'G102-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'569829a6-d170-4def-98a8-2488da95203a', 0 UNION ALL
SELECT 8, N'M 303-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ad6555a8-a696-4ca8-acc2-248d086c0a1d', 0 UNION ALL
SELECT 8, N'M 501-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'bb40ec42-1d88-439b-b7af-24ab85ffd30a', 0 UNION ALL
SELECT 8, N'M 608-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'53491ffe-fc4f-40a6-86a9-24abf6165eaf', 0 UNION ALL
SELECT 8, N'E307-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f41ddbeb-ddd8-4e93-991b-250d47e69d40', 0 UNION ALL
SELECT 8, N'B106-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd72f8089-d949-4e1d-9180-2525dee25abe', 0 UNION ALL
SELECT 8, N'F310', N'2 BR 1 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'51ea8c1e-edf3-4aca-bdd9-25474f545f57', 0 UNION ALL
SELECT 9, N'12Q', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'46d0b345-421b-47c9-b985-254adcaf20c8', 0 UNION ALL
SELECT 8, N'D207-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'91d5ce2c-da18-4bb1-a0ad-38bfcc8ea1e3', 0 UNION ALL
SELECT 8, N'M102-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'51932ac0-4e5f-4c14-a10e-38cb3b749ae0', 0 UNION ALL
SELECT 8, N'F209-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ce59030d-90cf-4728-a84b-38f8fc500599', 0 UNION ALL
SELECT 8, N'D101-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'95720bd2-d011-4b2f-8cf7-390aac63838e', 0 UNION ALL
SELECT 8, N'G507', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'46922dc1-8a73-4d5b-b089-39489047a57a', 0 UNION ALL
SELECT 8, N'D203', N'1BR Apartment', N'nirshan', '20150723 08:06:45.067', N'6a2a5c7b-da32-4197-b7ec-39504c927752', 0 UNION ALL
SELECT 8, N'K 206-A', N'Storage', N'nirshan', '20150723 08:06:45.067', N'9d81f869-10f3-4fcf-9bde-395375637b4d', 0 UNION ALL
SELECT 7, N'008-2C', N'Apartment - 008-2C', N'nirshan', '20150723 08:05:19.033', N'e21d2ce5-0b68-4c59-ac4a-39bba4b8048f', 0 UNION ALL
SELECT 8, N'G207-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'12a7e0ed-842b-481a-9163-39d1b87a663a', 0 UNION ALL
SELECT 8, N'F602-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'78440d2e-4df8-4546-9938-3a30d482ac79', 0 UNION ALL
SELECT 8, N'D306-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'43da2e88-0b13-41b6-b78b-3a3387c9f165', 0 UNION ALL
SELECT 9, N'7H', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'029ae708-7ea1-4888-bc2a-3a3a4bc43378', 0 UNION ALL
SELECT 8, N'F301-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'0dd4a8fe-d2db-4f3f-8814-3a576b1d6a2a', 0 UNION ALL
SELECT 8, N'I302', N'Apartment/ 4BR 2BA-I302', N'nirshan', '20150723 08:06:45.067', N'993f378a-5341-47df-a770-3a67267c3abf', 0 UNION ALL
SELECT 8, N'M 508-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ba65871f-d6e1-4dbd-9c5a-3a6c2def87ce', 0 UNION ALL
SELECT 9, N'10N', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'fdd7ef4a-d832-4d4f-ab8c-3ac434fb4f19', 0 UNION ALL
SELECT 8, N'M 209', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'7ec1df32-34de-43e2-b465-3ad251ba42d3', 0 UNION ALL
SELECT 8, N'G501-A', N'RD Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e939b97f-878e-4102-81d2-3ad3787c227e', 0 UNION ALL
SELECT 8, N'D102-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b42afc0d-189f-4419-b323-3b2eec2771ef', 0 UNION ALL
SELECT 8, N'G509-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e44ffced-1591-46c4-9da9-3b612d22346c', 0 UNION ALL
SELECT 8, N'B207-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'9fbc7c76-cc59-42a1-845f-3b650f55c0ab', 0 UNION ALL
SELECT 9, N'11B', N'1 BR Apartment', N'nirshan', '20150723 08:07:50.047', N'07235e45-c076-448b-9e9d-3b9d815e3c20', 0 UNION ALL
SELECT 8, N'A203-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b2a8864f-9add-4be5-860d-3ba383181788', 0 UNION ALL
SELECT 10, N'A14-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'7e7dccee-b465-4368-aeec-78c76d2842ec', 0 UNION ALL
SELECT 7, N'009-1A', N'Apartment - 009-1A', N'nirshan', '20150723 08:05:19.033', N'6416bd0e-8050-48c2-91bd-78daf75d8077', 0 UNION ALL
SELECT 8, N'L502', N'2 BR 1 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'021c7864-3986-42d8-8d85-78ebf1cbf0b1', 0 UNION ALL
SELECT 9, N'3D', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'c07eaa0f-2eb7-4380-a43f-79319832023d', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 6.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 7, N'002-1B', N'Apartment - 002-1B', N'nirshan', '20150723 08:05:19.033', N'72b98203-cfb1-4b45-adb3-79370c063b53', 0 UNION ALL
SELECT 7, N'004-1A', N'Apartment - 004-1A', N'nirshan', '20150723 08:05:19.033', N'c147e4ce-6d7c-469b-8637-7945655b7bfe', 0 UNION ALL
SELECT 6, N'3412-3414', NULL, N'nirshan', '20150723 08:03:32.660', N'6392e894-9051-406b-9897-798093e36aa8', 0 UNION ALL
SELECT 8, N'I101-D', N'Apartment/Bedroom-I101-D', N'nirshan', '20150723 08:06:45.067', N'9ea26140-f304-4351-8323-798e5ddb2193', 0 UNION ALL
SELECT 8, N'E301', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'a0ca26b9-7099-4271-a566-79b8a998a67d', 0 UNION ALL
SELECT 8, N'G401', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'd44756a4-7d69-4c04-ad66-79e4fdcf78ef', 0 UNION ALL
SELECT 8, N'A402', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'3a8573d5-e822-4e59-b277-7a01b9e31e85', 0 UNION ALL
SELECT 9, N'11P', N'1 BR Apartment', N'nirshan', '20150723 08:07:50.047', N'1f38f067-da8c-4d79-8081-7a08db08afa8', 0 UNION ALL
SELECT 8, N'A402-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'bcda8a6e-0272-467d-b4b2-7a7e839344e2', 0 UNION ALL
SELECT 10, N'A5-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'98b93f82-9e8f-4d73-9736-7ab4797a6478', 0 UNION ALL
SELECT 8, N'I410-D', N'Apartment/Bedroom-I410-D', N'nirshan', '20150723 08:06:45.067', N'ca911e4c-f48f-4c87-9915-7ab957d2563e', 0 UNION ALL
SELECT 8, N'I310-D', N'Apartment/Bedroom-I310-D', N'nirshan', '20150723 08:06:45.067', N'e6688bf5-91c5-4ec9-9812-7ac6a7b8034e', 0 UNION ALL
SELECT 8, N'G201-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e8ddfaeb-90f1-4220-afe7-7acdea210780', 0 UNION ALL
SELECT 8, N'F408-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a147d2df-db26-4b30-b7a5-7adbb667900f', 0 UNION ALL
SELECT 8, N'D407-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'7275031f-7518-477b-a406-7adf586d15ea', 0 UNION ALL
SELECT 8, N'G208-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'8b14297d-6be3-45ed-b668-7adfa5960623', 0 UNION ALL
SELECT 8, N'M 201-A', N'Apartment/Bedroom', N'nirshan', '20150723 08:06:45.067', N'de38da27-a80a-4d5a-a958-7aea2f7feae9', 0 UNION ALL
SELECT 8, N'F308-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6b97d77b-2d74-40a6-8690-7af650131190', 0 UNION ALL
SELECT 8, N'J 119B', N'Workroom', N'nirshan', '20150723 08:06:45.067', N'5cecf644-2d4e-4785-a8fe-7b73c1731889', 0 UNION ALL
SELECT 8, N'L305', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'24087b78-64d8-4dc4-b7d9-7b9b9bdfbbca', 0 UNION ALL
SELECT 8, N'G102-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'261cb1ad-ce73-4635-aae9-7b9d24771927', 0 UNION ALL
SELECT 8, N'I510', N'Apartment/ 4BR 2BA-I510', N'nirshan', '20150723 08:06:45.067', N'55ff849b-d645-4646-a834-7bb126ceea0d', 0 UNION ALL
SELECT 8, N'G111-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'c1aa321e-b0cc-421f-bb99-7bc6837cefb5', 0 UNION ALL
SELECT 10, N'B22-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'be832956-c376-4e8a-9784-7bd08a361ad1', 0 UNION ALL
SELECT 8, N'D307-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'5234ca04-95ce-4ab0-9556-7bdc6c49f444', 0 UNION ALL
SELECT 8, N'J 110', N'Reception', N'nirshan', '20150723 08:06:45.067', N'dbb116d1-1961-4f09-bb23-7c0aa0ed7a5b', 0 UNION ALL
SELECT 8, N'G307-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'87d4028d-2d63-4ee9-af58-7c67bd7e0bec', 0 UNION ALL
SELECT 9, N'10R', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'b77c104b-c012-46a7-a881-7cc7bb64ebba', 0 UNION ALL
SELECT 8, N'M 305-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'4d064db7-72c5-4239-bb8e-ad8fbd6c2f7e', 0 UNION ALL
SELECT 8, N'I408-A', N'Apartment/Bedroom-I408-A', N'nirshan', '20150723 08:06:45.067', N'474ff83f-1af5-4440-90e1-adbdc289a8f7', 0 UNION ALL
SELECT 8, N'M104-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'8188baa6-4a86-448a-8622-adc4d473b66c', 0 UNION ALL
SELECT 8, N'F404', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'294b4990-dc4c-4525-af6b-adcedef00360', 0 UNION ALL
SELECT 8, N'F603-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'2d3ba064-4a83-485c-85d3-add078dc967d', 0 UNION ALL
SELECT 7, N'004-1B', N'Apartment - 004-1B', N'nirshan', '20150723 08:05:19.033', N'53d413dd-2cb9-4586-bfee-ae0d7aa23538', 0 UNION ALL
SELECT 8, N'I205-D', N'Apartment/Bedroom-I205-D', N'nirshan', '20150723 08:06:45.067', N'b88aa8b3-db17-435a-8da2-ae205aab924b', 0 UNION ALL
SELECT 8, N'E110', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'e4aa1c06-34e6-4404-9c41-ae2269819677', 0 UNION ALL
SELECT 8, N'G309-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'65a20b8d-c5f6-4931-a776-ae4e2b082c47', 0 UNION ALL
SELECT 9, N'12G', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'06467fba-dfe8-4bce-8b8e-ae807ad75338', 0 UNION ALL
SELECT 8, N'D308', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'8489eb96-c340-4a3f-a1b7-ae8b0af10761', 0 UNION ALL
SELECT 9, N'8N', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'ba8e4639-a63f-408a-9626-aea3dda6f8e2', 0 UNION ALL
SELECT 10, N'C37-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'2f94598e-dc86-4e23-b948-aea4e51b5c72', 0 UNION ALL
SELECT 8, N'G207-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'8b9a6320-f259-42db-a837-aea75617032b', 0 UNION ALL
SELECT 8, N'F612', N'2 BR 1 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'0d85e6e8-14e3-466a-9eac-aec71627066f', 0 UNION ALL
SELECT 8, N'A104-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6aaf898e-0c8e-4ffc-a428-aeda63cad42f', 0 UNION ALL
SELECT 8, N'G203-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'43abb2cc-7ea4-4aff-96bb-aedd4efb276e', 0 UNION ALL
SELECT 10, N'B27-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'ad60ee0e-bbcb-4a13-a42f-aee4e471b07a', 0 UNION ALL
SELECT 8, N'F405-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f060441a-2a35-4773-8ed6-aef1af75399c', 0 UNION ALL
SELECT 8, N'M 512-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f1096640-d1db-477d-804e-aef3cd4d98c6', 0 UNION ALL
SELECT 8, N'G301-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'41f887ac-d3c8-4a6d-873b-af1cf4aa2e6c', 0 UNION ALL
SELECT 8, N'M 512-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f2db92c8-db92-4110-a156-af3c31f74eaf', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 7.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 8, N'M 205-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3a8b63ce-da5f-46db-9d01-af717eedd8d1', 0 UNION ALL
SELECT 9, N'5N', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'fee16912-24a9-4af2-9699-af93d670bc58', 0 UNION ALL
SELECT 8, N'D104-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'c3e49286-6a3e-496f-b411-af9bd7013887', 0 UNION ALL
SELECT 8, N'B307-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f069e23f-18a4-480c-aa0f-afa0909643d7', 0 UNION ALL
SELECT 8, N'D109-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3a2ea993-047a-4ab4-b064-afaa2e892e9b', 0 UNION ALL
SELECT 8, N'L509', N'2 BR 1 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'fde265df-72be-451b-94c3-afe627a699c6', 0 UNION ALL
SELECT 8, N'M 307-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'21875821-5759-4fa8-8aa8-03f6a1797049', 0 UNION ALL
SELECT 8, N'E209', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'07c68de4-f85c-48d7-85c9-046662250837', 0 UNION ALL
SELECT 8, N'G305-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'fa804b10-e0fb-44cd-ac1b-048848f2c94d', 0 UNION ALL
SELECT 10, N'D47-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'81991a71-28e7-420d-9564-04b0eaa98550', 0 UNION ALL
SELECT 8, N'G201-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'88a60fcf-46bf-499a-9b27-04b371aa8448', 0 UNION ALL
SELECT 8, N'M 508-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6c9e2fee-3c05-4b69-a55c-05041b0cf76c', 0 UNION ALL
SELECT 10, N'E64', N'1BR Apartment', N'nirshan', '20150723 08:08:25.727', N'38950ff9-3273-4f71-a054-058c98f6ee32', 0 UNION ALL
SELECT 9, N'16B', N'Deluxe 2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'8b8c6e5f-5ef0-4a75-a1a1-058d8d962c86', 0 UNION ALL
SELECT 10, N'D49-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'2bc04a4a-f20d-4ec1-a8f9-05b3790f0cd5', 0 UNION ALL
SELECT 8, N'M 203-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'208122bb-f5d9-4e4d-8467-05e19817b7ad', 0 UNION ALL
SELECT 8, N'M 304-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'cde89a12-e17c-4725-aa4c-05fcdb818e5f', 0 UNION ALL
SELECT 8, N'A401-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'1735382f-713e-4fd3-bfb3-0611af95d16a', 0 UNION ALL
SELECT 10, N'D56-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'824829a3-dc8d-474c-922b-061b89fd9db8', 0 UNION ALL
SELECT 8, N'F401-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'c4ae5d64-8e8f-4625-924b-065883eb4fcc', 0 UNION ALL
SELECT 8, N'M 104', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'7fb44c67-485a-4203-bb82-065fa141cbfd', 0 UNION ALL
SELECT 10, N'E63', N'1BR Apartment', N'nirshan', '20150723 08:08:25.727', N'9748527e-6e06-40ea-ab5f-06614d9bb45f', 0 UNION ALL
SELECT 8, N'M 409-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'42866a56-d317-4e76-b6f8-06628eda9455', 0 UNION ALL
SELECT 6, N'3397-3399', NULL, N'nirshan', '20150723 08:03:32.660', N'e052b2b0-1418-43b2-aa2b-069d18252037', 0 UNION ALL
SELECT 10, N'A4-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'7ea92b2c-e90a-421a-a3be-06f5146ea986', 0 UNION ALL
SELECT 8, N'F306-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'c5e1c92c-c513-41ec-8adc-07105e603768', 0 UNION ALL
SELECT 8, N'D409', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'5956e4a5-ecc7-4bc0-aba1-071077fd40b5', 0 UNION ALL
SELECT 8, N'M 408', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'6c21bcc5-decc-4414-a4a8-076537fe2a62', 0 UNION ALL
SELECT 10, N'A15', N'2BR Apartment', N'nirshan', '20150723 08:08:25.727', N'e5cbf67e-4df4-4a96-bab3-077a747d5660', 0 UNION ALL
SELECT 9, N'7E', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'1c6cfae5-feb9-4c96-a4eb-07a261bc091a', 0 UNION ALL
SELECT 7, N'013-1A', N'Apartment - 013-1A', N'nirshan', '20150723 08:05:19.033', N'7b154af6-caf0-45f4-a054-07c9af34687c', 0 UNION ALL
SELECT 8, N'A407-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6f4b7c23-544d-4b86-8656-07d8fe7b211a', 0 UNION ALL
SELECT 8, N'M 201-B', N'Apartment/Bedroom', N'nirshan', '20150723 08:06:45.067', N'1246d8e5-c63e-4301-9433-082e553460f7', 0 UNION ALL
SELECT 8, N'G511-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'73cbd148-21d2-48fb-9066-0b4c17927636', 0 UNION ALL
SELECT 8, N'F601-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'42184cf9-85b6-4e75-ac9f-0b8b858db375', 0 UNION ALL
SELECT 9, N'9Q', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'dd3caad1-68fb-4cc7-8316-0b93b40bf409', 0 UNION ALL
SELECT 8, N'D101-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6f39a772-cb59-4b55-9417-0bfb8f396227', 0 UNION ALL
SELECT 8, N'L102-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'2eb43ac5-263c-4a54-a7dd-0c19dd2b2532', 0 UNION ALL
SELECT 9, N'2B', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'5268a5d9-6df6-45a5-a4c2-0c1c32ffd592', 0 UNION ALL
SELECT 8, N'M 607-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'905a02eb-807d-44c4-b6f6-0c6d3b95fb06', 0 UNION ALL
SELECT 10, N'B31-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'4b6361fd-6172-4766-8318-0c6e17e47c7d', 0 UNION ALL
SELECT 8, N'I102-A', N'Apartment/Bedroom-I102-A', N'nirshan', '20150723 08:06:45.067', N'133a8d98-f56c-421d-aca2-0c72d8e27d04', 0 UNION ALL
SELECT 8, N'J 120', N'Office', N'nirshan', '20150723 08:06:45.067', N'4b6b63c8-3662-49e3-94a5-0c734cf3f073', 0 UNION ALL
SELECT 8, N'I104-A', N'Apartment/Bedroom-I104-A', N'nirshan', '20150723 08:06:45.067', N'5d773fb5-1954-42c2-b567-0c750222a3bb', 0 UNION ALL
SELECT 10, N'A12', N'2BR 2BA Apartment', N'nirshan', '20150723 08:08:25.727', N'd206bbac-e634-435b-b592-0c8897938a79', 0 UNION ALL
SELECT 8, N'E104', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'e5562321-4440-4444-9c33-0c889f8fb935', 0 UNION ALL
SELECT 8, N'E410-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'dfe7db91-815a-4e20-b596-0c972e6c7719', 0 UNION ALL
SELECT 8, N'M 508-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'391157ba-f4d4-49de-a9ec-0c987ac24231', 0 UNION ALL
SELECT 8, N'E302-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'04fb5339-e43a-48db-98ce-0c99cb4673c7', 0 UNION ALL
SELECT 8, N'M 306-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'20457387-c349-474e-986e-0cde91935ed1', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 8.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 8, N'M 504-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'071c2e48-a8c7-48ba-991f-0d0d3bd32335', 0 UNION ALL
SELECT 9, N'17A', N'Studio Apartment', N'nirshan', '20150723 08:07:50.047', N'37140c10-0a4a-45dd-8f55-0d1227bedee1', 0 UNION ALL
SELECT 8, N'F506-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'35dc2e56-1211-4d86-8eed-0d325ff2e5be', 0 UNION ALL
SELECT 8, N'A405', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'0f9a5a3d-23c9-4b92-85ed-0d343f96ac95', 0 UNION ALL
SELECT 8, N'E202-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a70d2569-c56a-4267-971a-0d76acbc6b1f', 0 UNION ALL
SELECT 8, N'M 608', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'f5303757-ba9b-45fd-8747-0da785fdf42c', 0 UNION ALL
SELECT 8, N'F608', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'ec58ebe1-85c7-4c2e-94ed-0deadabd5064', 0 UNION ALL
SELECT 8, N'F504-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'473fc08e-d190-4902-a79a-0df81ac0ff06', 0 UNION ALL
SELECT 8, N'L203', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'e719d469-4ad1-468a-83d7-0e199f6510ee', 0 UNION ALL
SELECT 8, N'I308-B', N'Apartment/Bedroom-I308-B', N'nirshan', '20150723 08:06:45.067', N'9eae6c85-bdf9-4a14-af3e-0e37c9bd2bf9', 0 UNION ALL
SELECT 8, N'F409-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f1015140-6ca5-4ca7-95bb-0e59be9a85bd', 0 UNION ALL
SELECT 8, N'E208-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'1c1325d8-1e15-48b2-8368-0e5c53e16395', 0 UNION ALL
SELECT 8, N'E409-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a8f192e3-113c-4588-8425-0e6f0a8231f2', 0 UNION ALL
SELECT 8, N'E108-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'0eef8918-d74b-46ff-bc99-0e76833a2e7d', 0 UNION ALL
SELECT 8, N'G302-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3d2d575b-4c32-482b-aa85-0e7f8cb5861e', 0 UNION ALL
SELECT 8, N'A405-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'8ddc059f-2a38-4fa2-a53a-0e99414287a6', 0 UNION ALL
SELECT 8, N'F403', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'7102c4c4-0be8-423a-b6cc-0e9dd5029256', 0 UNION ALL
SELECT 8, N'I405-B', N'Apartment/Bedroom-I405-B', N'nirshan', '20150723 08:06:45.067', N'804c5835-2866-4252-9888-0ecd427fdba5', 0 UNION ALL
SELECT 8, N'G202-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'cb21fce0-678c-4816-bdd7-0eeb3829a8d4', 0 UNION ALL
SELECT 8, N'I407', N'Apartment/ 4BR 2BA-I407', N'nirshan', '20150723 08:06:45.067', N'703a6e91-cdb9-4dd3-b81a-0f158f6cf59b', 0 UNION ALL
SELECT 8, N'F202-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'cacb32cc-e942-427f-a8e1-0f33604022b5', 0 UNION ALL
SELECT 8, N'F602-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'c4839a87-f010-4e5c-9bb1-0f503439dc01', 0 UNION ALL
SELECT 8, N'M 402-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'4b748de4-cb21-4dec-8b75-0f57dedc518e', 0 UNION ALL
SELECT 9, N'9I', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'84766a6f-8bff-470b-912f-0f645f1407ee', 0 UNION ALL
SELECT 8, N'G304', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'b84507b5-dde3-4b78-be4e-0f762c5d724e', 0 UNION ALL
SELECT 8, N'I107-B', N'Apartment/Bedroom-I107-B', N'nirshan', '20150723 08:06:45.067', N'38deb990-a9f0-4b40-a305-0f7d4dbaba69', 0 UNION ALL
SELECT 8, N'D107-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'2d0a788b-23e3-47a7-8a70-0f886a236f52', 0 UNION ALL
SELECT 8, N'I503-D', N'Apartment/Bedroom-I503-D', N'nirshan', '20150723 08:06:45.067', N'2f6d9cd5-6432-49f1-8bb7-0f8c3afccb7c', 0 UNION ALL
SELECT 8, N'M101-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'64679449-dd5f-414b-a807-0f8c82be66e5', 0 UNION ALL
SELECT 8, N'I201-D', N'Apartment/Bedroom-I201-D', N'nirshan', '20150723 08:06:45.067', N'0e92f661-a11b-437d-90a3-0f9095204e51', 0 UNION ALL
SELECT 9, N'5Q', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'c222c29c-9c27-440b-94d7-0fdad3c3736a', 0 UNION ALL
SELECT 8, N'E104-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'acd8895b-1133-4608-8915-0ffd83fcb180', 0 UNION ALL
SELECT 8, N'E410-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'142f0715-7adb-4e15-aa38-10264145533b', 0 UNION ALL
SELECT 9, N'9L', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'05ec394b-d8f5-48d6-abfd-10495fa997d4', 0 UNION ALL
SELECT 8, N'E107-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ce798a34-48a8-4f61-9e07-104bfad5b45e', 0 UNION ALL
SELECT 8, N'F204', N'2 BR 1 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'a7ffcab8-5fe7-453f-b052-10735365cd4f', 0 UNION ALL
SELECT 8, N'G403-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'1b579041-0315-4f58-a6c8-107ddaf09b4d', 0 UNION ALL
SELECT 10, N'A8-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'32c8c7b2-805b-4255-985d-109695c953d7', 0 UNION ALL
SELECT 8, N'M 310-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e9b6fbc0-71b7-4bf5-8371-10abc7291e1c', 0 UNION ALL
SELECT 9, N'11C', N'1 BR Apartment', N'nirshan', '20150723 08:07:50.047', N'68564fdf-5ccf-427a-a6fe-10e08ce58ae4', 0 UNION ALL
SELECT 8, N'I207-C', N'Apartment/Bedroom-I207-C', N'nirshan', '20150723 08:06:45.067', N'd53dafc2-437c-46e8-87e6-10f21095e06f', 0 UNION ALL
SELECT 8, N'M 502', N'Apartment/RD', N'nirshan', '20150723 08:06:45.067', N'05ac372f-2109-4e22-a07c-110b5004539c', 0 UNION ALL
SELECT 6, N'3342-3344', NULL, N'nirshan', '20150723 08:03:32.660', N'3f99db81-3755-49b4-b043-1894a2d711ec', 0 UNION ALL
SELECT 8, N'I302-C', N'Apartment/Bedroom-I302-C', N'nirshan', '20150723 08:06:45.067', N'72e63321-66e7-4bca-9154-18ac6536df97', 0 UNION ALL
SELECT 8, N'D208-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'71e45661-594e-484a-bfb9-18d80aac095b', 0 UNION ALL
SELECT 8, N'G203', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'1af7cee1-2a5a-40e9-bcd3-1905c1726390', 0 UNION ALL
SELECT 8, N'D202-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'48592213-23a1-4382-9f5e-19118ce5e11a', 0 UNION ALL
SELECT 8, N'M 304', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'2adfd9a2-a126-4f00-b0e4-191ea8358ede', 0 UNION ALL
SELECT 6, N'3348-3350', NULL, N'nirshan', '20150723 08:03:32.660', N'ba2bd943-3c32-4b7d-8756-192aa85c5287', 0 UNION ALL
SELECT 8, N'D107-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'89d1d229-7208-48f1-89c4-194513b2646f', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 9.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 8, N'M 503', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'a13cea78-016a-4557-bb6a-1967df4d7f9e', 0 UNION ALL
SELECT 9, N'2O', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'bd2e374c-9d0e-4c99-87c0-1982ecb0181b', 0 UNION ALL
SELECT 8, N'I101-A', N'Apartment/Bedroom-I101-A', N'nirshan', '20150723 08:06:45.067', N'a811e38e-7f78-40c4-aa81-1986c422a8e9', 0 UNION ALL
SELECT 8, N'D401-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'cee90fad-7fc0-4bc2-970c-19a25d6c2793', 0 UNION ALL
SELECT 10, N'B28', N'2BR 2BA Apartment', N'nirshan', '20150723 08:08:25.727', N'520d548e-bde4-430d-aa48-19aa6fb93c23', 0 UNION ALL
SELECT 8, N'F508-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b55c08fa-505e-4821-b771-19c5367b08fa', 0 UNION ALL
SELECT 8, N'A208', N'1 BR Apartment', N'nirshan', '20150723 08:06:45.067', N'6b30bbe4-240f-4714-929a-19c75e637a47', 0 UNION ALL
SELECT 7, N'015-2C', N'Apartment - 015-2C', N'nirshan', '20150723 08:05:19.033', N'd03ae2a2-3e54-483e-bafe-19e7393bc2ca', 0 UNION ALL
SELECT 6, N'852-854', NULL, N'nirshan', '20150723 08:03:32.660', N'9267bbad-807c-4831-a95d-19e7b8b9f6bf', 0 UNION ALL
SELECT 8, N'A107-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'bd41f368-db00-4118-a8ad-19f87ec08c99', 0 UNION ALL
SELECT 8, N'D110-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'9e5ab321-087e-45a1-9f24-1a0b14c769b7', 0 UNION ALL
SELECT 9, N'1P', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'119bfd3f-cc77-4ae0-a352-1a20b0e92f3e', 0 UNION ALL
SELECT 8, N'F608-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'9b6ebce6-f202-4e6a-92fa-1a2fbce6ad57', 0 UNION ALL
SELECT 8, N'I201-B', N'Apartment/Bedroom-I201-B', N'nirshan', '20150723 08:06:45.067', N'd501d1b3-ca5e-466d-ba6f-1a2fd0081c0d', 0 UNION ALL
SELECT 8, N'B203-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'fb4f67d1-6360-4452-a5cb-1a5f45dfb851', 0 UNION ALL
SELECT 8, N'M 509-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'47b6a493-2474-4c04-bdf2-1a7ef8a9d0d3', 0 UNION ALL
SELECT 8, N'I303-B', N'Apartment/Bedroom-I303-B', N'nirshan', '20150723 08:06:45.067', N'9934445f-eb1e-48db-aaf0-1a96151cc9dd', 0 UNION ALL
SELECT 8, N'E108-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'505043e6-fb88-4d8e-ab68-1b244676020d', 0 UNION ALL
SELECT 7, N'022-1A', N'Apartment - 022-1A', N'nirshan', '20150723 08:05:19.033', N'28b4efaa-cd0c-4d8c-b899-1b308d6d87fa', 0 UNION ALL
SELECT 8, N'A102-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'17ef43d0-e047-40bb-adfe-1b51cd05d8f2', 0 UNION ALL
SELECT 8, N'B203-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'703afcda-2c80-409c-a1c8-1bd5779c7019', 0 UNION ALL
SELECT 8, N'D205', N'2BR Apartment', N'nirshan', '20150723 08:06:45.067', N'a57ce553-ec2d-43f8-a60b-2139d881f0c2', 0 UNION ALL
SELECT 9, N'5S', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'de474da3-a45f-4e32-8f47-214bb0163379', 0 UNION ALL
SELECT 8, N'I201', N'Apartment/ 4BR 2BA-I201', N'nirshan', '20150723 08:06:45.067', N'7097dba3-ce72-48ea-a3fe-215bfd4ff079', 0 UNION ALL
SELECT 8, N'I302-A', N'Apartment/Bedroom-I302-A', N'nirshan', '20150723 08:06:45.067', N'39818d99-0bfe-4edf-bcd6-2161692cc945', 0 UNION ALL
SELECT 8, N'A303-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'376db3c1-35c9-45a7-af18-216b125613e5', 0 UNION ALL
SELECT 8, N'F407-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b5fb65f8-8cad-476c-879d-216b380eed31', 0 UNION ALL
SELECT 8, N'I202', N'Apartment/4BR 2BA-I202', N'nirshan', '20150723 08:06:45.067', N'8d574a3d-3bb0-45b5-9165-21718efdbf5b', 0 UNION ALL
SELECT 8, N'F607-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b3e5b92e-0cd9-45ba-b2c6-217a458f7ffb', 0 UNION ALL
SELECT 8, N'E-406', N'2BR Apartment', N'nirshan', '20150723 08:06:45.067', N'051aba61-26cc-497f-8e34-21c64a61f7bb', 0 UNION ALL
SELECT 8, N'E309-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'2f2f0e61-7153-4968-bffd-21fb931873d0', 0 UNION ALL
SELECT 8, N'D406-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'55b499fc-3298-41bd-b70b-2208b5e17d04', 0 UNION ALL
SELECT 8, N'M104-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a1afac4b-abf8-49e0-b798-257c86bf5397', 0 UNION ALL
SELECT 8, N'E110-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b1422a7f-eb16-4c3b-9d86-25c226d37e24', 0 UNION ALL
SELECT 8, N'M 410', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'72e79511-969a-496f-8e2c-25d2d3b4ca70', 0 UNION ALL
SELECT 8, N'M 306-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'0999047a-d1e7-487b-8c6e-25da27496798', 0 UNION ALL
SELECT 8, N'G308-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'8f3b967c-9d4a-4669-9e92-2606e27cd0b2', 0 UNION ALL
SELECT 9, N'14D', N'Deluxe 2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'8338d4ce-0724-46ca-92a5-2642c8973c9c', 0 UNION ALL
SELECT 8, N'F608-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'4c5380e2-3431-4187-b1a7-2644705ede29', 0 UNION ALL
SELECT 8, N'L407', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'72a54200-652a-417f-8ed5-2649562b5290', 0 UNION ALL
SELECT 8, N'A108', N'1 BR Apartment', N'nirshan', '20150723 08:06:45.067', N'9080b45c-da93-4db8-9eb4-2653010ce2d2', 0 UNION ALL
SELECT 10, N'A9-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'39a8ddbb-b424-4980-a889-26639eb6a94f', 0 UNION ALL
SELECT 9, N'8P', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'277dedb4-43cb-4f21-9fad-268c30d23261', 0 UNION ALL
SELECT 8, N'G404-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'fe26f1e9-71df-484b-a0ca-26b5af245e0b', 0 UNION ALL
SELECT 9, N'16E', N'Deluxe 2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'81095c37-ccf2-44b2-a63e-26deca5b5b59', 0 UNION ALL
SELECT 10, N'D44-2-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'ce581cbd-124f-414d-ad98-270fe9e2c696', 0 UNION ALL
SELECT 9, N'4E', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'9f4659ed-db9f-4d16-8d33-273962c8ff61', 0 UNION ALL
SELECT 8, N'G507-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'5863cf16-da3e-42b4-9f30-274879d853ee', 0 UNION ALL
SELECT 8, N'E104-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3ffdfbe1-0225-4f51-9b73-27502ab10c6d', 0 UNION ALL
SELECT 10, N'B26-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'7d20d0e0-1d60-4ddc-92b4-276e0f5a78a2', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 10.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 8, N'I207-D', N'Apartment/Bedroom-I207-D', N'nirshan', '20150723 08:06:45.067', N'f27e1bc0-e71c-4d15-9759-27728f90d06a', 0 UNION ALL
SELECT 10, N'A3-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'a6e22ba9-25d1-45f8-8c9b-27f0d715ccb5', 0 UNION ALL
SELECT 8, N'I310-C', N'Apartment/Bedroom-I310-C', N'nirshan', '20150723 08:06:45.067', N'b58caac1-a9d3-4fc8-807b-27f27b8a7add', 0 UNION ALL
SELECT 9, N'7P', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'1c0de4b0-414c-45d1-aafc-2895cbddd4f2', 0 UNION ALL
SELECT 8, N'M101-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'7d4abfc8-8c41-4d9f-8aac-28c4cc6a2c05', 0 UNION ALL
SELECT 9, N'4D', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'150fb348-75c7-469f-a3f9-28ec628e4d15', 0 UNION ALL
SELECT 6, N'3351-3353', NULL, N'nirshan', '20150723 08:03:32.660', N'85dc6886-f268-49f6-993c-28f2e4da8280', 0 UNION ALL
SELECT 8, N'F506-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b6d96ae9-afa9-4b9e-a470-2903177569cc', 0 UNION ALL
SELECT 10, N'A4', N'2BR 2BA Apartment', N'nirshan', '20150723 08:08:25.727', N'0c894c22-00ec-441c-950f-290449f8ccc5', 0 UNION ALL
SELECT 8, N'I506-A', N'Apartment/Bedroom-I506-A', N'nirshan', '20150723 08:06:45.067', N'cc03bcdf-9278-4bd2-a96d-29100f4daaf2', 0 UNION ALL
SELECT 8, N'G307-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'70a62c75-cb74-47ae-bd4e-2910e5cfb6de', 0 UNION ALL
SELECT 8, N'I410-C', N'Apartment/Bedroom-I410-C', N'nirshan', '20150723 08:06:45.067', N'422940aa-452e-440f-b5a5-293b31839b61', 0 UNION ALL
SELECT 8, N'I109', N'Apartment/2BR 1BA-I109', N'nirshan', '20150723 08:06:45.067', N'9eae2d2c-d859-40d7-97cf-294641b6c8c7', 0 UNION ALL
SELECT 8, N'M 410-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'cbd83859-6e51-4253-a552-294bbd84f1cc', 0 UNION ALL
SELECT 8, N'K 121', N'Mechanical Room', N'nirshan', '20150723 08:06:45.067', N'c1194594-ecac-4bae-8544-2955f44cf0de', 0 UNION ALL
SELECT 8, N'E102-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'36591558-601e-4e7c-b5e3-3ba464e53609', 0 UNION ALL
SELECT 8, N'D207-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'999b47ea-4108-4975-ba74-3bce9585831b', 0 UNION ALL
SELECT 8, N'I108', N'Apartment/2BR 1BA-I108', N'nirshan', '20150723 08:06:45.067', N'fafedb4d-e653-412a-9424-3bef529b7294', 0 UNION ALL
SELECT 8, N'F606-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e63ffe75-7e46-4b0b-939e-3c3287b60cb6', 0 UNION ALL
SELECT 8, N'F504-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'8c064e69-20e6-4ecf-ab16-3c58c7543dc7', 0 UNION ALL
SELECT 8, N'D404-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'125f6983-dd65-4ef4-a458-3c762be486d5', 0 UNION ALL
SELECT 7, N'010-1A', N'Apartment - 010-1A', N'nirshan', '20150723 08:05:19.033', N'e56fe5be-3fc8-4425-97e0-3ca773f9444a', 0 UNION ALL
SELECT 8, N'M 301-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'0c76237c-63eb-445c-9f6f-3cabf4ba2548', 0 UNION ALL
SELECT 8, N'G201-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'4b5e0536-9fe5-4667-b79e-3cc6cfa4aaa7', 0 UNION ALL
SELECT 8, N'F305-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'00c9c61d-7ad5-4566-8e9b-3ccc9a1de598', 0 UNION ALL
SELECT 8, N'B403-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'1ac7b8a7-12bf-4d95-8ccb-3cd91c46a34d', 0 UNION ALL
SELECT 10, N'B21', N'2BR 2BA Apartment', N'nirshan', '20150723 08:08:25.727', N'e4dd415e-034f-4214-9fd9-3cfbc46b0422', 0 UNION ALL
SELECT 9, N'9R', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'15d323a0-a670-4de1-bf42-3d0caed3548a', 0 UNION ALL
SELECT 8, N'F201-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd72490cf-6585-46a3-89d7-3d230bb117e3', 0 UNION ALL
SELECT 8, N'F510', N'2 BR 1 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'b4e2946c-04d1-4130-a3cb-3d572313206e', 0 UNION ALL
SELECT 6, N'848-850', NULL, N'nirshan', '20150723 08:03:32.660', N'4b37a93b-95f1-4f3f-8782-3d6236bb6b97', 0 UNION ALL
SELECT 8, N'E209-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a2ff5dc5-b541-4975-86bc-3da0a2d927c8', 0 UNION ALL
SELECT 8, N'D410-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'0eda4cbe-c961-42e3-8b16-3de361377763', 0 UNION ALL
SELECT 9, N'7K', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'c772898f-87ae-4c57-9351-3de4917cc96c', 0 UNION ALL
SELECT 8, N'I308-A', N'Apartment/Bedroom-I308-A', N'nirshan', '20150723 08:06:45.067', N'9a590300-e7bc-45ee-ba56-3e48e6a1ef59', 0 UNION ALL
SELECT 9, N'6Q', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'72b4df64-7738-4a69-9381-3e49dd8646d0', 0 UNION ALL
SELECT 10, N'A6-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'9d5b5ae8-e31f-463d-ab6b-3e76735cc55e', 0 UNION ALL
SELECT 8, N'G301-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'255a26b1-9ef0-4c23-a7b5-3e99611d571b', 0 UNION ALL
SELECT 8, N'E401', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'479f8c59-1677-4a62-a08d-3eb36fa1e565', 0 UNION ALL
SELECT 8, N'I408', N'Apartment/ 4BR 2BA-I408', N'nirshan', '20150723 08:06:45.067', N'9584c7fd-6ae2-4d01-9661-3ebc947be110', 0 UNION ALL
SELECT 8, N'A208-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ac8312ee-18ca-464c-9e73-3f33f4712b43', 0 UNION ALL
SELECT 6, N'3477-3479', NULL, N'nirshan', '20150723 08:03:32.660', N'535c7748-5fde-400e-be14-3f3e84bb8f71', 0 UNION ALL
SELECT 8, N'F309-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'7fbb2d71-3f33-4cac-b722-3f6537ce950c', 0 UNION ALL
SELECT 8, N'E210-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'5069e580-8b29-4d13-afc1-4ad7a97d6dce', 0 UNION ALL
SELECT 10, N'D46', N'2BR 2BA Apartment', N'nirshan', '20150723 08:08:25.727', N'ef1969b1-b0a5-4f94-a58d-4af39202b55c', 0 UNION ALL
SELECT 8, N'I108-D', N'Apartment/Bedroom-I108-D', N'nirshan', '20150723 08:06:45.067', N'fe8b9769-a2cc-42f0-a59d-4b1fc838c29c', 0 UNION ALL
SELECT 8, N'A405-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6db40a7f-9e2f-4d1a-85bc-4b211f68a5d3', 0 UNION ALL
SELECT 8, N'G109', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'a5fbc121-ef80-47c5-a358-4b4314101d65', 0 UNION ALL
SELECT 8, N'G303-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'0314ef87-7269-4515-baa6-4bac1360cafd', 0 UNION ALL
SELECT 8, N'F405-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'26a98113-430e-4e6e-a6c9-4bbc38554ec7', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 11.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 8, N'E210-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e5271bad-a632-4f97-b807-4bbee0d16b0e', 0 UNION ALL
SELECT 8, N'M 406-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'c04b37e5-d8f5-48eb-b399-4eb21de5f644', 0 UNION ALL
SELECT 8, N'F602', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'bb493fdd-4b7b-4b59-8c22-4eb877de0ba1', 0 UNION ALL
SELECT 8, N'A302-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'7d9d68e1-6aea-4973-b4aa-4eecf417eeec', 0 UNION ALL
SELECT 9, N'3B', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'c4934499-d2eb-4dbb-97b5-4f2734b9c82e', 0 UNION ALL
SELECT 8, N'G107-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'fc536db2-8e7f-4cd2-b829-4f4198316bf3', 0 UNION ALL
SELECT 8, N'D102-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'854d6773-2ce3-4205-8cc9-4f658644208f', 0 UNION ALL
SELECT 8, N'B305', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'4b5655f3-0608-4b85-a966-4f77a02cfdc4', 0 UNION ALL
SELECT 8, N'E109-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'4df6e742-f020-4709-ad12-4f7e96c5aa81', 0 UNION ALL
SELECT 8, N'M 605-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e6d6a00b-fdfe-47bd-b10c-4fa14c8b7384', 0 UNION ALL
SELECT 9, N'2J', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'6d2b5e34-47f1-4209-b812-4fc97144daa9', 0 UNION ALL
SELECT 8, N'A401', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'cdfd6197-cf6a-4a38-a86d-4fe26fcf4d66', 0 UNION ALL
SELECT 8, N'A103-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'476f97b4-d338-4c92-a2cf-4febc7b8126f', 0 UNION ALL
SELECT 8, N'I105-B', N'Apartment/Bedroom-I105-B', N'nirshan', '20150723 08:06:45.067', N'1e4b6484-9e7c-45b4-b8e9-4ff8b0724764', 0 UNION ALL
SELECT 8, N'A208-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'236304cd-0072-4873-9a80-505c07492b1d', 0 UNION ALL
SELECT 9, N'19C', N'Studio Apartment', N'nirshan', '20150723 08:07:50.047', N'783bdce0-984c-41c1-947d-5070a280149c', 0 UNION ALL
SELECT 7, N'021-1B', N'Apartment - 021-1B', N'nirshan', '20150723 08:05:19.033', N'0853a681-c8e1-4b93-acde-50ca78beb399', 0 UNION ALL
SELECT 10, N'C35-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'8c7a16d9-e494-46eb-90a5-50d2cd340524', 0 UNION ALL
SELECT 8, N'M 207', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'e1dc7504-8ee9-473e-81fc-50d2eeaad58d', 0 UNION ALL
SELECT 10, N'A13-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'79be524b-fd38-413f-962e-50dbfb6e2c29', 0 UNION ALL
SELECT 8, N'M 408-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'31e8d873-b44e-4860-8728-510efd9ed22c', 0 UNION ALL
SELECT 8, N'B104-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'5a63bb84-b068-473e-86ec-572f678cde91', 0 UNION ALL
SELECT 7, N'010-1B', N'Apartment - 010-1B', N'nirshan', '20150723 08:05:19.033', N'8f0c196a-755e-4ff0-868e-5737d8fe7b1f', 0 UNION ALL
SELECT 8, N'E103-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'19d2e971-923e-457c-b1e6-5748ec69553e', 0 UNION ALL
SELECT 8, N'F301-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'2fcce58c-3ebd-4525-8ed7-578681086304', 0 UNION ALL
SELECT 8, N'I305-C', N'Apartment/Bedroom-I305-C', N'nirshan', '20150723 08:06:45.067', N'5c6e85a6-bbc2-465f-8977-579b4a61d329', 0 UNION ALL
SELECT 8, N'F609-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'1db79fbf-7607-420d-be2c-57bb0a734846', 0 UNION ALL
SELECT 7, N'001-2C', N'Apartment - 001-2C', N'nirshan', '20150723 08:05:19.033', N'b835e035-3683-4d64-87af-57c51b954ce2', 0 UNION ALL
SELECT 8, N'I502-A', N'Apartment/Bedroom-I502-A', N'nirshan', '20150723 08:06:45.067', N'494d923a-dea6-407d-b40c-57e62b98a7d6', 0 UNION ALL
SELECT 8, N'D301-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'557ca338-35e9-41fb-b599-57f70620a224', 0 UNION ALL
SELECT 8, N'M 506', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'bf106287-d74a-4a53-8bde-5802994e5cac', 0 UNION ALL
SELECT 8, N'G505-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3826a259-9c34-4a1c-b293-58042cdb446f', 0 UNION ALL
SELECT 8, N'M 103', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'dd39c511-77d3-4a8c-ba47-580b81790573', 0 UNION ALL
SELECT 8, N'E301-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ee696c3c-20b1-4cf2-8879-585ef9c7a9ed', 0 UNION ALL
SELECT 8, N'M102-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'80db917a-f5e0-4815-bbe9-589788c0a7a4', 0 UNION ALL
SELECT 8, N'B403-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'5541e714-2801-4fa0-896a-58a038ff349d', 0 UNION ALL
SELECT 8, N'D301', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'1f9b8218-ea8d-497a-93e4-58a341192724', 0 UNION ALL
SELECT 8, N'A103-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'86ee3b7f-3abd-4d8a-8fc7-58b501675279', 0 UNION ALL
SELECT 8, N'E407-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'63f95379-d32a-4236-bde8-58c0e70c17bc', 0 UNION ALL
SELECT 8, N'E109-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ebd241cc-f5e8-4c7b-a0ec-58ca8108d33a', 0 UNION ALL
SELECT 9, N'10J', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'9053368d-ca8d-40a1-8121-58d3ef513202', 0 UNION ALL
SELECT 8, N'D107-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'2a3c4466-2ece-490e-bc33-58d994e11ecb', 0 UNION ALL
SELECT 8, N'I401-C', N'Apartment/Bedroom-I401-C', N'nirshan', '20150723 08:06:45.067', N'241e29c5-5488-468f-a000-58dd022a4556', 0 UNION ALL
SELECT 7, N'019-1B', N'Apartment - 019-1B', N'nirshan', '20150723 08:05:19.033', N'3b54f37a-956c-41d0-90f3-58f3962f12b1', 0 UNION ALL
SELECT 8, N'J 202', N'Office', N'nirshan', '20150723 08:06:45.067', N'0f558608-7828-4d8f-a677-58f781c8dc9e', 0 UNION ALL
SELECT 8, N'L506', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'f0a08496-bb24-47c5-826e-59019b6a94c3', 0 UNION ALL
SELECT 8, N'M 304-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'4a4c83a4-ff69-4f8a-8bd3-5951bcbf3c37', 0 UNION ALL
SELECT 8, N'A307-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'9eb2303e-7f66-4d2f-af6f-59577aaee692', 0 UNION ALL
SELECT 8, N'A205-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e6addfe6-fd65-45d5-90cb-596bebd31798', 0 UNION ALL
SELECT 8, N'E101-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'fd29dba9-909f-40f0-bc4d-5989e0731b6b', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 12.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 10, N'D51-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'09bc8236-9721-4136-adcb-599bdd2e5050', 0 UNION ALL
SELECT 8, N'M 504', N'2 BR 1BA Apartment', N'nirshan', '20150723 08:06:45.067', N'9d48e775-9cc0-4d80-a9a1-599cab777a15', 0 UNION ALL
SELECT 8, N'G302-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f1e3293d-cf34-4e09-8f1e-599e0b53dbaf', 0 UNION ALL
SELECT 9, N'18A', N'Studio Apartment', N'nirshan', '20150723 08:07:50.047', N'3b989cd0-b073-4a6d-833e-59d25f5a1fa3', 0 UNION ALL
SELECT 8, N'G503', N'2 BR 1 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'0c320764-cc5f-4f59-874e-59d8cdab7a48', 0 UNION ALL
SELECT 9, N'17B', N'Studio Apartment', N'nirshan', '20150723 08:07:50.047', N'7db0aabe-3858-4309-b540-5a061a6c7ed8', 0 UNION ALL
SELECT 7, N'005-1A', N'Apartment - 005-1A', N'nirshan', '20150723 08:05:19.033', N'837a5483-95bf-408c-9a25-5a0aa84a09ad', 0 UNION ALL
SELECT 8, N'G102', N'2 BR 1 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'ae01362f-90dc-4c2e-bcb9-5a477e0e7af8', 0 UNION ALL
SELECT 8, N'F206-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'1820f639-6f31-48a4-aa65-5fcd8ceff569', 0 UNION ALL
SELECT 8, N'I107-A', N'Apartment/Bedroom-I107-A', N'nirshan', '20150723 08:06:45.067', N'ced89fec-6b69-4ad4-b705-6032981f03c6', 0 UNION ALL
SELECT 8, N'I504-C', N'Apartment/Bedroom-I504-C', N'nirshan', '20150723 08:06:45.067', N'3b77c474-2f41-4257-b929-603667121bee', 0 UNION ALL
SELECT 9, N'15D', N'Deluxe 2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'ab3a209f-d375-4338-aae8-6073b7962fbb', 0 UNION ALL
SELECT 8, N'A403-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'9807f802-2665-4071-a24a-60780dc7c422', 0 UNION ALL
SELECT 8, N'D308-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ad19b5d1-1724-4cd1-9ffd-6082a28612a7', 0 UNION ALL
SELECT 9, N'9M', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'b43bad5e-0fdb-46d1-ad7b-608c404a5566', 0 UNION ALL
SELECT 8, N'A404-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f5aa2774-d4f4-4291-b5db-61fe8e919276', 0 UNION ALL
SELECT 8, N'A207-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e693f842-4ebb-415f-980c-6210a87415d3', 0 UNION ALL
SELECT 9, N'7F', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'c46285fd-6427-4a01-a3ce-622be4f35026', 0 UNION ALL
SELECT 8, N'G508-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a626423d-af07-44b0-882a-6230f6085175', 0 UNION ALL
SELECT 8, N'D305', N'2BR Apartment', N'nirshan', '20150723 08:06:45.067', N'5d0d4481-2887-4379-8d4a-623ee171b139', 0 UNION ALL
SELECT 10, N'A9', N'2BR Apartment', N'nirshan', '20150723 08:08:25.727', N'60e79291-a600-45ae-96b8-626f94251146', 0 UNION ALL
SELECT 8, N'F203', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'99184b8d-c374-4395-b6d6-6298d6271abc', 0 UNION ALL
SELECT 8, N'J 204', N'Office', N'nirshan', '20150723 08:06:45.067', N'ee63ee7d-abbe-43da-bfe3-62a04e49605c', 0 UNION ALL
SELECT 8, N'F601-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'53008d0f-b181-4e47-9901-62afe1432712', 0 UNION ALL
SELECT 8, N'G403', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'f56de6a8-a7b4-4d45-ba09-62bb3bbcb7a9', 0 UNION ALL
SELECT 8, N'I202-A', N'Apartment/Bedroom-I202-A', N'nirshan', '20150723 08:06:45.067', N'b17b8e37-b3df-45d1-b5b7-62c8e36d53a0', 0 UNION ALL
SELECT 10, N'D48', N'2BR Apartment', N'nirshan', '20150723 08:08:25.727', N'0b49c42e-151c-49a3-bc84-62e07d5ea27d', 0 UNION ALL
SELECT 8, N'D209', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'f78e3b1a-31c9-44d8-9295-6303a5ac28ac', 0 UNION ALL
SELECT 8, N'E402-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'29265a38-20a9-441b-a590-630b1de92906', 0 UNION ALL
SELECT 10, N'B32', N'2BR Apartment', N'nirshan', '20150723 08:08:25.727', N'2f78ce4d-faf0-42a9-b6e0-63148ea6878c', 0 UNION ALL
SELECT 8, N'D307-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'677976c2-54da-41a2-9fa2-631b50b5db24', 0 UNION ALL
SELECT 8, N'M 309-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'2232c536-e52a-44b8-98c9-6343d939ef7b', 0 UNION ALL
SELECT 9, N'7G', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'd0e3d9a3-e75f-43fe-8780-63850febfc4f', 0 UNION ALL
SELECT 8, N'E105-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'dbdd0101-9ede-41e4-aa51-63a42d89f1f4', 0 UNION ALL
SELECT 8, N'F404-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'855ed93e-55d6-4097-868e-63b2fab2526f', 0 UNION ALL
SELECT 8, N'F202-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'de53cc29-6827-4201-bf29-63b338cb1249', 0 UNION ALL
SELECT 9, N'11N', N'1 BR Apartment', N'nirshan', '20150723 08:07:50.047', N'a3812bdb-119b-4c49-8372-63e16475f605', 0 UNION ALL
SELECT 8, N'A402-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b9d17678-2c38-4823-aa6b-640b4d3dcd51', 0 UNION ALL
SELECT 8, N'I509-B', N'Apartment/Bedroom-I509-B', N'nirshan', '20150723 08:06:45.067', N'a0f6401b-027d-4a04-9521-644658717b8c', 0 UNION ALL
SELECT 8, N'G502-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6b8874b4-b76d-438b-96cd-644c1bfb73d4', 0 UNION ALL
SELECT 10, N'B19', N'2BR 2BA Apartment', N'nirshan', '20150723 08:08:25.727', N'708271dd-5d67-4c65-8cc0-644e03289316', 0 UNION ALL
SELECT 10, N'C34', N'1BR Apartment', N'nirshan', '20150723 08:08:25.727', N'66aab23c-6776-4db7-8fb2-645522cecb27', 0 UNION ALL
SELECT 8, N'D410-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd90f1661-cb87-434e-b4a6-6483c931d403', 0 UNION ALL
SELECT 8, N'A307', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'366d14c8-7f7a-4ed6-b331-649c70974876', 0 UNION ALL
SELECT 8, N'I305-A', N'Apartment/Bedroom-I305-A', N'nirshan', '20150723 08:06:45.067', N'1a322519-8657-4542-b2d3-64ad6e6b4af0', 0 UNION ALL
SELECT 8, N'G103', N'2 BR 1 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'd4da0dfd-3bae-468b-ac3f-64c7d3d54d20', 0 UNION ALL
SELECT 8, N'L505', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'195c3ba0-d944-448b-8b45-64d26f7b57f8', 0 UNION ALL
SELECT 6, N'801-803', NULL, N'nirshan', '20150723 08:03:32.660', N'8f6400c5-24b7-4857-86f6-64f09b857e93', 0 UNION ALL
SELECT 8, N'F305-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'9dc4050f-9827-4499-af32-65128b702186', 0 UNION ALL
SELECT 8, N'E304-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'9ebdc101-2a9a-4c81-acb8-65232b6d696c', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 13.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 8, N'E307', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'f09071f2-25aa-424a-94ee-652f65d96538', 0 UNION ALL
SELECT 8, N'M102-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'5d56ff60-61a4-420e-9e75-654ddef2b470', 0 UNION ALL
SELECT 8, N'D304-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'bc163ee6-b5c3-4711-af5a-657a72a336bb', 0 UNION ALL
SELECT 8, N'B102', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'83544635-1f8c-4dc8-9065-65950dc19140', 0 UNION ALL
SELECT 8, N'F301', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'6d621b1b-e3a6-4cc5-93b9-65a153c3ee5f', 0 UNION ALL
SELECT 9, N'5L', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'b565a0ef-2c7c-42de-b4c5-65d43b398014', 0 UNION ALL
SELECT 8, N'E404-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'60c8a2b1-a37d-44c9-89d9-65d9db95e9ea', 0 UNION ALL
SELECT 8, N'D310', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'b2160816-276d-4c7f-a36e-65eea7e79e3f', 0 UNION ALL
SELECT 8, N'I404', N'Apartment/ 4BR 2BA-I404', N'nirshan', '20150723 08:06:45.067', N'cec9d35d-f951-46c8-8ad7-65fc399bd6ce', 0 UNION ALL
SELECT 8, N'A102-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'1c5ca82b-4c57-410f-8cef-6625d6a24c95', 0 UNION ALL
SELECT 6, N'3496-3498', NULL, N'nirshan', '20150723 08:03:32.660', N'f1546edc-a4b2-4830-b81b-663a1483c033', 0 UNION ALL
SELECT 8, N'E309-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'1f8e6b3b-8527-4720-a9c7-66607c9ad03b', 0 UNION ALL
SELECT 6, N'3323-3325', NULL, N'nirshan', '20150723 08:03:32.660', N'e6697855-1e3e-461b-9ca3-667ad5fc5fee', 0 UNION ALL
SELECT 6, N'3396-3398', NULL, N'nirshan', '20150723 08:03:32.660', N'dfed8a28-7977-4ff3-8fb4-6683c26a52d9', 0 UNION ALL
SELECT 9, N'1I', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'83cf2c97-bc9e-469c-8829-66886586aab7', 0 UNION ALL
SELECT 7, N'006-1B', N'Apartment - 006-1B', N'nirshan', '20150723 08:05:19.033', N'be862b77-c04f-4172-905f-6691825e785f', 0 UNION ALL
SELECT 10, N'A5-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'c9007b1d-f622-40f1-8c38-66bba9a91be9', 0 UNION ALL
SELECT 8, N'A101-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'1618fc90-420b-4a2c-8233-66c8fe2931a7', 0 UNION ALL
SELECT 8, N'G207-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'100a1d3f-856e-4db4-acb8-66d13f795cc2', 0 UNION ALL
SELECT 8, N'D109', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'f51be567-7f83-4ede-9e1b-671f6096cddd', 0 UNION ALL
SELECT 9, N'3J', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'a891ddd9-527d-4897-91a9-674d6b2d5bf6', 0 UNION ALL
SELECT 7, N'021-1A', N'Apartment - 021-1A', N'nirshan', '20150723 08:05:19.033', N'eb5e4086-fecc-4c33-b115-6b0723eea514', 0 UNION ALL
SELECT 8, N'E106-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'5ea51fb3-08e8-473e-9829-6b171c644d91', 0 UNION ALL
SELECT 8, N'G207-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'46922c99-ee5f-485a-b041-6b2b6807a316', 0 UNION ALL
SELECT 8, N'A405-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'1e1ebf68-1a6f-4c0c-aeb9-6ba40bfac3e4', 0 UNION ALL
SELECT 10, N'A10-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'7bc7fd88-67bc-4e33-897c-6bb7b75bca0d', 0 UNION ALL
SELECT 8, N'D408', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'69de8433-e41a-4309-b538-6c2355f37ade', 0 UNION ALL
SELECT 8, N'M 505-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f328e2ba-7acb-4b9c-a1a4-6c91e8333915', 0 UNION ALL
SELECT 8, N'G408-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'557daa85-6fe9-44a0-a314-6ca52e5b318b', 0 UNION ALL
SELECT 10, N'B19-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'7de5a5f4-d613-4afc-bd87-6d1d5a600061', 0 UNION ALL
SELECT 6, N'3428-3430', NULL, N'nirshan', '20150723 08:03:32.660', N'65a62de7-972e-4092-9cb2-6d1e3cc1d2d8', 0 UNION ALL
SELECT 8, N'M 206', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'd50fa56d-cf95-49f8-898b-6d924799febc', 0 UNION ALL
SELECT 8, N'G107-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd54ab5bf-fed4-4c7c-af0f-6db64f977791', 0 UNION ALL
SELECT 8, N'J 309A', N'Office', N'nirshan', '20150723 08:06:45.067', N'f0a2fce5-a644-410e-9b32-6e1502c778f3', 0 UNION ALL
SELECT 8, N'I401-A', N'Apartment/Bedroom-I401-A', N'nirshan', '20150723 08:06:45.067', N'f764bf79-8b63-4dcd-9866-6e17a9d26261', 0 UNION ALL
SELECT 8, N'G409-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'cf15c8de-ad62-4a9c-be64-6e236903be2e', 0 UNION ALL
SELECT 10, N'B29', N'2BR 2BA Apartment', N'nirshan', '20150723 08:08:25.727', N'c56a2e04-c8ca-4173-8239-6e60d0ab72f3', 0 UNION ALL
SELECT 10, N'C40', N'1BR Apartment', N'nirshan', '20150723 08:08:25.727', N'8f2495d8-fab9-4cf9-9036-6e71ef4ea33c', 0 UNION ALL
SELECT 8, N'I308-C', N'Apartment/Bedroom-I308-C', N'nirshan', '20150723 08:06:45.067', N'820f7e15-cde3-4088-8928-6e7ee7471416', 0 UNION ALL
SELECT 8, N'F504-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'1af13741-1716-4d7e-b2bc-6ec4da402895', 0 UNION ALL
SELECT 8, N'I308', N'Apartment/ 4BR 2BA-I308', N'nirshan', '20150723 08:06:45.067', N'320eb96b-77ea-4181-9dd0-6ed86ae00265', 0 UNION ALL
SELECT 8, N'F402-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'507eef11-30e6-49d0-9ba9-6eea112ca0ad', 0 UNION ALL
SELECT 8, N'G309-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a29b0cb7-7593-403d-8525-6eed088a074d', 0 UNION ALL
SELECT 8, N'F201-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'237cf88c-6874-46b8-a1ed-6f13fe7cf613', 0 UNION ALL
SELECT 10, N'B31-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'022b813a-9d31-4cef-9823-6f49d791d4b7', 0 UNION ALL
SELECT 8, N'E402-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'62b8f151-9710-4ed2-9f0d-6f59a2f5f4d0', 0 UNION ALL
SELECT 8, N'A101-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ae1c8e16-b9e0-4ecd-a908-6f5c5753e228', 0 UNION ALL
SELECT 10, N'B22', N'2BR 2BA Apartment', N'nirshan', '20150723 08:08:25.727', N'4f26c68c-84a1-436c-8160-6f61f84bbad1', 0 UNION ALL
SELECT 8, N'G204-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'2a3b4a04-ac22-46a5-b87f-6fb18b639af6', 0 UNION ALL
SELECT 10, N'D51', N'2BR 2BA Apartment', N'nirshan', '20150723 08:08:25.727', N'ebc163b9-4a1e-4a7b-ae5e-6fd34244e487', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 14.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 8, N'F602-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'cee7d4ca-cd12-4b62-982d-6fdb296fad2a', 0 UNION ALL
SELECT 6, N'3322-3324', NULL, N'nirshan', '20150723 08:03:32.660', N'7625e2ff-639c-48e2-96b1-703bce1907ab', 0 UNION ALL
SELECT 10, N'D56', N'2BR Apartment', N'nirshan', '20150723 08:08:25.727', N'c8fc1d36-6f83-4a12-96aa-703d0ab71176', 0 UNION ALL
SELECT 8, N'F302-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'c35dff7f-4fc9-4344-a2a1-708c37b62af2', 0 UNION ALL
SELECT 8, N'F509-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'74fe50bd-d7e3-43f8-b785-70b986f99c00', 0 UNION ALL
SELECT 8, N'M 202', N'Apartment/RD', N'nirshan', '20150723 08:06:45.067', N'ada3bf4e-321a-49b7-af90-70ca0948e277', 0 UNION ALL
SELECT 8, N'B406-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a26241f8-138e-4758-ab98-70d7eb90aa0d', 0 UNION ALL
SELECT 8, N'G204-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'92efd720-db9b-4a92-a0fe-70ea32857e16', 0 UNION ALL
SELECT 8, N'G103-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'8d747937-bd1d-449e-9407-7d3bf411182a', 0 UNION ALL
SELECT 8, N'I507', N'Apartment/ 4BR 2BA-I507', N'nirshan', '20150723 08:06:45.067', N'b49b0431-75a3-496d-b99a-7d4cdfbb10b8', 0 UNION ALL
SELECT 8, N'E404-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f7bf5597-eddd-4439-8621-7d6d95a92f8b', 0 UNION ALL
SELECT 6, N'826-828', NULL, N'nirshan', '20150723 08:03:32.660', N'9ff8502c-0a21-4f3f-ae9f-7dc135a41945', 0 UNION ALL
SELECT 9, N'9N', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'248f087b-b701-4f1d-9f55-7de66e871f4e', 0 UNION ALL
SELECT 8, N'I402-C', N'Apartment/Bedroom-I402-C', N'nirshan', '20150723 08:06:45.067', N'78f7b01b-3d68-46e7-b65b-7e0286cd7af3', 0 UNION ALL
SELECT 8, N'M 308', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'3cb0ea9f-829f-4c3a-b5d3-7e1b869184cf', 0 UNION ALL
SELECT 8, N'F401-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e682c054-419b-4f4c-b679-7e1b91fb149f', 0 UNION ALL
SELECT 8, N'B207-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a2cda3e0-73fd-4cc2-bb6e-7e1d82e11515', 0 UNION ALL
SELECT 8, N'B406', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'1e1af83e-8db8-4637-acb7-7e246c6cd601', 0 UNION ALL
SELECT 8, N'D406-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'58b133bf-7f8d-41ea-b110-7e2aed5e9526', 0 UNION ALL
SELECT 9, N'1E', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'b5ceba78-c071-49a2-ac7a-7e595da74fe6', 0 UNION ALL
SELECT 7, N'014-1A', N'Apartment - 014-1A', N'nirshan', '20150723 08:05:19.033', N'89cbb607-4aef-4e8a-8a3b-7e997b90c760', 0 UNION ALL
SELECT 8, N'D211', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'74126b8a-f473-4c58-bb3f-7e9bb3cca428', 0 UNION ALL
SELECT 7, N'016-2D', N'Apartment - 016-2D', N'nirshan', '20150723 08:05:19.033', N'8358e409-0f40-4238-b3c6-7e9deebe4f13', 0 UNION ALL
SELECT 8, N'F403-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'54a39b74-b9aa-4d1c-b4c5-7ead7aa1243b', 0 UNION ALL
SELECT 8, N'G101', N'RD Apartment', N'nirshan', '20150723 08:06:45.067', N'92d0c92f-0288-40a5-be68-7efc3b53e88a', 0 UNION ALL
SELECT 10, N'G73', N'1BR Apartment', N'nirshan', '20150723 08:08:25.727', N'9d5aef4b-03a0-482a-a699-7f07514bd234', 0 UNION ALL
SELECT 8, N'I502-B', N'Apartment/Bedroom-I502-B', N'nirshan', '20150723 08:06:45.067', N'21b93d63-cac6-443a-bb57-7f141abc6190', 0 UNION ALL
SELECT 8, N'F605-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'55d041e8-90bf-4d6b-a664-7f201bab8583', 0 UNION ALL
SELECT 8, N'I301-A', N'Apartment/Bedroom-I301-A', N'nirshan', '20150723 08:06:45.067', N'e6125cdc-26bb-4880-b706-7f6fb7f89e5a', 0 UNION ALL
SELECT 8, N'F506-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3e5ee337-0f61-4603-860e-7f8f2b48e652', 0 UNION ALL
SELECT 8, N'M 501-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'faca7a11-c517-4856-9e4d-803bf7c89a9c', 0 UNION ALL
SELECT 8, N'F306', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'd7eaf03d-8300-4584-a2a5-8052ad51c7e7', 0 UNION ALL
SELECT 8, N'B301', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'bd3b7c39-4fe0-4bec-8104-8082717c3528', 0 UNION ALL
SELECT 8, N'G204-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'cd04afb0-1bd5-4d73-80a1-808e06aee48a', 0 UNION ALL
SELECT 8, N'B205-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'bed2cc36-fe4c-49e5-8ecb-809610b02ce9', 0 UNION ALL
SELECT 8, N'I507-C', N'Apartment/Bedroom-I507-C', N'nirshan', '20150723 08:06:45.067', N'c7b7d70d-0197-4b2d-af0d-80ac4287a68d', 0 UNION ALL
SELECT 8, N'E402', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'50a16e9d-85da-488c-8197-80c0de8b8c62', 0 UNION ALL
SELECT 8, N'E304-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a47b0948-7671-4af1-9229-80cc7aab75ff', 0 UNION ALL
SELECT 8, N'I202-C', N'Apartment/Bedroom-I202-C', N'nirshan', '20150723 08:06:45.067', N'f3bd9f6c-2e6f-4157-ac67-80dc2a9b23e7', 0 UNION ALL
SELECT 9, N'10E', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'88ae0238-11c2-48c5-8ccf-80dc9fe1fa85', 0 UNION ALL
SELECT 9, N'11H', N'1 BR Apartment', N'nirshan', '20150723 08:07:50.047', N'91304fb5-524b-4dec-9e3a-80f37eb3c3cc', 0 UNION ALL
SELECT 9, N'6G', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'4170501c-cc0c-4a00-937d-810053ae234e', 0 UNION ALL
SELECT 9, N'10K', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'3fa7e562-f584-430e-9426-811090455cf2', 0 UNION ALL
SELECT 8, N'E204-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'0d91f13e-3a0c-4676-8563-8136d4f6641c', 0 UNION ALL
SELECT 8, N'B304', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'ea9dead8-4ce8-4cda-bdc5-8142a1b5f72a', 0 UNION ALL
SELECT 8, N'L102-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'90480eb7-6879-407d-b85a-8144221be890', 0 UNION ALL
SELECT 8, N'B101', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'5bafb6e7-9fb9-4d5f-8baf-816f390dd324', 0 UNION ALL
SELECT 8, N'B407-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'622d5e3f-7f8b-4201-86c8-817701a06121', 0 UNION ALL
SELECT 9, N'1M', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'31d7d5b3-47a9-4d52-ad93-819bfb2cdc9d', 0 UNION ALL
SELECT 8, N'A206', N'2 BR Apartment', N'nirshan', '20150723 08:06:45.067', N'b80a1b5e-de12-4873-a6bd-81b1a7492f01', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 15.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 8, N'D307-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'35eac2b5-4d31-4c29-b42c-81c5a62fdf37', 0 UNION ALL
SELECT 8, N'L108-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'43f644ca-3d10-4818-8023-81c86bf07f51', 0 UNION ALL
SELECT 8, N'F207-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e4fd18f9-c480-4b28-9b24-81d17c1476e6', 0 UNION ALL
SELECT 8, N'M 207-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'01d3ec24-7524-48d6-9c89-81e984106780', 0 UNION ALL
SELECT 9, N'11I', N'1 BR Apartment', N'nirshan', '20150723 08:07:50.047', N'd42e3b1f-27bc-42ba-b4c7-8207258ee015', 0 UNION ALL
SELECT 8, N'A303-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'df4f4f66-3ede-44b7-b389-82169a74f1bf', 0 UNION ALL
SELECT 9, N'10M', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'30b27131-2a0d-4b12-b2f0-822249314d11', 0 UNION ALL
SELECT 8, N'F505-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b2a95f5a-c0fd-4a82-a9ca-8246b5f10802', 0 UNION ALL
SELECT 9, N'10F', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'64193d4e-81c9-43c6-926c-826a3ffa3907', 0 UNION ALL
SELECT 6, N'3321-3323', NULL, N'nirshan', '20150723 08:03:32.660', N'046f2ec7-92f9-4fa9-8060-827af16e1f9c', 0 UNION ALL
SELECT 8, N'B102-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'09ed0d81-89be-4ca3-a74e-82c0fd69d4c6', 0 UNION ALL
SELECT 8, N'M 212-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'8de5ecc4-9db7-4403-bcd4-82d54a4b47e5', 0 UNION ALL
SELECT 8, N'I501-D', N'Apartment/Bedroom-I501-D', N'nirshan', '20150723 08:06:45.067', N'8c34ee5d-c601-480e-989f-82fb10d80e90', 0 UNION ALL
SELECT 8, N'M 607-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'7cd253ca-2723-428b-9970-835fd70f61ac', 0 UNION ALL
SELECT 7, N'016-1B', N'Apartment - 016-1B', N'nirshan', '20150723 08:05:19.033', N'c854b3a1-72ac-49f9-beea-837175dde9ca', 0 UNION ALL
SELECT 8, N'M 402-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'94d1bb04-e090-4a15-a833-8373f977d770', 0 UNION ALL
SELECT 8, N'L309', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'83a9f189-75d7-4b84-a082-8390efcaca73', 0 UNION ALL
SELECT 7, N'022-2D', N'Apartment - 022-2D', N'nirshan', '20150723 08:05:19.033', N'564caba5-6815-475e-88c1-83ae5412b02f', 0 UNION ALL
SELECT 8, N'J 108', N'Restroom', N'nirshan', '20150723 08:06:45.067', N'bcf12028-cc1f-4249-a305-83bc288c6ea7', 0 UNION ALL
SELECT 8, N'M 607', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'769413fa-b7e2-4a09-a3e3-83dda28679a3', 0 UNION ALL
SELECT 10, N'B24', N'2BR Apartment', N'nirshan', '20150723 08:08:25.727', N'3b32566a-d781-4168-ac5d-83e04e162755', 0 UNION ALL
SELECT 9, N'4N', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'797f25bf-ca95-450d-b10a-840f3c2231c1', 0 UNION ALL
SELECT 8, N'D210-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'eb1f20e9-9501-444b-aa9f-8419fef13613', 0 UNION ALL
SELECT 8, N'E409-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e01c8bc1-b38b-4708-a3df-842857f4fa23', 0 UNION ALL
SELECT 8, N'J 116', N'Office', N'nirshan', '20150723 08:06:45.067', N'd4eae6f6-9507-44c4-8dec-842d4e74a8f5', 0 UNION ALL
SELECT 7, N'025-2D', N'Apartment - 025-2D', N'nirshan', '20150723 08:05:19.033', N'f9753358-f7c3-408c-897b-846ad1a4f531', 0 UNION ALL
SELECT 8, N'A301-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'1260d798-e4d6-4f53-83ce-84749479b4ef', 0 UNION ALL
SELECT 9, N'18D', N'Studio Apartment', N'nirshan', '20150723 08:07:50.047', N'7c981508-5bf0-472b-bffc-8477457ab52e', 0 UNION ALL
SELECT 8, N'M 309-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd0480e79-a133-4581-b3b8-849b7274e1f1', 0 UNION ALL
SELECT 9, N'2K', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'0577502e-0ee3-45ac-bfd5-849ebdb997aa', 0 UNION ALL
SELECT 8, N'F403-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'560c8a83-d8a7-4c17-8717-84bcc7a12531', 0 UNION ALL
SELECT 8, N'I403', N'Apartment/ 4BR 2BA-I403', N'nirshan', '20150723 08:06:45.067', N'5fe3227d-5d41-4f9e-b332-84cd8e4378a9', 0 UNION ALL
SELECT 8, N'I404-A', N'Apartment/Bedroom-I404-A', N'nirshan', '20150723 08:06:45.067', N'70c769b6-cdd3-48a5-903b-84e2e9e85858', 0 UNION ALL
SELECT 8, N'I208', N'Apartment/4BR 2BA- I208', N'nirshan', '20150723 08:06:45.067', N'08f3cbf6-aa13-46c4-bf19-84f7390b9379', 0 UNION ALL
SELECT 9, N'10B', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'e139e4fd-a259-407f-b95e-851c49c81065', 0 UNION ALL
SELECT 10, N'D56-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'784072b0-56cf-40c0-a379-85290ba11ef2', 0 UNION ALL
SELECT 8, N'F304-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'fd414048-a5f7-4c90-8b36-854f95bec6e3', 0 UNION ALL
SELECT 10, N'D50', N'2BR Apartment', N'nirshan', '20150723 08:08:25.727', N'53134f80-8585-4a4f-8d9f-85622cf9e374', 0 UNION ALL
SELECT 8, N'F608-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b46bd3b5-7d16-4cc1-9a2a-85b36c4165dc', 0 UNION ALL
SELECT 8, N'B204', N'1BR Apartment', N'nirshan', '20150723 08:06:45.067', N'6f95481e-1461-4154-b6a9-85b6acda7fd8', 0 UNION ALL
SELECT 8, N'G407-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'8289f08d-9594-4388-84f4-85b9ced53910', 0 UNION ALL
SELECT 6, N'3484-3486', NULL, N'nirshan', '20150723 08:03:32.660', N'ac453216-1f54-4bc0-b4cc-85e6891cda03', 0 UNION ALL
SELECT 8, N'G302', N'2 BR 1 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'd141b361-e991-4c30-8418-85eb600e16e5', 0 UNION ALL
SELECT 8, N'F603-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'507dd9d4-25a5-4cf3-8001-862bff7e36ca', 0 UNION ALL
SELECT 8, N'D105-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'78b25320-3846-4c95-9514-899283f323d5', 0 UNION ALL
SELECT 10, N'D49', N'2BR Apartment', N'nirshan', '20150723 08:08:25.727', N'4e046aa9-5f13-4f27-a759-8994a0678848', 0 UNION ALL
SELECT 8, N'L104', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'97afb58a-24b5-486e-9834-89b7ce8d2501', 0 UNION ALL
SELECT 8, N'D201-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'37ae1f4f-fc86-43e1-b0d6-89cdfca2bf48', 0 UNION ALL
SELECT 9, N'8Q', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'd34995e9-b946-4ca1-aee1-89e4ccf91f69', 0 UNION ALL
SELECT 9, N'5K', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'38cb767c-f924-4d3c-841c-89fd8bd408f7', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 16.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 8, N'B107-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f7d96df3-aaf4-4baf-9235-8a06efc6e1f0', 0 UNION ALL
SELECT 10, N'B29-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'c5218a81-fd98-4c90-8815-8a1d02e2e7a2', 0 UNION ALL
SELECT 10, N'D48-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'53cf861b-dc5c-4c38-91c1-8a3069a3cf38', 0 UNION ALL
SELECT 8, N'B207', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'cc1e22bd-48b4-4be0-b447-8a505b7ccd58', 0 UNION ALL
SELECT 10, N'D49-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'169317e2-697b-4f8b-966e-8a536b23f9c7', 0 UNION ALL
SELECT 8, N'G507-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'58dfc830-f7d3-4dcc-a5d0-8a731976c47d', 0 UNION ALL
SELECT 8, N'D404', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'88acb7dd-40c0-4241-b96f-8a7d2915cb27', 0 UNION ALL
SELECT 8, N'G203-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3755013e-8001-4421-93af-8a7ef9d3d9a4', 0 UNION ALL
SELECT 8, N'E404-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'01b57779-286e-4d1c-baa2-8aa30e53cb4a', 0 UNION ALL
SELECT 8, N'D204-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'5b80c464-99e3-4582-9426-8abf067f1da0', 0 UNION ALL
SELECT 8, N'I305', N'Apartment/ 4BR 2BA-I305', N'nirshan', '20150723 08:06:45.067', N'd10aca2c-7701-4ebf-841e-8acbc525bceb', 0 UNION ALL
SELECT 8, N'F401-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'7c81a925-0b35-4e05-b6ff-8b2661f7e22b', 0 UNION ALL
SELECT 8, N'M 304-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'71b7ae08-c87e-43b5-8f9e-8b2c608447d6', 0 UNION ALL
SELECT 8, N'E301-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'682080db-ad11-481e-9a4a-8b76fba7b8a8', 0 UNION ALL
SELECT 8, N'D308-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e3b7fec4-9468-4a9f-9189-8b977d848e8f', 0 UNION ALL
SELECT 8, N'I403-C', N'Apartment/Bedroom-I403-C', N'nirshan', '20150723 08:06:45.067', N'5f11cb64-b4b8-4fe6-9bc8-8ba84126f45f', 0 UNION ALL
SELECT 8, N'A201-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'4b2ccc70-0f1a-4e18-af1a-8bab69f73a38', 0 UNION ALL
SELECT 8, N'G304-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'42e365ec-0152-4094-9f20-8c049f1504e7', 0 UNION ALL
SELECT 8, N'I501-C', N'Apartment/Bedroom-I501-C', N'nirshan', '20150723 08:06:45.067', N'5b8c0ead-aeb5-4514-8635-8c09e9e4e1e3', 0 UNION ALL
SELECT 8, N'B106-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b3b2fbb6-bca5-4174-b4f5-8c24976be8b3', 0 UNION ALL
SELECT 9, N'8F', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'98f99e88-57e5-417e-bb60-8c35cb1e96f0', 0 UNION ALL
SELECT 8, N'A103-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ce94078f-f4de-4118-b538-8c3d01262dc9', 0 UNION ALL
SELECT 8, N'M 410-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'1eaa17a3-fbfb-4bf1-9555-8c4572d0c2f9', 0 UNION ALL
SELECT 8, N'E102', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'bed02e36-fa49-4750-94f2-8c9bee1ea337', 0 UNION ALL
SELECT 8, N'D208-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e4a8da89-65e7-41ff-8310-8c9cad7b8482', 0 UNION ALL
SELECT 9, N'2A', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'4dc591d6-1788-46e1-8d9c-8cabffe813eb', 0 UNION ALL
SELECT 8, N'F301-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f51e0c1c-4a73-4180-8fc4-8cca3778cb43', 0 UNION ALL
SELECT 8, N'B405', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'd2a4a779-267d-4cbd-84d8-8cedb7b96ecf', 0 UNION ALL
SELECT 8, N'G104-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f8abd15f-e418-43d1-922b-8cef40d0271b', 0 UNION ALL
SELECT 8, N'D209-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'7a271fcf-5d7a-413b-9759-8d3dc7141a3b', 0 UNION ALL
SELECT 8, N'F508', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'21bf40f0-d3f0-472f-8ce8-8d49872796ad', 0 UNION ALL
SELECT 8, N'A104-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'081c073b-822c-49f4-b8d2-8d61a3ca884a', 0 UNION ALL
SELECT 8, N'I201-C', N'Apartment/Bedroom-I201-C', N'nirshan', '20150723 08:06:45.067', N'29e0b5f8-4d9e-44c3-883b-8d67ab08631c', 0 UNION ALL
SELECT 8, N'M 510-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'67da74b6-8a8d-47a1-8a15-8dbdffa172a2', 0 UNION ALL
SELECT 8, N'L106', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'3177ac84-270b-48af-a27b-8dd2bdc09c91', 0 UNION ALL
SELECT 8, N'M 310-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'52d4d027-c9c7-4942-927c-8df00b9a319c', 0 UNION ALL
SELECT 8, N'B402', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'fd20f039-247b-4de8-b66d-8dfc6ae6e6f0', 0 UNION ALL
SELECT 9, N'2M', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'2f90fa97-60d8-4ccb-903d-8e3c410383e3', 0 UNION ALL
SELECT 8, N'F203-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'45fc4ce8-6ddd-4458-83d7-8e5838ba8b89', 0 UNION ALL
SELECT 8, N'D407-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'9298ce01-058f-4a3d-a128-8e8880d75f3f', 0 UNION ALL
SELECT 10, N'C38', N'1BR Apartment', N'nirshan', '20150723 08:08:25.727', N'50c6c38a-39a1-49ec-83d8-8ea706c2f078', 0 UNION ALL
SELECT 8, N'F208-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a44e078d-9e60-47e0-801d-8f0c2c0aae40', 0 UNION ALL
SELECT 8, N'E310-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'91bb57e1-938c-493b-b721-8f6a30167b08', 0 UNION ALL
SELECT 8, N'I301-C', N'Apartment/Bedroom-I301-C', N'nirshan', '20150723 08:06:45.067', N'27f9a58b-836a-4088-89d6-8fa430e6659e', 0 UNION ALL
SELECT 9, N'6P', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'3a4f4e12-caa4-4c5a-9f3c-8fa75e277f30', 0 UNION ALL
SELECT 10, N'C38-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'a160205f-b63a-4946-85e8-90a95160624b', 0 UNION ALL
SELECT 8, N'B104-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'27517068-5c84-462f-8e3a-90b236acbc7a', 0 UNION ALL
SELECT 8, N'M104-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'80ba7476-992b-47f9-9f15-90bb90f858da', 0 UNION ALL
SELECT 8, N'D405', N'2BR Apartment', N'nirshan', '20150723 08:06:45.067', N'b5a23f53-c3e1-44a0-979d-90caa7692889', 0 UNION ALL
SELECT 8, N'G403-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b323554b-5164-4801-9a5d-910790d0b78e', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 17.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 8, N'G201', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'64b7142b-0bd9-4d24-af77-912d98202551', 0 UNION ALL
SELECT 8, N'M103-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'fdc19086-ed40-42c7-a2f3-9179e65412c7', 0 UNION ALL
SELECT 10, N'F-70', N'1BR Apartment', N'nirshan', '20150723 08:08:25.727', N'd7e5969b-cdb3-47e8-819e-9192aa04f5ae', 0 UNION ALL
SELECT 8, N'M 503-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'7256768f-0afc-414a-9b15-919674d25852', 0 UNION ALL
SELECT 8, N'D210', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'f10cc7de-74d5-48e7-8af6-91badd399520', 0 UNION ALL
SELECT 8, N'I208-B', N'Apartment/Bedroom-I208-B', N'nirshan', '20150723 08:06:45.067', N'f99363ca-cb90-4088-9d4d-91bba871f64f', 0 UNION ALL
SELECT 8, N'I105', N'Apartment/ 4BR 2BA-I105', N'nirshan', '20150723 08:06:45.067', N'9a94f4a8-0751-4942-9a90-91c66c85242e', 0 UNION ALL
SELECT 10, N'D45-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'cb6c05a8-4639-4e1a-afa5-91dbb494985c', 0 UNION ALL
SELECT 8, N'I309', N'Apartment/ 2BR 1BA-I309', N'nirshan', '20150723 08:06:45.067', N'74d78a9b-eb52-4e11-b193-91fcb0d2e400', 0 UNION ALL
SELECT 8, N'E110-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a37904da-a479-4286-ace5-9204983d9a30', 0 UNION ALL
SELECT 8, N'D407-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'9d9dc3ab-86ed-4c3d-a71f-925c13e7d338', 0 UNION ALL
SELECT 8, N'A109-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3c29d002-afab-439c-9e54-92677dea9b83', 0 UNION ALL
SELECT 8, N'A406-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'082b854f-aa55-4aff-949d-9267832742f3', 0 UNION ALL
SELECT 8, N'M 503-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'953d5c0c-908e-4ae6-9b45-9285472e09a4', 0 UNION ALL
SELECT 9, N'5B', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'4c9667f5-4709-4737-bb72-9286868c5fcd', 0 UNION ALL
SELECT 8, N'E310', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'd2fcd41b-c8c4-410b-ad1f-92a340f803c5', 0 UNION ALL
SELECT 8, N'J 107', N'Mail Room', N'nirshan', '20150723 08:06:45.067', N'70d7f0f6-19df-4ef2-8fa9-92b10897aaf0', 0 UNION ALL
SELECT 9, N'4M', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'365ef1f3-dbe9-439f-add0-92e189941195', 0 UNION ALL
SELECT 8, N'E408-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3413e110-36d6-4f49-bc40-93041d656983', 0 UNION ALL
SELECT 8, N'I208-C', N'Apartment/Bedroom-I208-C', N'nirshan', '20150723 08:06:45.067', N'59f69aa8-e5bb-4f5e-b84e-93046dc6d020', 0 UNION ALL
SELECT 8, N'M 405-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'fd7da17a-71b1-4228-886f-9352359c9f85', 0 UNION ALL
SELECT 8, N'F305-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'84cb18f2-c441-4c80-bf91-9357f4c21243', 0 UNION ALL
SELECT 9, N'1C', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'f7324bc0-1c52-4b1f-bf77-93c13d5fbd49', 0 UNION ALL
SELECT 10, N'F-57-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'55fc4cba-4874-4ede-8883-94066c3546f0', 0 UNION ALL
SELECT 8, N'D102', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'dead8df6-1c34-42c4-a1dc-94178451e01c', 0 UNION ALL
SELECT 8, N'E106-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f4bc69a0-b965-49ec-9309-941c76592107', 0 UNION ALL
SELECT 8, N'G403-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e6250804-76c9-4d97-b6f5-94213fda2298', 0 UNION ALL
SELECT 10, N'A6-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'e94e621f-2df4-449b-818f-942185147d43', 0 UNION ALL
SELECT 8, N'I401-B', N'Apartment/Bedroom-I401-B', N'nirshan', '20150723 08:06:45.067', N'd1a03e35-1912-4dcb-9897-9428129b04cd', 0 UNION ALL
SELECT 8, N'E404-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a1c36303-12bf-4563-a81e-9449bb18c26d', 0 UNION ALL
SELECT 8, N'I203-A', N'Apartment/Bedroom-I203-A', N'nirshan', '20150723 08:06:45.067', N'42b8ddc8-92fe-41aa-87a4-946369f887f3', 0 UNION ALL
SELECT 6, N'3380-3382', NULL, N'nirshan', '20150723 08:03:32.660', N'3681b744-f63f-44c4-96a2-94b93293e8aa', 0 UNION ALL
SELECT 8, N'D103-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'16a06ccc-2b54-4c42-88e3-94ddef99aebc', 0 UNION ALL
SELECT 8, N'B106-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'431c9417-d242-4a48-88cb-94f72812d10a', 0 UNION ALL
SELECT 8, N'D402-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'5a392821-891f-4025-a651-954b18f8f001', 0 UNION ALL
SELECT 8, N'F202', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'e941e0f9-c8df-444f-aee5-95794f92b7dc', 0 UNION ALL
SELECT 8, N'F305-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'02adb4bd-9a5e-41a0-a540-95852682e93f', 0 UNION ALL
SELECT 8, N'F410-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6b09f0ae-b544-4dac-98e8-958ad536c194', 0 UNION ALL
SELECT 8, N'F502-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'bb8c887e-c13c-4c33-b963-95c0caa20252', 0 UNION ALL
SELECT 8, N'G409-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'1a7e599e-255f-4031-b0cc-95e396ce1cd7', 0 UNION ALL
SELECT 7, N'017-1A', N'Apartment - 017-1A', N'nirshan', '20150723 08:05:19.033', N'f8817466-3bcc-4436-bf5e-95eafa2fd11e', 0 UNION ALL
SELECT 8, N'B202-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'88fb6cd1-e7e3-4d13-8957-96155ad6662a', 0 UNION ALL
SELECT 8, N'B201-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'cff3625e-1b5f-4cee-b00e-961b8bbfede2', 0 UNION ALL
SELECT 7, N'025-1B', N'Apartment - 025-1B', N'nirshan', '20150723 08:05:19.033', N'af62c935-f6d9-439d-b97a-967b15cf938f', 0 UNION ALL
SELECT 8, N'F209-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd57c9c22-04cd-4999-a729-9680ebfea2af', 0 UNION ALL
SELECT 8, N'B203', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'e7915158-0a9f-4b10-b2e1-968393cbdd4d', 0 UNION ALL
SELECT 8, N'M 201-C', N'Apartment/Bedroom', N'nirshan', '20150723 08:06:45.067', N'f3654b5c-5f86-478d-812c-96952c51656d', 0 UNION ALL
SELECT 9, N'4J', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'a3b9b839-b32c-44e5-9617-96b6726f851c', 0 UNION ALL
SELECT 8, N'M 202-A', N'Aprtment/Bedroom', N'nirshan', '20150723 08:06:45.067', N'2d8e0816-5951-46a4-ba26-96ddec1e96e4', 0 UNION ALL
SELECT 8, N'D308-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'4d379c6f-00b3-498d-bdf9-96ff041a1f92', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 18.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 8, N'B405-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a1b75dcb-cf8a-4d2c-9eef-97491b87a0e4', 0 UNION ALL
SELECT 8, N'D403-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6d35e555-15cf-4e54-a586-97527e7d8116', 0 UNION ALL
SELECT 8, N'D107', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'03dd51d5-3443-4f52-84e4-97a1eb931955', 0 UNION ALL
SELECT 8, N'F406-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'8057066a-530e-4b94-83e0-97b60d867dce', 0 UNION ALL
SELECT 8, N'I207', N'Apartment/ 4BR 2BA- I207', N'nirshan', '20150723 08:06:45.067', N'7ae6a338-e0bc-4212-bf49-97b6dad64cad', 0 UNION ALL
SELECT 8, N'L102-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'26c02b75-d04e-4181-a6ef-97bcc4e2865c', 0 UNION ALL
SELECT 8, N'I507-B', N'Apartment/Bedroom-I507-B', N'nirshan', '20150723 08:06:45.067', N'555c4983-d2f6-4a2f-a71f-97ce50498385', 0 UNION ALL
SELECT 8, N'E211', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'18323945-69ff-463a-8d38-97fc89a49a5b', 0 UNION ALL
SELECT 9, N'8J', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'b6a0b8a3-91a6-4dd6-be5d-981d1535e5bc', 0 UNION ALL
SELECT 10, N'A8', N'2BR Apartment', N'nirshan', '20150723 08:08:25.727', N'f7bc8f3e-6c0a-4501-bc13-986399017fd1', 0 UNION ALL
SELECT 8, N'A402-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'5743154b-266c-496a-a06c-986f1017f335', 0 UNION ALL
SELECT 9, N'11G', N'1 BR Apartment', N'nirshan', '20150723 08:07:50.047', N'8cb584f0-31d9-47e9-a8a9-98760ede6f4c', 0 UNION ALL
SELECT 10, N'B27', N'2BR 2BA Apartment', N'nirshan', '20150723 08:08:25.727', N'f7ad5234-8077-4f0d-9672-98a5f0ef7857', 0 UNION ALL
SELECT 10, N'E-57', N'1BR Apartment', N'nirshan', '20150723 08:08:25.727', N'c60ee342-3378-4904-8fdc-98da618b104b', 0 UNION ALL
SELECT 8, N'I501-B', N'Apartment/Bedroom-I501-B', N'nirshan', '20150723 08:06:45.067', N'11b1084a-42e6-4406-8504-98ff377e56ae', 0 UNION ALL
SELECT 8, N'M 206-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'c8c3d408-9066-4b69-ad3e-9931e8f1a8ef', 0 UNION ALL
SELECT 8, N'G103-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'5da04666-0ea7-4c48-832a-993ce1fe1baa', 0 UNION ALL
SELECT 7, N'023-2D', N'Apartment - 023-2D', N'nirshan', '20150723 08:05:19.033', N'9f07f2f2-0925-48e4-9a49-99b6547a609c', 0 UNION ALL
SELECT 8, N'J 119', N'Breakroom', N'nirshan', '20150723 08:06:45.067', N'0a7c8174-30b1-4d5d-8427-99c3036a3d7e', 0 UNION ALL
SELECT 8, N'G111-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3031a68f-32ee-41a0-a8cd-99dd8dd8f480', 0 UNION ALL
SELECT 8, N'F409-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'8db21244-f669-40ef-93d1-9a248a3f73d8', 0 UNION ALL
SELECT 9, N'14C', N'Deluxe 2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'07813aae-de10-411a-8396-9a34dd3338b1', 0 UNION ALL
SELECT 9, N'7N', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'd2eff342-1504-4b94-be89-9a8ee8168deb', 0 UNION ALL
SELECT 6, N'3379-3381', NULL, N'nirshan', '20150723 08:03:32.660', N'851cb684-ca55-4b3b-9a9c-9a9d4a5fb7e8', 0 UNION ALL
SELECT 8, N'B201-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'faa695b7-dcc2-41d9-9875-9ae730ce243d', 0 UNION ALL
SELECT 8, N'B305-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'23436844-c71c-41a9-bd06-9fd031643b45', 0 UNION ALL
SELECT 8, N'D103-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'52d9f9de-d685-4abe-8ef2-9fdecbbda5d4', 0 UNION ALL
SELECT 9, N'10H', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'a6e6f00a-041b-4e05-a472-9fdfd5045be4', 0 UNION ALL
SELECT 8, N'G205-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd25e9419-bab1-476d-a824-9fe9498743d6', 0 UNION ALL
SELECT 8, N'B204-1', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'80a30501-a080-4182-bd5f-9ff91880b036', 0 UNION ALL
SELECT 9, N'12L', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'cc5c950b-379b-4f02-9fa1-a011dbc89869', 0 UNION ALL
SELECT 8, N'M 506-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'845bfa87-06e1-48ec-8e62-a07aadc715fb', 0 UNION ALL
SELECT 9, N'12R', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'2bf00ab1-7933-4f0e-bd05-a0a9290d8524', 0 UNION ALL
SELECT 8, N'I101-C', N'Apartment/Bedroom-I101-C', N'nirshan', '20150723 08:06:45.067', N'b62b3259-6817-4a9a-8cda-a0bd7de28fc0', 0 UNION ALL
SELECT 9, N'18E', N'Studio Apartment', N'nirshan', '20150723 08:07:50.047', N'deb75a73-fc0f-4515-9c39-a0e8c319ebe7', 0 UNION ALL
SELECT 8, N'D206', N'2BR Apartment', N'nirshan', '20150723 08:06:45.067', N'83158ffc-ac83-4c91-be6f-a0ee087911a5', 0 UNION ALL
SELECT 9, N'11A', N'1 BR Apartment', N'nirshan', '20150723 08:07:50.047', N'5fcd7183-740a-48c4-8ebb-a17b7f5f2e52', 0 UNION ALL
SELECT 6, N'3328-3330', NULL, N'nirshan', '20150723 08:03:32.660', N'374084d0-2321-4935-9fb1-a189174a44e1', 0 UNION ALL
SELECT 8, N'B303-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ffc29b57-3c7d-437f-bfce-a1ac8893011b', 0 UNION ALL
SELECT 8, N'B101-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'0dba12f9-93fa-4cf6-9fab-a1bd214188ca', 0 UNION ALL
SELECT 9, N'5O', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'558e414f-e7c2-40d0-a61b-a20d7cb7b9d0', 0 UNION ALL
SELECT 8, N'I302-D', N'Apartment/Bedroom-I302-D', N'nirshan', '20150723 08:06:45.067', N'26567d53-7dac-4b96-a5f3-a220e8794b6d', 0 UNION ALL
SELECT 8, N'B305-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'9aea6d35-7fdb-4197-a49b-a2355ab6d394', 0 UNION ALL
SELECT 10, N'F-68-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'06d65319-1d70-40f9-bbe9-a235601dfaac', 0 UNION ALL
SELECT 8, N'G204', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'83378520-8706-48f4-b96c-a26c629fa12c', 0 UNION ALL
SELECT 9, N'12A', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'591379eb-302b-4c54-85ec-a280acb3d677', 0 UNION ALL
SELECT 8, N'G109-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'9ebd0275-1f03-4a68-8917-a284a581e3bb', 0 UNION ALL
SELECT 8, N'M 201-D', N'Apartment/Bedroom', N'nirshan', '20150723 08:06:45.067', N'c1c05df1-18cb-407f-9b2a-a28a750e206b', 0 UNION ALL
SELECT 8, N'F501', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'a736747f-da6a-4ee2-bb71-a297aef16f8b', 0 UNION ALL
SELECT 8, N'I107-D', N'Apartment/Bedroom-I107-D', N'nirshan', '20150723 08:06:45.067', N'337cf828-27df-4754-a130-a298596872bd', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 19.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 8, N'F307-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'c796a9da-f064-4b59-a6dd-a2b7c53b8f43', 0 UNION ALL
SELECT 8, N'B203-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'9b3d682e-29e5-45c6-a0f2-a2d9b3562172', 0 UNION ALL
SELECT 10, N'A10-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'e6e81f4e-b637-4189-b956-a32e7a79cf15', 0 UNION ALL
SELECT 8, N'G209-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'87869422-3d2f-41b9-b34c-a3365d524d80', 0 UNION ALL
SELECT 8, N'F209-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'251128a2-4ece-427c-b5b7-a34098fd9cc9', 0 UNION ALL
SELECT 8, N'E105-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'43ab1751-a935-4a50-8fd9-a364401a50a4', 0 UNION ALL
SELECT 10, N'D41-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'6327b07a-57cd-4428-90a3-a3a4750f2441', 0 UNION ALL
SELECT 8, N'M 405-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a03bbe1f-11fb-4fa9-b285-a3b0b98d7bac', 0 UNION ALL
SELECT 8, N'M 501-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'02bdfc31-570e-4830-8b98-a3ca868dc436', 0 UNION ALL
SELECT 8, N'E208', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'e6919e88-0c6d-4fcf-b94c-a3ff18ab0ddc', 0 UNION ALL
SELECT 7, N'007-1A', N'Apartment - 007-1A', N'nirshan', '20150723 08:05:19.033', N'c1df86c7-bf93-468e-bfb1-a40be0409f4f', 0 UNION ALL
SELECT 10, N'F-71', N'1BR Apartment', N'nirshan', '20150723 08:08:25.727', N'b6e4dbdc-8585-4f06-a648-a438aca0f018', 0 UNION ALL
SELECT 10, N'B19-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'd4dd05a2-1595-4e83-a918-a4638a5a2378', 0 UNION ALL
SELECT 10, N'B23-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'00f84b84-7f2e-4d2c-8be2-a4880e38b604', 0 UNION ALL
SELECT 8, N'I301-B', N'Apartment/Bedroom-I301-B', N'nirshan', '20150723 08:06:45.067', N'2fb590ae-bc9f-435d-9f6b-a48fdc1a46d8', 0 UNION ALL
SELECT 8, N'B402', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'bbad9ae1-bc6b-4eda-bd48-a4c22a1083ef', 0 UNION ALL
SELECT 6, N'3354-3356', NULL, N'nirshan', '20150723 08:03:32.660', N'e83f8b43-3997-47f4-8cdc-a4e8adddfd9b', 0 UNION ALL
SELECT 8, N'D109-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'11386605-1302-4ae3-a6ef-a4f00fe09dc7', 0 UNION ALL
SELECT 8, N'F406', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'12ef698f-e16e-43bd-9309-a53f7f55b00c', 0 UNION ALL
SELECT 8, N'E104-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a08e7204-2173-4562-843a-a55f4be9fe9c', 0 UNION ALL
SELECT 9, N'1S', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'c18567fb-55db-4417-aee1-a55fa3ea9fc2', 0 UNION ALL
SELECT 8, N'M 406-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'2d2e077b-a836-4d31-b17c-a59486bdc7f9', 0 UNION ALL
SELECT 7, N'014-1B', N'Apartment - 014-1B', N'nirshan', '20150723 08:05:19.033', N'2856bd24-d62b-48a4-9c04-a5aa438b0e46', 0 UNION ALL
SELECT 8, N'J 309', N'Lounge', N'nirshan', '20150723 08:06:45.067', N'b178c68f-48e1-4c42-ab29-a5c9284cc948', 0 UNION ALL
SELECT 8, N'I203-D', N'Apartment/Bedroom-I203-D', N'nirshan', '20150723 08:06:45.067', N'c7c05193-9111-410f-bad3-a5eb08815fa1', 0 UNION ALL
SELECT 10, N'A7-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'5cac4f46-71a2-4def-8711-a6383d52c0dc', 0 UNION ALL
SELECT 9, N'10C', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'86c294c3-3b78-49db-bdd7-a63bdced9068', 0 UNION ALL
SELECT 9, N'2R', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'276d91a4-4d8e-48e9-89be-a6516fe78819', 0 UNION ALL
SELECT 8, N'G404-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ed073db7-aec1-48e2-b74a-a66c832601cf', 0 UNION ALL
SELECT 8, N'A201-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'fc55a34c-cbed-4c7c-a10c-a67642274ddf', 0 UNION ALL
SELECT 8, N'D201-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ada8b631-0605-42a9-8acd-a67eca2a58cc', 0 UNION ALL
SELECT 7, N'006-1A', N'Apartment - 006-1A', N'nirshan', '20150723 08:05:19.033', N'ce043c55-4da2-47b1-94f5-a6bcf2e56ac7', 0 UNION ALL
SELECT 8, N'F410', N'2 BR 1 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'a8c8b35a-3ec9-4f6e-aeeb-a6d48397d79d', 0 UNION ALL
SELECT 8, N'I105-C', N'Apartment/Bedroom-I105-C', N'nirshan', '20150723 08:06:45.067', N'ab07f3fe-2048-4823-9833-a6faa1a1949b', 0 UNION ALL
SELECT 8, N'I503-A', N'Apartment/Bedroom-I503-A', N'nirshan', '20150723 08:06:45.067', N'01740bd2-4024-491f-993c-a72bbef6adc8', 0 UNION ALL
SELECT 8, N'D308-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6d42fd4c-36af-4a71-87c4-a731f280239d', 0 UNION ALL
SELECT 8, N'E305', N'2BR Apartment', N'nirshan', '20150723 08:06:45.067', N'2d90ecf3-f0e2-4bbf-b29d-a73777f8962d', 0 UNION ALL
SELECT 8, N'I509', N'Apartment/2BR 1BA- I509', N'nirshan', '20150723 08:06:45.067', N'a89cc422-b43c-4db4-9bca-a7392bb2f542', 0 UNION ALL
SELECT 9, N'4G', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'a9cd23af-ad65-4035-b6c6-a73e78ed6375', 0 UNION ALL
SELECT 8, N'I507-D', N'Apartment/Bedroom-I507-D', N'nirshan', '20150723 08:06:45.067', N'49b1b719-7b72-446c-b7a1-a74a924308b9', 0 UNION ALL
SELECT 8, N'A403-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'5fbc7569-8172-497b-ae39-a76d54e56305', 0 UNION ALL
SELECT 8, N'I309-B', N'Apartment/Bedroom-I309-B', N'nirshan', '20150723 08:06:45.067', N'cc3b443f-4f0f-4772-9313-a7747ced896f', 0 UNION ALL
SELECT 8, N'E304-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'9d1b64eb-e9a5-42bd-9f83-a7984a05ba57', 0 UNION ALL
SELECT 9, N'3R', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'7996366b-94c3-43fc-8a67-a7a738d4135e', 0 UNION ALL
SELECT 8, N'M 303-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'bf331938-b1ee-446e-b166-ad3aefafd01a', 0 UNION ALL
SELECT 8, N'E309-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'2f09140d-5946-407d-bf6b-ad50951b3a17', 0 UNION ALL
SELECT 8, N'G304-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'87dbd37d-d901-4986-b1e0-ad2857513f2c', 0 UNION ALL
SELECT 8, N'L102', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'610e1560-cac0-4794-8906-b00a2abfc269', 0 UNION ALL
SELECT 7, N'002-1A', N'Apartment - 002-1A', N'nirshan', '20150723 08:05:19.033', N'4f4f7312-8374-4a89-9417-b015f59e8891', 0 UNION ALL
SELECT 8, N'D408-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f8696397-679a-49aa-8a87-b02f39fb7751', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 20.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 8, N'L301', N'2 BR 1 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'e3a4ae70-e59f-4541-a64a-b05cd466ef79', 0 UNION ALL
SELECT 8, N'G504-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'57766e7b-5a7c-4ed1-92ca-b0876fad50b8', 0 UNION ALL
SELECT 8, N'I108-A', N'Apartment/Bedroom-I108-A', N'nirshan', '20150723 08:06:45.067', N'9613a5ba-3a24-4b73-bfd4-b08aeb2048ad', 0 UNION ALL
SELECT 10, N'A11-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'16e9c516-c514-4c61-a0f9-b08bc125a80d', 0 UNION ALL
SELECT 10, N'F-72-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'6ea89afb-d6e6-4c3a-b4ff-b0f218ce06fc', 0 UNION ALL
SELECT 8, N'A206-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e2dce56b-7449-4d98-a2b7-b0facccb5611', 0 UNION ALL
SELECT 6, N'741-743', NULL, N'nirshan', '20150723 08:03:32.660', N'6572c98c-1a55-4be4-8888-b10de6892656', 0 UNION ALL
SELECT 8, N'G111-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd52bec04-521d-4e82-b670-b137febf11c6', 0 UNION ALL
SELECT 8, N'F406-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6b7e8f16-2ed7-4841-94ce-b15051eb53b0', 0 UNION ALL
SELECT 9, N'1R', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'f1a58a6d-10ba-491f-8720-b1576cf04ca0', 0 UNION ALL
SELECT 8, N'M 406-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'496848d4-ec6b-456c-a7b0-b188c64c24f3', 0 UNION ALL
SELECT 8, N'L504', N'RD Apartment', N'nirshan', '20150723 08:06:45.067', N'3a16550e-6e2e-48e0-a2e0-b19fb886f2dc', 0 UNION ALL
SELECT 8, N'E102-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b61448df-860c-4d39-bcb5-b1b318aea66f', 0 UNION ALL
SELECT 8, N'F503-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ab128761-aeb7-412a-a838-b1bb3d26bf03', 0 UNION ALL
SELECT 8, N'G408', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'57bc64c5-4a99-4b26-be76-b1f8e03c339a', 0 UNION ALL
SELECT 7, N'005-1B', N'Apartment - 005-1B', N'nirshan', '20150723 08:05:19.033', N'c809cd8b-81d2-4150-9d84-b1fc0aa8348b', 0 UNION ALL
SELECT 10, N'A15-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'649244ce-7f57-4abc-bf42-b2682df9d2e2', 0 UNION ALL
SELECT 8, N'M 302-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'2e28ca7c-6640-4039-99c6-b28327b9409d', 0 UNION ALL
SELECT 9, N'1F', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'd78681a9-660f-4a2f-a4cb-b28f21221ae5', 0 UNION ALL
SELECT 8, N'B101-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'8b323510-878f-4b46-b3db-b29094410a23', 0 UNION ALL
SELECT 6, N'3369-3371', NULL, N'nirshan', '20150723 08:03:32.660', N'909fc73c-8cf4-4225-978f-b2a1d78947d1', 0 UNION ALL
SELECT 8, N'E409-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6724e33e-76e7-4375-abdb-b2b99fc285c4', 0 UNION ALL
SELECT 8, N'A304-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'414513c6-51bb-4d63-964c-b2bf25e5b89e', 0 UNION ALL
SELECT 8, N'M 307-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd88b0ec9-9613-4b16-b048-b2ce553e6cf1', 0 UNION ALL
SELECT 10, N'B18', N'2BR Apartment', N'nirshan', '20150723 08:08:25.727', N'2c7367df-c7c3-451e-8ed7-b2da85d9de85', 0 UNION ALL
SELECT 9, N'10P', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'42ccade6-d1fa-4f78-aa76-b2f03e85d2a0', 0 UNION ALL
SELECT 8, N'B406-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd21304aa-11fa-4a15-a572-b300a7db26e4', 0 UNION ALL
SELECT 8, N'M 502-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e18707fd-d787-4ec6-afc7-b31ed8f392b8', 0 UNION ALL
SELECT 10, N'A7', N'2BR Apartment', N'nirshan', '20150723 08:08:25.727', N'41265faa-6728-420a-afb6-b32800b432a8', 0 UNION ALL
SELECT 8, N'G507-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3440e745-1768-4fb4-80d8-b32b3fb36f1d', 0 UNION ALL
SELECT 8, N'M 308-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a1c7bfa8-e96f-4e46-9640-b32e87852410', 0 UNION ALL
SELECT 8, N'F609-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'c33e2a41-2ce1-4263-840f-bc0c01d57315', 0 UNION ALL
SELECT 8, N'D302-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3809472b-7fc3-4332-9d61-bc300af3cd70', 0 UNION ALL
SELECT 8, N'E304', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'602d81ac-3561-496d-96ee-bc3b89d186ba', 0 UNION ALL
SELECT 8, N'A401-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'5267750e-21cd-41cc-a63b-bc3e479cf5fb', 0 UNION ALL
SELECT 8, N'F205', N'1 BR Apartment', N'nirshan', '20150723 08:06:45.067', N'b016f5d9-901e-46b2-96eb-bc534db78147', 0 UNION ALL
SELECT 8, N'F307-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'65c61380-ca08-465e-8b17-bc5ebec3253a', 0 UNION ALL
SELECT 8, N'M101-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'538bd59a-304c-430a-adce-bc606b0efdf3', 0 UNION ALL
SELECT 8, N'A101-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'55d4fe8c-8ff1-4160-8543-bc6b1ebc0b74', 0 UNION ALL
SELECT 8, N'B306-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3e2c9fa3-b060-4327-8f28-bc8266cc4694', 0 UNION ALL
SELECT 8, N'E101-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'686115ef-ac9a-4398-817c-bc952f13708f', 0 UNION ALL
SELECT 8, N'G405-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'058f31d3-bb1c-413d-941f-bc9e2d583f29', 0 UNION ALL
SELECT 8, N'L205', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'baf6fc4a-d650-4846-8655-bca9e5593e9d', 0 UNION ALL
SELECT 7, N'024-2C', N'Apartment - 024-2C', N'nirshan', '20150723 08:05:19.033', N'a0808978-8994-4daa-8433-bd09274ce742', 0 UNION ALL
SELECT 8, N'I402-A', N'Apartment/Bedroom-I402-A', N'nirshan', '20150723 08:06:45.067', N'6291848b-2f2b-4f03-86fc-bd22b6b9dc74', 0 UNION ALL
SELECT 8, N'D304-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'af338288-89d4-49c9-94bb-bd308b06e394', 0 UNION ALL
SELECT 8, N'G301', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'b87d86ce-501e-4b51-bd54-bd5ff0776b76', 0 UNION ALL
SELECT 6, N'849-851', NULL, N'nirshan', '20150723 08:03:32.660', N'66ad0478-22e8-41f4-b2b8-bd759d7d3e0b', 0 UNION ALL
SELECT 8, N'F610-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'149e152a-20ba-4259-aed7-bd7d9ba04613', 0 UNION ALL
SELECT 10, N'F-71-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'7e02da08-478e-404a-9a32-bdbd28fcab42', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 21.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 8, N'F503-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b4d6f819-c55c-42bf-96c2-bde74fdc9b57', 0 UNION ALL
SELECT 8, N'L401', N'2 BR 1 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'171654b7-d3ae-4cdf-a4ee-be1814eea315', 0 UNION ALL
SELECT 8, N'F403-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'4db0dc41-0bb0-42c2-adc0-be1b25c221cd', 0 UNION ALL
SELECT 6, N'3460-3462', NULL, N'nirshan', '20150723 08:03:32.660', N'22b3e0a0-4798-4be8-81b0-be22daf4cf8f', 0 UNION ALL
SELECT 8, N'B303-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'515a5c23-7fb6-4200-a1c9-be41ff0e7a54', 0 UNION ALL
SELECT 8, N'M 209-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'fd2f33a1-e805-40ed-8183-bec05acc3e3d', 0 UNION ALL
SELECT 9, N'17C', N'Studio Apartment', N'nirshan', '20150723 08:07:50.047', N'cf9b3c4b-c404-4e7a-a56b-bec77bdf24eb', 0 UNION ALL
SELECT 6, N'3315-3317', NULL, N'nirshan', '20150723 08:03:32.660', N'b2db0450-2de7-44f2-b413-becde291aad8', 0 UNION ALL
SELECT 8, N'G405', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'b4c77291-63ee-4db5-b3a8-bf11d8c12b93', 0 UNION ALL
SELECT 9, N'2G', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'17b7a6a6-8de2-453f-9483-bf18eac7b93a', 0 UNION ALL
SELECT 10, N'A2', N'2BR Apartment', N'nirshan', '20150723 08:08:25.727', N'cbd40d82-7d69-403b-957b-bf1e2ba43577', 0 UNION ALL
SELECT 8, N'B104', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'63870b0c-3513-4ea0-8681-bf25e16da705', 0 UNION ALL
SELECT 8, N'F608-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'0485c8d6-c7fa-4f33-a0c0-c4bd09a80871', 0 UNION ALL
SELECT 8, N'D102-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'9626c43b-f25f-445d-87c4-c4d31f65e916', 0 UNION ALL
SELECT 8, N'M 201', N'Apartment/Bedroom', N'nirshan', '20150723 08:06:45.067', N'aeaa6d0a-c243-49af-a5fa-c4faf565004b', 0 UNION ALL
SELECT 8, N'G109-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'15889116-87fd-4f8a-adad-c4fbf567d549', 0 UNION ALL
SELECT 8, N'I502', N'Apartment/ 4BR 2BA-I502', N'nirshan', '20150723 08:06:45.067', N'25c9b1bf-35c1-43e2-b382-c51a2617dc00', 0 UNION ALL
SELECT 9, N'1B', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'd8fb2c73-6c48-4aca-ae1f-c5595ba4e7cf', 0 UNION ALL
SELECT 8, N'I207-A', N'Apartment/Bedroom-I207-A', N'nirshan', '20150723 08:06:45.067', N'e2e301fc-6168-4799-951c-c56e933dfdb9', 0 UNION ALL
SELECT 8, N'D305-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'75415c0a-7b47-4309-b74d-c58afd0fa41e', 0 UNION ALL
SELECT 8, N'F404-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'92e4df20-e6bf-4845-8626-c599bfee3c69', 0 UNION ALL
SELECT 10, N'D46-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'd962ba4d-5f82-4018-bf70-c5a143b24add', 0 UNION ALL
SELECT 9, N'4L', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'99b6c8f7-b841-43f5-8fdc-c5a2208e49d4', 0 UNION ALL
SELECT 8, N'B102-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd8796355-d2b1-4bb1-a46b-c5ad571f9424', 0 UNION ALL
SELECT 8, N'F407-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'4e6a3701-ca82-4fef-83b1-c5ae1cad204e', 0 UNION ALL
SELECT 8, N'D409-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a0bebf5c-5e99-4648-9b67-c5d35cea77a1', 0 UNION ALL
SELECT 8, N'L210', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'b6c1e1e8-e2dd-4fff-88d7-c5dc2fa0c5a6', 0 UNION ALL
SELECT 7, N'002-2C', N'Apartment - 002-2C', N'nirshan', '20150723 08:05:19.033', N'8e2b3031-abd9-4d55-a825-c5e3030f34db', 0 UNION ALL
SELECT 8, N'G107', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'3a3cc36f-535c-4c09-ba91-c60b467e7040', 0 UNION ALL
SELECT 9, N'1O', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'972f3dd0-6dcd-47c2-a34d-c63541b30ab1', 0 UNION ALL
SELECT 6, N'3411-3413', NULL, N'nirshan', '20150723 08:03:32.660', N'6783523a-0d1f-4f9e-8a7d-c64d741d19ca', 0 UNION ALL
SELECT 10, N'E62-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'e91af182-0ea7-445b-8af7-c665cbc0d17e', 0 UNION ALL
SELECT 8, N'E401-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'c6fcdd6b-8654-4a7c-8612-c666a414dfc3', 0 UNION ALL
SELECT 9, N'12C', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'ffe03d02-edb3-4ac5-b0a9-c666c487795c', 0 UNION ALL
SELECT 8, N'D302-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3c3d8854-d9d6-4ff2-89cf-c671766d98dc', 0 UNION ALL
SELECT 8, N'G105-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'58fde12d-1541-4f38-87db-c67334927212', 0 UNION ALL
SELECT 8, N'A305', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'f15cf5ed-d33a-4e58-b3a4-d04d30586320', 0 UNION ALL
SELECT 8, N'M 510-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'cd37f8b5-9843-420f-871e-d050cd231d7b', 0 UNION ALL
SELECT 8, N'A105', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'7bc4cf18-196b-48f6-b7ff-d08e719b8a1f', 0 UNION ALL
SELECT 8, N'G404-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6499e87c-d3ce-4972-b253-d0a31555fc33', 0 UNION ALL
SELECT 8, N'A302-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'34d7ae44-e38d-4393-b850-d0a3c959e218', 0 UNION ALL
SELECT 8, N'D307-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6e898844-34dd-443c-a8fa-d0af8c9cef47', 0 UNION ALL
SELECT 8, N'G104-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'599abade-47ba-4c39-b9b5-d0d3e560d33c', 0 UNION ALL
SELECT 8, N'M 212-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3eed6903-6ed9-453b-987c-d0d4546fd35f', 0 UNION ALL
SELECT 8, N'G504', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'ff524cf7-53a7-440c-bae9-d0dfd75027a3', 0 UNION ALL
SELECT 6, N'3430-3432', NULL, N'nirshan', '20150723 08:03:32.660', N'c8130db5-5832-4143-9e00-d0f027b25fe4', 0 UNION ALL
SELECT 8, N'B107', N'4BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'4945c9ed-d865-4607-9179-d0fcbdee5b73', 0 UNION ALL
SELECT 8, N'I510-C', N'Apartment/Bedroom-I510-C', N'nirshan', '20150723 08:06:45.067', N'3b20825c-1057-442f-8076-d106253636d3', 0 UNION ALL
SELECT 8, N'E109', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'3efc0168-94d7-48fa-a4e7-d13c1edd9c2b', 0 UNION ALL
SELECT 8, N'A109-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e797cef7-ccd0-495f-9a93-d14cf3acce76', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 22.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 7, N'025-2C', N'Apartment - 025-2C', N'nirshan', '20150723 08:05:19.033', N'0626c749-f8c2-4bf6-9be5-d17f858296de', 0 UNION ALL
SELECT 8, N'G104-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'856c4176-4ddb-42d0-b22f-d1dbe4db1aba', 0 UNION ALL
SELECT 8, N'E107-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f0749e36-47d3-4f52-8b5a-d235b31ec7e7', 0 UNION ALL
SELECT 6, N'731-733', NULL, N'nirshan', '20150723 08:03:32.660', N'210a420f-b2c3-498b-b2c7-d240d198e262', 0 UNION ALL
SELECT 8, N'I202-B', N'Apartment/Bedroom-I202-B', N'nirshan', '20150723 08:06:45.067', N'50d33f99-2932-4862-8428-d24c159b19a9', 0 UNION ALL
SELECT 8, N'I503-B', N'Apartment/Bedroom-I503-B', N'nirshan', '20150723 08:06:45.067', N'be605956-2880-4b47-b996-d27a6f76744c', 0 UNION ALL
SELECT 10, N'F-67', N'1BR Apartment', N'nirshan', '20150723 08:08:25.727', N'05caf4f3-dd0c-46d9-9854-d2b8d2a2f7e8', 0 UNION ALL
SELECT 8, N'F402-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'0439255f-30d9-4355-a578-d2bcf39d5c3d', 0 UNION ALL
SELECT 8, N'E106', N'2BR Apartment', N'nirshan', '20150723 08:06:45.067', N'ec32f4e3-5c93-4fdb-83d6-d2da61aa4ad7', 0 UNION ALL
SELECT 8, N'J 303', N'Electrical Room', N'nirshan', '20150723 08:06:45.067', N'708608d6-850f-4c14-8880-d2f60edd644d', 0 UNION ALL
SELECT 8, N'E307-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e7e794cf-b10f-497e-ba40-d2fdc182a558', 0 UNION ALL
SELECT 8, N'E409', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'93aac364-d723-4552-991e-d304a0a2c125', 0 UNION ALL
SELECT 8, N'I502-C', N'Apartment/Bedroom-I502-C', N'nirshan', '20150723 08:06:45.067', N'62820205-bfc1-4840-aef4-d30623680994', 0 UNION ALL
SELECT 8, N'L108-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'87421880-b239-41ca-8263-d32b8c6978e4', 0 UNION ALL
SELECT 8, N'M 306-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'00042261-f364-43db-a9a5-d33c8c91f4b7', 0 UNION ALL
SELECT 9, N'9G', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'66deb835-f04b-4ca3-ae47-d356650e53af', 0 UNION ALL
SELECT 8, N'F609', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'1c9c1ee9-d215-4540-b9d4-d3880ff18d76', 0 UNION ALL
SELECT 8, N'F405', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'08243a52-a7f9-4af5-a223-d3dae505a626', 0 UNION ALL
SELECT 9, N'10D', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'c09ba0a9-ef9c-4c56-9e8d-d70850e680db', 0 UNION ALL
SELECT 8, N'M 205-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd3a65158-c938-4a93-bb0e-d71c7eb3883a', 0 UNION ALL
SELECT 8, N'A104', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'9795e5e3-dd83-44f8-bb0f-d739c9c37013', 0 UNION ALL
SELECT 8, N'A102-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ebd662eb-dcab-44ec-a3c7-d74264b7ffaf', 0 UNION ALL
SELECT 8, N'D202-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'4086405e-2d7e-4ce7-99fc-d7659a9d0bdd', 0 UNION ALL
SELECT 8, N'B107-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3c151863-2372-47b5-9592-d7735dcf8995', 0 UNION ALL
SELECT 8, N'F505-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'c2a0d639-e3d3-43ba-9b4d-d7a6634f5cb7', 0 UNION ALL
SELECT 8, N'G111', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'5f08d66d-156e-4a7c-8e39-d7c47e578410', 0 UNION ALL
SELECT 8, N'E409-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'9fbdc709-0d53-4b9b-a864-d7f3e6772c50', 0 UNION ALL
SELECT 7, N'008-1B', N'Apartment - 008-1B', N'nirshan', '20150723 08:05:19.033', N'2fd9a132-88f2-454f-8be8-d80af30ec62a', 0 UNION ALL
SELECT 8, N'A102', N'4 BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'79d2f9d8-ee40-4d9e-b2e9-d816fe655f31', 0 UNION ALL
SELECT 8, N'F603', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'd8585e7f-d2c3-4e42-ba66-d817c9b8e359', 0 UNION ALL
SELECT 8, N'D206-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'8dcfcef7-d5ee-402e-a561-d84c3f9215ae', 0 UNION ALL
SELECT 10, N'B30', N'2BR 2BA Apartment', N'nirshan', '20150723 08:08:25.727', N'55efbe38-e5ad-4ca1-b7e3-d853963d4106', 0 UNION ALL
SELECT 6, N'3483-3485', NULL, N'nirshan', '20150723 08:03:32.660', N'ed84134a-d538-488b-9eaa-d854dffea3ad', 0 UNION ALL
SELECT 8, N'B404-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b384b6d2-9eac-450f-8470-d862c4db2168', 0 UNION ALL
SELECT 8, N'M 505-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a89de06d-6dae-49e2-876f-d863f6439b29', 0 UNION ALL
SELECT 8, N'J 315', N'Conference Room', N'nirshan', '20150723 08:06:45.067', N'64546a64-9626-4290-8ab6-d86ba2123d3f', 0 UNION ALL
SELECT 8, N'F606', N'2 BR 1 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'287c084b-9378-400e-8aa4-d873b62e588c', 0 UNION ALL
SELECT 8, N'G409', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'08dc7e65-c4e4-4dfb-a1a6-d8769af44b74', 0 UNION ALL
SELECT 8, N'M 206-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'c1ea89aa-d871-46ae-a671-d89381ed8b8b', 0 UNION ALL
SELECT 8, N'I401', N'Apartment/ 4BR 2BA-I401', N'nirshan', '20150723 08:06:45.067', N'860ed9d0-9050-416c-b262-d8dd2521554a', 0 UNION ALL
SELECT 9, N'9H', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'1b64c35e-d564-461c-b12f-d8df70020dcf', 0 UNION ALL
SELECT 8, N'L501', N'2 BR 1 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'9250119c-5293-4dd4-b185-d928a682b577', 0 UNION ALL
SELECT 8, N'B307', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'4c5ef55d-4642-4882-8160-d94c4fd25269', 0 UNION ALL
SELECT 8, N'A103', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'd4949dc5-0077-4f88-986f-d957b516237d', 0 UNION ALL
SELECT 9, N'2E', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'769d5c40-2d24-481d-818e-d96386a166b0', 0 UNION ALL
SELECT 8, N'B208-B', N'Apartment/Bedroom- B208-B', N'nirshan', '20150723 08:06:45.067', N'b93e4f4c-7be3-4b4e-abff-d9bd4ed01444', 0 UNION ALL
SELECT 7, N'016-1A', N'Apartment - 016-1A', N'nirshan', '20150723 08:05:19.033', N'f490f5bc-0579-4740-aa31-d9c62a29b11a', 0 UNION ALL
SELECT 10, N'D54-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'c6fe63cb-3338-47a2-bda6-d9d173fa8ab6', 0 UNION ALL
SELECT 8, N'I501-A', N'Apartment/Bedroom-I501-A', N'nirshan', '20150723 08:06:45.067', N'60adc5fe-25e4-4f61-bcdc-da378df53b73', 0 UNION ALL
SELECT 8, N'D307', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'abc0f2fa-fd3c-41ac-88c7-da46e200a1e3', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 23.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 8, N'D110-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'2795c8f8-666d-48fb-a23a-da5697612f7b', 0 UNION ALL
SELECT 8, N'I209-A', N'Apartment/Bedroom-I209-A', N'nirshan', '20150723 08:06:45.067', N'a976147c-d7b2-4b15-9404-da67a6bf566a', 0 UNION ALL
SELECT 10, N'D52-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'555cdbb0-a93d-46cc-bdbd-da7fd4cd3e21', 0 UNION ALL
SELECT 8, N'B402-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'7116941e-5a82-4921-80d3-da83e8c06e3d', 0 UNION ALL
SELECT 8, N'M 607-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'733675ab-5123-41d3-b40e-da8e1d56d445', 0 UNION ALL
SELECT 8, N'F408-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6f6734db-e9e7-46c2-920d-da978117b7bd', 0 UNION ALL
SELECT 9, N'3Q', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'039fdc84-f569-4e83-9e9d-da9c6f1e3624', 0 UNION ALL
SELECT 8, N'I207-B', N'Apartment/Bedroom-I207-B', N'nirshan', '20150723 08:06:45.067', N'ff6dfa4a-c257-4a66-83c1-daa7bc81416e', 0 UNION ALL
SELECT 8, N'E204-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3d4d743a-f3c7-44ae-8a4c-daad4fb84937', 0 UNION ALL
SELECT 8, N'G502-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'de07200a-8dfa-467f-a549-dae8cc22796e', 0 UNION ALL
SELECT 8, N'M 307', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'7aa2f4bf-eaa4-4658-aa38-db08b23ff6db', 0 UNION ALL
SELECT 8, N'D201-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'c3bea5fc-9032-49e3-9df0-db263a725c86', 0 UNION ALL
SELECT 9, N'10Q', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'dade62f6-1c0c-4004-a11d-db271ee90676', 0 UNION ALL
SELECT 8, N'J 319', N'Computer Lab', N'nirshan', '20150723 08:06:45.067', N'edfca381-64b4-45a8-b7e3-db4ef1015a9c', 0 UNION ALL
SELECT 8, N'L308', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'6eb1d1b8-2020-4a6f-b863-db4fe0dd2dde', 0 UNION ALL
SELECT 8, N'I103', N'Apartment/4BR 2BA-I103', N'nirshan', '20150723 08:06:45.067', N'c7c60455-14cf-4b6e-ac1c-dbb2ffbf7034', 0 UNION ALL
SELECT 9, N'8C', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'bf613c79-92c1-4d9c-8232-dbc2cb9c17fd', 0 UNION ALL
SELECT 8, N'F509', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'6f695458-1749-4e13-b80a-dbd06e9062c8', 0 UNION ALL
SELECT 8, N'M 606', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'7fe43b1a-e549-4daf-82c2-dbe130fea11e', 0 UNION ALL
SELECT 8, N'D108-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'7d09d19b-c6cb-42d8-9b98-dbe3412b259a', 0 UNION ALL
SELECT 8, N'M 209-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'52ce8d39-b3ee-414b-a726-dc04f947d725', 0 UNION ALL
SELECT 8, N'F601-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'5aefa2ed-cf0e-41ce-82bf-dc138548db71', 0 UNION ALL
SELECT 8, N'G505-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a70c7958-75dc-4103-875b-dc15227202c6', 0 UNION ALL
SELECT 9, N'6E', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'cdf36d90-4f8a-48b8-931b-dc7b79df6a4a', 0 UNION ALL
SELECT 10, N'D50-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'f0ce242e-551b-4c19-a9e5-dc7f7599170b', 0 UNION ALL
SELECT 8, N'E310-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6617a1b0-4ae3-4b8e-a87f-dcdf8568556d', 0 UNION ALL
SELECT 8, N'E206', N'2BR Apartment', N'nirshan', '20150723 08:06:45.067', N'9e652679-92b4-478d-84fc-dce1ff1f7147', 0 UNION ALL
SELECT 10, N'E59', N'1BR Apartment', N'nirshan', '20150723 08:08:25.727', N'96c3977b-88c6-409f-8fbc-e0c481843b53', 0 UNION ALL
SELECT 10, N'E-58-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'd0b49be2-9d0a-4a9e-9f5e-e0e03692549f', 0 UNION ALL
SELECT 8, N'I404-D', N'Apartment/Bedroom-I404-D', N'nirshan', '20150723 08:06:45.067', N'd03f10a6-fe13-431b-8346-e1133ae1ffa0', 0 UNION ALL
SELECT 8, N'I408-B', N'Apartment/Bedroom-I408-B', N'nirshan', '20150723 08:06:45.067', N'2b708989-5325-48cd-90a6-e127520caa19', 0 UNION ALL
SELECT 8, N'F407-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'de157ebc-863a-406f-b4fb-e1345c14584c', 0 UNION ALL
SELECT 8, N'L404', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'a7a55290-76cb-4898-b434-e1392c4c5726', 0 UNION ALL
SELECT 8, N'M 408-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'23100ca2-d95d-4607-92b3-e18d55dbec3a', 0 UNION ALL
SELECT 10, N'F-57', N'1BR Apartment', N'nirshan', '20150723 08:08:25.727', N'532604cf-eb01-4c00-84ad-e194e4417972', 0 UNION ALL
SELECT 8, N'G511-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'11e10b64-27ce-406c-bcc4-e1a2f4ef70e9', 0 UNION ALL
SELECT 9, N'15C', N'Deluxe 2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'375ecbfa-cab4-42ec-bf14-e1fe418e6dbd', 0 UNION ALL
SELECT 8, N'A403-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'dba6e4e7-9081-422f-9089-e2056623f74c', 0 UNION ALL
SELECT 8, N'I205-B', N'Apartment/Bedroom-I205-B', N'nirshan', '20150723 08:06:45.067', N'7b7771c9-abe6-4eaf-8068-e2172cd0b02d', 0 UNION ALL
SELECT 8, N'I505-C', N'Apartment/Bedroom-I505-C', N'nirshan', '20150723 08:06:45.067', N'fbcd9912-9c01-4c4b-ad28-e24384125c54', 0 UNION ALL
SELECT 8, N'B203-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'2b4f4a2a-4560-42d5-991d-e28007c39eca', 0 UNION ALL
SELECT 8, N'I108-C', N'Apartment/Bedroom-I108-C', N'nirshan', '20150723 08:06:45.067', N'2d1360bb-b2f7-4e4c-83b5-e2aafa5dd55b', 0 UNION ALL
SELECT 8, N'M 407-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'fb7d905b-e15d-4adf-93da-e2ab73184b87', 0 UNION ALL
SELECT 10, N'E59-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'6f84773e-49b6-4351-945d-e2b15f05b06c', 0 UNION ALL
SELECT 8, N'M 207-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'02468542-0373-4052-bacd-e2bc9a6ec614', 0 UNION ALL
SELECT 8, N'M104-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ee15e8b1-eb38-458f-a24a-e2e2f3d7d70a', 0 UNION ALL
SELECT 8, N'F502-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'5513e6f6-e895-4157-84a4-e2e427f3d00b', 0 UNION ALL
SELECT 8, N'I504-A', N'Apartment/Bedroom-I504-A', N'nirshan', '20150723 08:06:45.067', N'1b77caa0-2483-4e79-bcac-e30becb3db35', 0 UNION ALL
SELECT 8, N'D204-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'cc46178d-3cc8-43de-815c-e31b10ddeaec', 0 UNION ALL
SELECT 8, N'A406-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'50734999-7997-4745-bf63-e32179224d72', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 24.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 8, N'A201', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'a6a2e2dd-bf72-4192-952f-e325f775aee7', 0 UNION ALL
SELECT 8, N'F410-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'dd74999b-d010-4ee7-8541-e35ae4fa37fb', 0 UNION ALL
SELECT 10, N'B18-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'287c5135-70bf-48e8-9f5b-e36ee9a8a2b0', 0 UNION ALL
SELECT 9, N'13E', N'2 BR Apartment', N'nirshan', '20150723 08:07:50.047', N'f30b2b93-9c0b-4abf-a2ff-e371e7699af7', 0 UNION ALL
SELECT 8, N'F305', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'3c30d8f4-5aba-4c25-ae5a-e3829811b265', 0 UNION ALL
SELECT 8, N'D309-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'49306b7c-719c-47af-806a-e382ba81e0fa', 0 UNION ALL
SELECT 8, N'I307-D', N'Apartment/Bedroom-I307-D', N'nirshan', '20150723 08:06:45.067', N'cd2dc490-cbd9-46c3-8b6d-e3c73dc004f1', 0 UNION ALL
SELECT 8, N'F408-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'860b883c-005c-435e-bd6f-e404a987d85e', 0 UNION ALL
SELECT 8, N'I103-D', N'Apartment/Bedroom-I103-D', N'nirshan', '20150723 08:06:45.067', N'fe7e10c6-ae85-49dc-a509-e4116fc627ae', 0 UNION ALL
SELECT 8, N'I303', N'Apartment/ 4BR 2BA-I303', N'nirshan', '20150723 08:06:45.067', N'28677a93-4f6c-439a-9e06-e7ce281980da', 0 UNION ALL
SELECT 9, N'3L', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'c2af218f-9647-4b2f-bbcb-e7f2beda9770', 0 UNION ALL
SELECT 8, N'B102-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6df86baf-a889-4682-b9ab-e8005d11293b', 0 UNION ALL
SELECT 7, N'007-1B', N'Apartment - 007-1B', N'nirshan', '20150723 08:05:19.033', N'1579fb12-6b65-4948-bc90-e81d95b97e25', 0 UNION ALL
SELECT 8, N'L303', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'8248fc9b-04b4-4ec6-8833-e83fb890e41f', 0 UNION ALL
SELECT 8, N'F505', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'7eb77aee-4ff8-4eb6-9c87-e840dffda58f', 0 UNION ALL
SELECT 8, N'M102-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'982c2173-fa47-4d66-8abf-e8411d14d487', 0 UNION ALL
SELECT 10, N'F65', N'1BR Apartment', N'nirshan', '20150723 08:08:25.727', N'55c204d8-3151-45cc-a83f-e848dc61bd63', 0 UNION ALL
SELECT 6, N'3466-3468', NULL, N'nirshan', '20150723 08:03:32.660', N'd43e48be-fba6-4ecd-b6aa-e852787f19cf', 0 UNION ALL
SELECT 8, N'M 203-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'95772f55-a2ce-44be-8981-e856292a3334', 0 UNION ALL
SELECT 8, N'M 512', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'ae93a8de-d10f-44c1-b2c2-e88e5602dda6', 0 UNION ALL
SELECT 8, N'E208-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a6dcc5e1-fcef-4ec3-be2a-e88f4d17a95c', 0 UNION ALL
SELECT 9, N'13H', N'2 BR Apartment', N'nirshan', '20150723 08:07:50.047', N'be178c26-2d2f-44de-a235-e8964e7474bf', 0 UNION ALL
SELECT 8, N'D309-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'54895d8d-b778-4458-a9f8-e8c832cfccbc', 0 UNION ALL
SELECT 8, N'I510-B', N'Apartment/Bedroom-I510-B', N'nirshan', '20150723 08:06:45.067', N'a7942e51-34f4-4657-9d2a-e8e0aea66298', 0 UNION ALL
SELECT 8, N'E408-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6ec02394-ecbd-412c-8f41-e8f73d9296f8', 0 UNION ALL
SELECT 8, N'E211-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'333d42c0-c0d5-4730-a4ba-e921869a8d40', 0 UNION ALL
SELECT 8, N'G405-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ac4c5bc1-0534-4f7f-b771-e9613e63067d', 0 UNION ALL
SELECT 9, N'11S', N'1 BR Apartment', N'nirshan', '20150723 08:07:50.047', N'a548bb01-fa79-4e8e-a48a-e9754ef0f8fc', 0 UNION ALL
SELECT 8, N'F207-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e2aa6b0c-2c87-46ac-934b-e984be4ae318', 0 UNION ALL
SELECT 8, N'A202', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'e22274fd-6a65-47c4-a87c-e9f9e3446ac6', 0 UNION ALL
SELECT 8, N'E206-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'968179c2-17ed-40a8-889b-ea624a557c84', 0 UNION ALL
SELECT 8, N'G509-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ff4cc4b7-1888-4d88-8da0-ea663d0a177c', 0 UNION ALL
SELECT 8, N'D402-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'13c56fc0-417b-4fc0-8551-ea6fdfe78ba5', 0 UNION ALL
SELECT 9, N'10G', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'ca0af2be-4689-4d94-a165-ea7cb9cd4140', 0 UNION ALL
SELECT 9, N'11D', N'1 BR Apartment', N'nirshan', '20150723 08:07:50.047', N'9eff21cb-5424-4c5f-ae68-ea7fed15a307', 0 UNION ALL
SELECT 6, N'806-808', NULL, N'nirshan', '20150723 08:03:32.660', N'3b191306-afe7-4e00-966d-ed2ebd957fe7', 0 UNION ALL
SELECT 9, N'5H', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'faab7a9f-283a-4dc8-8b2c-ed7529852548', 0 UNION ALL
SELECT 8, N'E401-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'8da5a901-7aae-49bf-b6cf-ed775193954e', 0 UNION ALL
SELECT 8, N'M 309-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ab48838d-cfb6-439f-a909-ed94bcdf6950', 0 UNION ALL
SELECT 8, N'E108', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'1af60d98-e35f-4309-ae7a-eddf9fa2ca8c', 0 UNION ALL
SELECT 9, N'8R', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'653ccd59-470b-49e3-9049-edf271eda0ae', 0 UNION ALL
SELECT 6, N'3489-3491', NULL, N'nirshan', '20150723 08:03:32.660', N'88da7792-e639-484d-8e87-edf71f350ce4', 0 UNION ALL
SELECT 8, N'I204', N'Apartment/4BR 2BA-I204', N'nirshan', '20150723 08:06:45.067', N'5e80ecd5-0bbe-434d-a19c-ee278699fb9a', 0 UNION ALL
SELECT 8, N'D211-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a13621cc-c38e-42d5-ab26-ee57c305512f', 0 UNION ALL
SELECT 8, N'G504-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'aa55e305-6a70-4770-a11c-eeba4ede551a', 0 UNION ALL
SELECT 9, N'3G', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'5e8b7b5a-c1d5-4205-a980-f40d81a22b1d', 0 UNION ALL
SELECT 6, N'753-755', NULL, N'nirshan', '20150723 08:03:32.660', N'32112f11-0e42-483f-bcee-f431f4915e0d', 0 UNION ALL
SELECT 10, N'D52', N'2BR 2BA Apartment', N'nirshan', '20150723 08:08:25.727', N'90bbaa4f-736f-4de0-ae26-f4a36c097e0d', 0 UNION ALL
SELECT 8, N'B106-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e184221c-196f-495a-a754-f4e2bde59754', 0 UNION ALL
SELECT 6, N'3460-3462', NULL, N'nirshan', '20150723 08:03:32.660', N'43a53cca-16eb-406b-b5cb-f4f29c9c6655', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 25.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 8, N'I410-A', N'Apartment/Bedroom-I410-A', N'nirshan', '20150723 08:06:45.067', N'eeb6c899-ea86-42f0-b8fc-f4f4414a8919', 0 UNION ALL
SELECT 8, N'D204-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'07426911-1a09-4c87-9182-f50a24398359', 0 UNION ALL
SELECT 10, N'B27-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'a70758f3-5262-4e16-b69b-f512ff721486', 0 UNION ALL
SELECT 10, N'B28-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'e108f0d8-8293-459f-8e95-f54924538d79', 0 UNION ALL
SELECT 8, N'A306-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f78bc955-3667-478a-993b-f54ae4656acf', 0 UNION ALL
SELECT 10, N'F-69', N'1BR Apartment', N'nirshan', '20150723 08:08:25.727', N'1820a75c-e49c-4fc9-bf1d-f54fa73be7ba', 0 UNION ALL
SELECT 8, N'D401-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a95e989b-6170-48ff-aa58-f55dc7440bb2', 0 UNION ALL
SELECT 8, N'F407-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'bc170626-e279-4df7-852f-f581dce1c077', 0 UNION ALL
SELECT 8, N'I304-A', N'Apartment/Bedroom-I304-A', N'nirshan', '20150723 08:06:45.067', N'24051bd8-403c-414a-bda1-f583b06a4fb7', 0 UNION ALL
SELECT 8, N'F206-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'9396b6a1-2555-479a-9e09-f5d5fe2ac555', 0 UNION ALL
SELECT 9, N'7D', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'89d254d6-afa3-4713-a639-f5e28c99fe94', 0 UNION ALL
SELECT 8, N'B302-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'7faae256-08a4-45df-b94d-f97a590a4ca6', 0 UNION ALL
SELECT 8, N'A204-1', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'638c3b6c-8846-4a07-a659-f996e87748b7', 0 UNION ALL
SELECT 8, N'I408-C', N'Apartment/Bedroom-I408-C', N'nirshan', '20150723 08:06:45.067', N'663033d6-f4aa-47b7-abfa-f99d9704906a', 0 UNION ALL
SELECT 8, N'I410', N'Apartment/ 4BR 2BA-I410', N'nirshan', '20150723 08:06:45.067', N'73721cd9-97e1-42fc-b735-f9a84ff348cc', 0 UNION ALL
SELECT 8, N'M 407-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b0e7e832-6b8a-4ef6-8076-f9ab483c5cd0', 0 UNION ALL
SELECT 7, N'020-1A', N'Apartment - 020-1A', N'nirshan', '20150723 08:05:19.033', N'a05e6b10-e211-4ff1-acde-f9b2a676afe7', 0 UNION ALL
SELECT 8, N'F610-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'5c955b58-5bb0-4312-9a08-f9cfb7a43ddc', 0 UNION ALL
SELECT 8, N'E302-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'c45054bb-a4f8-40b1-aaa4-fa0141c8b5d5', 0 UNION ALL
SELECT 8, N'A406', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'8dadbbaa-1dad-40ed-8d32-fa0fb4bf911a', 0 UNION ALL
SELECT 8, N'G209-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'cf87c527-e35d-4e84-ae88-fa10f3c11964', 0 UNION ALL
SELECT 8, N'M 306-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'2e595c19-8ee3-419b-a959-fa17f7da65e3', 0 UNION ALL
SELECT 8, N'I204-B', N'Apartment/Bedroom-I204-B', N'nirshan', '20150723 08:06:45.067', N'dabb837b-a21c-44d0-a969-fa1b60859f45', 0 UNION ALL
SELECT 8, N'G303-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'85ac1537-66e3-4170-9948-fa4605caa861', 0 UNION ALL
SELECT 8, N'I104-B', N'Apartment/Bedroom-I104-B', N'nirshan', '20150723 08:06:45.067', N'96a21a08-b7db-4756-854f-fa9d4641995b', 0 UNION ALL
SELECT 8, N'A208-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'718569a1-57b7-476a-a441-fb128a14713c', 0 UNION ALL
SELECT 9, N'6S', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'fd4a9985-ccc8-48cc-bf4f-fb4601cefe7e', 0 UNION ALL
SELECT 8, N'M 210-D', N'Aprtment/Bedroom', N'nirshan', '20150723 08:06:45.067', N'727bd399-8d99-41c0-9322-fb55223f869a', 0 UNION ALL
SELECT 8, N'G408-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ff0d4193-4ac3-41d7-acc7-fb88910e6f2a', 0 UNION ALL
SELECT 8, N'G205-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'eb9e503e-530a-42e8-bdba-fb9ee7079d14', 0 UNION ALL
SELECT 6, N'3442-3444', NULL, N'nirshan', '20150723 08:03:32.660', N'4d0c7ae2-7e73-4ad6-a078-fba97d6a03bb', 0 UNION ALL
SELECT 9, N'3C', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'70528867-380a-401b-adfc-fbe18b241ed0', 0 UNION ALL
SELECT 6, N'3490-3492', NULL, N'nirshan', '20150723 08:03:32.660', N'9095b53e-4faf-4a7b-bcf5-fbeab8fcf055', 0 UNION ALL
SELECT 8, N'L406', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'7f981c60-21c9-44b4-9a6f-fbfb03deeeb9', 0 UNION ALL
SELECT 8, N'B405-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'32877666-c8c4-49c3-8a6f-fc1389037b30', 0 UNION ALL
SELECT 8, N'M 203-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b09504c0-8040-40fa-bc65-fc1bb017acdf', 0 UNION ALL
SELECT 8, N'E208-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'43900ee0-c5b7-4e3c-8f0d-ffbc9e619f77', 0 UNION ALL
SELECT 8, N'E408', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'a9e6521c-0c9d-4ba1-8000-ffbe5fa7151c', 0 UNION ALL
SELECT 8, N'K 106-A', N'Storage', N'nirshan', '20150723 08:06:45.067', N'23c3dd2e-aa1d-41b5-bad9-ffca730580fd', 0 UNION ALL
SELECT 8, N'I107', N'Apartment/4BR 2BA-I107', N'nirshan', '20150723 08:06:45.067', N'c02102b9-8c99-4a5b-b359-ffd82ce74792', 0 UNION ALL
SELECT 8, N'I303-C', N'Apartment/Bedroom-I303-C', N'nirshan', '20150723 08:06:45.067', N'53331f26-4254-4d4e-ba91-fffe66336e54', 0 UNION ALL
SELECT 8, N'D304-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'27491209-61a2-4c60-b9d9-ffadf45dc8fc', 0 UNION ALL
SELECT 8, N'I202-D', N'Apartment/Bedroom-I202-D', N'nirshan', '20150723 08:06:45.067', N'12c105f2-289f-404e-9e93-1e917ea3e4b6', 0 UNION ALL
SELECT 7, N'024-1B', N'Apartment - 024-1B', N'nirshan', '20150723 08:05:19.033', N'f2fadce7-4173-4d86-b7d2-1e9708179a4c', 0 UNION ALL
SELECT 8, N'K 108-A', N'Strage', N'nirshan', '20150723 08:06:45.067', N'02d0958e-93d9-4ff1-a62b-1eb20afebae5', 0 UNION ALL
SELECT 8, N'F504', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'29d70c5f-7ef3-42da-89f0-1ed1b01a5a7d', 0 UNION ALL
SELECT 10, N'B20-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'86c460e1-612e-4e1b-ac92-1eeeac95eb7c', 0 UNION ALL
SELECT 8, N'J 119A', N'Restroom', N'nirshan', '20150723 08:06:45.067', N'4bb90f7d-86fa-407b-a440-1f01ab398e17', 0 UNION ALL
SELECT 8, N'A105-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'cccde862-0592-4bde-b972-1f04285802de', 0 UNION ALL
SELECT 8, N'E110-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd731a3b4-c823-43cb-a8ee-1f1d0a69e7ce', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 26.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 7, N'007-2C', N'Apartment - 007-2C', N'nirshan', '20150723 08:05:19.033', N'ee26cb6a-98f1-4585-bd81-1f9269374c39', 0 UNION ALL
SELECT 6, N'721-723', NULL, N'nirshan', '20150723 08:03:32.660', N'6dd81913-6816-4777-b0e0-1f9dae0ea74c', 0 UNION ALL
SELECT 8, N'L408', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'df448a26-61a7-4723-9423-1fa3cdb44e17', 0 UNION ALL
SELECT 8, N'M 605', N'2 BR 1BA Apartment', N'nirshan', '20150723 08:06:45.067', N'b415a9e3-decd-4378-9923-1fa4585f348e', 0 UNION ALL
SELECT 8, N'I403-B', N'Apartment/Bedroom-I403-B', N'nirshan', '20150723 08:06:45.067', N'56c9c312-2b1e-4f28-955f-1fac76d700bf', 0 UNION ALL
SELECT 9, N'6N', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'78caf946-ce3c-4dab-9e34-1fd1a15c9949', 0 UNION ALL
SELECT 8, N'A106-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'febd60db-49da-49f4-9615-1fe85e76eddc', 0 UNION ALL
SELECT 9, N'6I', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'79189e48-8c72-4466-8e47-2007f44a313a', 0 UNION ALL
SELECT 8, N'B101-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'c2f75add-e146-4dc0-a35f-200df6093ffd', 0 UNION ALL
SELECT 8, N'M 607-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6594433a-ecfd-4f95-bfe4-20121c722642', 0 UNION ALL
SELECT 9, N'4R', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'b563f816-9b3e-4d0b-b720-201c2eb9fdb9', 0 UNION ALL
SELECT 8, N'B302', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'932889bc-25c6-40fc-90fb-201c5e6e85af', 0 UNION ALL
SELECT 8, N'M 206-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'044b8f3d-cf53-4f4d-8374-2026a15e2f47', 0 UNION ALL
SELECT 8, N'G405-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'7139977b-6185-4425-a786-204a3f635060', 0 UNION ALL
SELECT 9, N'15G', N'Deluxe 2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'5c20c11c-363b-4fa3-bc3f-2058d0dd1797', 0 UNION ALL
SELECT 9, N'3O', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'5b54a1b2-6469-4507-86e4-208bb59b66c2', 0 UNION ALL
SELECT 8, N'F505-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'898cd6c9-a72a-4d39-887a-20997bb7f813', 0 UNION ALL
SELECT 9, N'8K', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'169490df-a222-4796-8f4c-209c5d593941', 0 UNION ALL
SELECT 8, N'G207', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'5ba45c4a-da44-4782-96a3-20a8200d9afb', 0 UNION ALL
SELECT 8, N'G105', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'13d4ede0-1960-431b-babf-21001310b944', 0 UNION ALL
SELECT 6, N'3461-3463', NULL, N'nirshan', '20150723 08:03:32.660', N'ab299a2b-71a7-4a76-9785-210d0e8ed7cd', 0 UNION ALL
SELECT 8, N'I304-C', N'Apartment/Bedroom-I304-C', N'nirshan', '20150723 08:06:45.067', N'816a9d83-9887-44c6-b6fd-210eed1ddf13', 0 UNION ALL
SELECT 8, N'I505', N'Apartment/ 4BR 2BA-I505', N'nirshan', '20150723 08:06:45.067', N'63489733-7039-4031-a814-21161cf35b39', 0 UNION ALL
SELECT 8, N'B302-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'cbc03092-70d0-4adf-bbe4-2126da0236fe', 0 UNION ALL
SELECT 8, N'B205', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'82b3e6b5-2f9b-4475-9830-42e695d68eb2', 0 UNION ALL
SELECT 8, N'G508-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'91f23214-8f3b-4328-a39a-42fe023da662', 0 UNION ALL
SELECT 8, N'M 210-C', N'Aprtment/Bedroom', N'nirshan', '20150723 08:06:45.067', N'65ca0d72-03a8-443f-bea2-43242cdc6791', 0 UNION ALL
SELECT 8, N'F307', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'd5ede5bc-4350-4dd7-8773-4326cae088f5', 0 UNION ALL
SELECT 9, N'4I', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'd32c46d7-63bd-4ef9-9760-4343db62a9be', 0 UNION ALL
SELECT 8, N'A108-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'be1e9190-6fdf-4d0e-bc30-434ecfacb75f', 0 UNION ALL
SELECT 8, N'E303', N'1BR Apartment', N'nirshan', '20150723 08:06:45.067', N'c4707a8d-95df-4ac0-adaa-436398f4b33f', 0 UNION ALL
SELECT 8, N'D301-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'9b1b0f0b-12eb-48af-81ca-43810976ae99', 0 UNION ALL
SELECT 8, N'E405-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'2fe519f6-cf84-4f30-b117-438881cc6ccf', 0 UNION ALL
SELECT 8, N'L102-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'50958ebf-db4d-4dbf-8809-4396c0c79ba2', 0 UNION ALL
SELECT 7, N'024-1A', N'Apartment - 024-1A', N'nirshan', '20150723 08:05:19.033', N'de7ddcb9-859b-43f8-8537-4399ad8fc460', 0 UNION ALL
SELECT 8, N'E101', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'ae2617f4-4d97-4f4f-a965-43a31f292c9f', 0 UNION ALL
SELECT 8, N'B206', N'2BR Apartment', N'nirshan', '20150723 08:06:45.067', N'278ceb5d-4589-4f9e-8976-43c76dbb823f', 0 UNION ALL
SELECT 10, N'B31', N'2BR Apartment', N'nirshan', '20150723 08:08:25.727', N'0548b824-b3a5-45f4-99b1-43d7e988b12b', 0 UNION ALL
SELECT 8, N'M 307-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'1635d0cb-73cc-4a3c-9a4e-43ead673f6e1', 0 UNION ALL
SELECT 9, N'3P', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'dfb681a9-32c7-48d3-b440-43f68c754964', 0 UNION ALL
SELECT 8, N'I507-A', N'Apartment/Bedroom-I507-A', N'nirshan', '20150723 08:06:45.067', N'9b7473ef-23fb-4610-81ec-4402fba60a9f', 0 UNION ALL
SELECT 8, N'I506', N'Apartment/RD-I506', N'nirshan', '20150723 08:06:45.067', N'994a8c10-7cad-47fd-8a0b-443fe407afe1', 0 UNION ALL
SELECT 9, N'7A', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'449c204d-6931-4b31-bd83-44683d44ae37', 0 UNION ALL
SELECT 9, N'13D', N'2 BR Apartment', N'nirshan', '20150723 08:07:50.047', N'e3307de1-6bf2-402b-af7b-447bc8c101bb', 0 UNION ALL
SELECT 8, N'F202-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'85435b20-7da7-4dc2-aff3-448382d59bd8', 0 UNION ALL
SELECT 8, N'M 606-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'7d5ba9e1-4ab5-44ce-9540-448508e6e75c', 0 UNION ALL
SELECT 8, N'E202-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'cc482f82-1774-4288-962a-4485d7785449', 0 UNION ALL
SELECT 8, N'L106-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'c619ed5a-8c01-4c68-9904-449a00dc5977', 0 UNION ALL
SELECT 9, N'11K', N'1 BR Apartment', N'nirshan', '20150723 08:07:50.047', N'fd1e4aae-9384-4255-8ef2-449c257e06d4', 0 UNION ALL
SELECT 9, N'12I', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'440d6c70-bb7c-4946-92e3-44c0e2d60b52', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 27.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 8, N'A402-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3af5a075-0adc-42ac-b523-4501a9ef2a32', 0 UNION ALL
SELECT 8, N'A301-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a4172756-a2a8-410c-ae4e-4541efe0e56a', 0 UNION ALL
SELECT 8, N'M 606-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'4e58ab6a-f5f0-435b-a95c-454da303c0b8', 0 UNION ALL
SELECT 8, N'J105', N'RSO', N'nirshan', '20150723 08:06:45.067', N'5f40a988-015d-4d17-8c14-45621ee85932', 0 UNION ALL
SELECT 8, N'A401-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'75c95033-0dbc-47a2-b33b-4562383bd84f', 0 UNION ALL
SELECT 9, N'5M', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'e2e25887-9584-46b9-9af7-4568abc75791', 0 UNION ALL
SELECT 8, N'L108-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'2d5b6564-6dd6-413d-826d-51683e3d2681', 0 UNION ALL
SELECT 9, N'16D', N'Deluxe 2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'b24923f4-e798-4e95-9dc7-5179164b79e3', 0 UNION ALL
SELECT 8, N'G205', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'de1341e4-f27b-475e-a718-519a678e55fd', 0 UNION ALL
SELECT 8, N'B105-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6002f3c5-ca84-45f1-9a8c-51a57c4cbf2c', 0 UNION ALL
SELECT 8, N'B301-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'8096dca2-a55a-435a-bbef-51baa866c97f', 0 UNION ALL
SELECT 8, N'B306-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'09ecf09b-ef23-40d2-a610-51c184e4d340', 0 UNION ALL
SELECT 8, N'G303-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'7131221f-eddb-432b-96a4-51cc53b4e110', 0 UNION ALL
SELECT 8, N'M 301-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'bda9e302-f79c-4ddc-80b8-51def5c98760', 0 UNION ALL
SELECT 8, N'G507-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'fa04a4aa-9e0c-4705-a059-520226271658', 0 UNION ALL
SELECT 8, N'A207-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3fdce413-0aa5-42e0-80ac-521062a536ce', 0 UNION ALL
SELECT 8, N'B207-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'66111789-901f-418f-98dd-5218422bfdb8', 0 UNION ALL
SELECT 10, N'A13-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'37f96ad1-3907-4fda-8832-521a9a34dc7a', 0 UNION ALL
SELECT 9, N'17E', N'Studio Apartment', N'nirshan', '20150723 08:07:50.047', N'c0f069be-36c1-4ca6-8219-52261fc5b391', 0 UNION ALL
SELECT 8, N'I505-B', N'Apartment/Bedroom-I505-B', N'nirshan', '20150723 08:06:45.067', N'61b7f684-951b-4f74-bdec-5232693c9634', 0 UNION ALL
SELECT 8, N'I504-B', N'Apartment/Bedroom-I504-B', N'nirshan', '20150723 08:06:45.067', N'7e5df3ad-37b3-4e7d-a80c-524f739d5048', 0 UNION ALL
SELECT 8, N'F509-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'12f61798-dbf1-4ebf-b300-525ad9fd468d', 0 UNION ALL
SELECT 8, N'I403-A', N'Apartment/Bedroom-I403-A', N'nirshan', '20150723 08:06:45.067', N'706590e6-0a8b-4263-86a5-5267141d2eae', 0 UNION ALL
SELECT 8, N'E407', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'4144a6b8-277d-4bac-8a29-5271de363250', 0 UNION ALL
SELECT 8, N'D109-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'4a533556-f47e-4a0c-a1c2-52794141542c', 0 UNION ALL
SELECT 9, N'9A', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'1fd58963-f03d-49bf-be1b-52a9070e8d72', 0 UNION ALL
SELECT 8, N'F303', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'03f4a4e5-153f-4a00-ad67-52ad0b6b923f', 0 UNION ALL
SELECT 10, N'A13', N'2BR 2BA Apartment', N'nirshan', '20150723 08:08:25.727', N'11ba6fd0-f49c-48d5-a064-52bba0fb2d32', 0 UNION ALL
SELECT 9, N'3M', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'569e1a73-6f71-4440-b820-52e32573bc20', 0 UNION ALL
SELECT 8, N'B105-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6a9e2353-9447-4ce4-8c90-52ebb8abfbe7', 0 UNION ALL
SELECT 8, N'G109-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6d02ed0f-9c23-4e3d-bf57-531942766996', 0 UNION ALL
SELECT 8, N'D408-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'c318a3f4-adc6-474d-af83-532fcc548bc1', 0 UNION ALL
SELECT 9, N'12D', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'9b45830b-6687-4660-aece-535d53967b2c', 0 UNION ALL
SELECT 8, N'D105', N'2BR Apartment', N'nirshan', '20150723 08:06:45.067', N'116b7c0e-e3d5-410f-8799-537c19e10645', 0 UNION ALL
SELECT 10, N'B21-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'd2de2262-19bb-4bee-be1a-5384168dd171', 0 UNION ALL
SELECT 8, N'G409-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b2739ffe-2ca2-455b-b2e9-539ca6379139', 0 UNION ALL
SELECT 8, N'F210-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ccb11976-7b81-4a51-b085-53c75e93fe2a', 0 UNION ALL
SELECT 10, N'E-58', N'1 BR Apartment', N'nirshan', '20150723 08:08:25.727', N'0bc8012e-6086-442f-a0c6-53e522c4d9ab', 0 UNION ALL
SELECT 10, N'D45-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'4f04ab7f-9eb8-4e14-b6dc-541431b97f5a', 0 UNION ALL
SELECT 8, N'F303-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'27e7286b-c5db-4023-a2fa-67553bcab952', 0 UNION ALL
SELECT 8, N'E408-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f4269a29-1be1-472e-8213-676db1f47346', 0 UNION ALL
SELECT 8, N'I103-C', N'Apartment/Bedroom-I103-C', N'nirshan', '20150723 08:06:45.067', N'10daf99f-f3e4-40fe-93db-6780e3d8a2af', 0 UNION ALL
SELECT 8, N'D409-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f3dc2f59-c3ef-425f-9e15-679afca7036f', 0 UNION ALL
SELECT 8, N'M 310-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'81cd67be-8244-478c-b475-679fc28c9a3f', 0 UNION ALL
SELECT 8, N'I501', N'Apartment/ 4BR 2BA-I501', N'nirshan', '20150723 08:06:45.067', N'907f0e11-e221-4cb2-a200-67d44474beec', 0 UNION ALL
SELECT 6, N'3402-3404', NULL, N'nirshan', '20150723 08:03:32.660', N'dc0431f7-c06f-4058-8c6c-67e033326eff', 0 UNION ALL
SELECT 8, N'F201', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'bdddebff-6e98-447b-abdd-680848b3ab36', 0 UNION ALL
SELECT 8, N'M 508-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'fb96e04c-1f0b-4011-aa7c-68091cecf7ac', 0 UNION ALL
SELECT 10, N'B30-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'09802d83-24ed-4309-b5c5-68883fe427df', 0 UNION ALL
SELECT 8, N'D202', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'14af049c-8294-40ae-844a-6896ee12b7b8', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 28.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 9, N'11F', N'1 BR Apartment', N'nirshan', '20150723 08:07:50.047', N'5cf17406-ceb4-4f0e-8469-68bc11572624', 0 UNION ALL
SELECT 8, N'E211-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'8ce1ee31-3158-48b4-8219-68eb4876c47c', 0 UNION ALL
SELECT 8, N'G307-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'345deddd-b389-447d-a806-692cc26cf45b', 0 UNION ALL
SELECT 8, N'M 309', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'18b46c1c-563c-4890-820f-693c1b77fafe', 0 UNION ALL
SELECT 8, N'I208-A', N'Apartment/Bedroom-I208-A', N'nirshan', '20150723 08:06:45.067', N'3c2baae7-469f-4224-9ef4-696bf614aa41', 0 UNION ALL
SELECT 8, N'D208', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'b7200aa2-e1a0-47b4-9516-69a5bab81bcd', 0 UNION ALL
SELECT 8, N'I109-B', N'Apartment/Bedroom-I109-B', N'nirshan', '20150723 08:06:45.067', N'af64a094-0735-49a2-b90d-69a9bcee33b4', 0 UNION ALL
SELECT 8, N'M 508', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'95a95969-ce41-4ebb-a9b9-69c58eae884c', 0 UNION ALL
SELECT 8, N'B102-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b4d86ec5-abaf-4ece-abc3-69c9a41144f2', 0 UNION ALL
SELECT 8, N'I106-A', N'Apartment/Bedroom-I106-A', N'nirshan', '20150723 08:06:45.067', N'945a4c21-a883-44eb-bfe3-69ef68e0ca1b', 0 UNION ALL
SELECT 7, N'022-1B', N'Apartment - 022-1B', N'nirshan', '20150723 08:05:19.033', N'f80160c5-f1b0-4272-8971-aaa5bbd260c4', 0 UNION ALL
SELECT 8, N'E102-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'09b19a8c-aa0e-4d59-8df9-aaa96d3ff129', 0 UNION ALL
SELECT 8, N'E301-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'799606b6-0903-40ee-a727-aab30fd93816', 0 UNION ALL
SELECT 8, N'M 304-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'772c5827-e47f-4437-8a0f-aab3ddedb97a', 0 UNION ALL
SELECT 8, N'B306', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'58daf340-ba00-41d9-bf6b-aabaef0f5cf1', 0 UNION ALL
SELECT 8, N'M 301-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'4366aa85-1b3d-4c13-814f-aaf748df0b3d', 0 UNION ALL
SELECT 10, N'A11', N'2BR 2BA Apartment', N'nirshan', '20150723 08:08:25.727', N'b5b91a2c-3c48-44bd-9bc7-ab099ad83940', 0 UNION ALL
SELECT 9, N'4B', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'2456a009-b04e-4f2a-a32c-ab0cd05fb6a5', 0 UNION ALL
SELECT 8, N'F506', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'6322e055-b047-46bd-a488-ab2906258b9a', 0 UNION ALL
SELECT 8, N'M 507-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'74c05c7c-031f-4a82-bcab-ab336242543f', 0 UNION ALL
SELECT 8, N'A204', N'1BR Apartment', N'nirshan', '20150723 08:06:45.067', N'46ee2518-ff54-458d-bbe2-ab525d8fca7f', 0 UNION ALL
SELECT 8, N'G409-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd08d4f73-09ee-45a7-b080-ab800c97e0f1', 0 UNION ALL
SELECT 10, N'C36', N'1BR Apartment', N'nirshan', '20150723 08:08:25.727', N'634bc3dd-4acf-430e-863d-aba3d36ee6f8', 0 UNION ALL
SELECT 8, N'M103-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'9f2cabd1-500d-402b-8e13-abaa2b2ab4d2', 0 UNION ALL
SELECT 8, N'L 123', N'Electrical Room', N'nirshan', '20150723 08:06:45.067', N'84277ede-6c93-4c70-9aa9-abbd4cfa4252', 0 UNION ALL
SELECT 7, N'001-2D', N'Apartment - 001-2D', N'nirshan', '20150723 08:05:19.033', N'6d3fc785-4df7-4a11-9ceb-abf9e47e8a55', 0 UNION ALL
SELECT 8, N'E404', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'ac391b53-a962-42a1-a0c6-ac2449724f11', 0 UNION ALL
SELECT 6, N'890-892', NULL, N'nirshan', '20150723 08:03:32.660', N'7b2c9e9b-b742-4f48-b631-ac35d4d6e430', 0 UNION ALL
SELECT 6, N'758-760', NULL, N'nirshan', '20150723 08:03:32.660', N'fd456e13-dd3e-4cd4-a554-ac4baa8a9a4f', 0 UNION ALL
SELECT 10, N'D47', N'2BR Apartment', N'nirshan', '20150723 08:08:25.727', N'82d5bb04-f109-421c-ab38-ac52123a7f69', 0 UNION ALL
SELECT 10, N'A01', N'Apartment-A01', N'nirshan', '20150723 08:08:25.727', N'1757079a-3a6a-4802-a01e-ac57a5f387bc', 0 UNION ALL
SELECT 8, N'G108-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'165840db-011e-4697-b579-ac8e08222343', 0 UNION ALL
SELECT 9, N'13A', N'2 BR Apartment', N'nirshan', '20150723 08:07:50.047', N'ac7c5542-aaa9-4498-9887-ac8e1fc8a8aa', 0 UNION ALL
SELECT 8, N'1302-B', N'Apartment/Bedroom-I302-B', N'nirshan', '20150723 08:06:45.067', N'a4c2d243-11a3-4d1c-b455-ac92c843cc9d', 0 UNION ALL
SELECT 8, N'J 207', N'Conference Room', N'nirshan', '20150723 08:06:45.067', N'f0e7cbad-5f81-4898-b078-acaf534de231', 0 UNION ALL
SELECT 8, N'I508-A', N'Apartment/Bedroom-I508-A', N'nirshan', '20150723 08:06:45.067', N'4b687978-97b2-4749-b569-aceefdc2222e', 0 UNION ALL
SELECT 10, N'B22-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'e1a5135f-78ce-48ad-9987-ad0f09a3c2cd', 0 UNION ALL
SELECT 8, N'F208-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a4d326dd-9fa1-4594-ab30-ad164b9dccfd', 0 UNION ALL
SELECT 8, N'B401-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'5ae7e0e5-1591-4a51-8fb5-ad1b4311d324', 0 UNION ALL
SELECT 9, N'3N', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'1b42596d-a1c8-43d2-8658-fcace213fef1', 0 UNION ALL
SELECT 10, N'D53', N'2BR 2BA Apartment', N'nirshan', '20150723 08:08:25.727', N'8e68068c-0755-4727-818b-fcdf76e8090a', 0 UNION ALL
SELECT 8, N'D408-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'5e9b3862-7885-41a9-8b56-fce9f3e0cbcc', 0 UNION ALL
SELECT 10, N'D55-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'938012cf-b69b-4e5b-a1c6-fceaf0cdd415', 0 UNION ALL
SELECT 6, N'3401-3403', NULL, N'nirshan', '20150723 08:03:32.660', N'63094887-b20a-4672-9326-fd0ad8439648', 0 UNION ALL
SELECT 8, N'M101-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b5eab94d-548f-403e-bb10-fd0b6b8a0bca', 0 UNION ALL
SELECT 6, N'3459-3461', NULL, N'nirshan', '20150723 08:03:32.660', N'c6d971bf-7637-46cb-955d-fd4127d7a36c', 0 UNION ALL
SELECT 10, N'C36-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'32d4dbb7-26ac-41dd-8b1f-fd6da5e60a95', 0 UNION ALL
SELECT 8, N'A301-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ea62777e-4a30-46ce-84b4-fd6f149d4e95', 0 UNION ALL
SELECT 8, N'F404-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'77b82c1e-0349-4006-b9b4-fe29b43cff22', 0 UNION ALL
SELECT 8, N'I407-D', N'Apartment/Bedroom-I407-D', N'nirshan', '20150723 08:06:45.067', N'580133ec-cfa0-4b5e-9106-fe4762deb990', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 29.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 8, N'D211-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'9e02122f-ac7e-4f48-bdce-fe5108cc9e65', 0 UNION ALL
SELECT 8, N'F208-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b6d8dfa5-c8e9-4a9b-b94b-fe56a89ee63d', 0 UNION ALL
SELECT 8, N'G205-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'2c78fbae-83f2-407c-b341-fe607005c14f', 0 UNION ALL
SELECT 8, N'D108-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd49ed5a5-e87e-4006-87f3-fe706399c424', 0 UNION ALL
SELECT 8, N'M 102', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'a57ef1b1-9e46-4190-bd6b-fe889824a09c', 0 UNION ALL
SELECT 8, N'E303-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'8685a19c-20a6-4885-891e-fea998d56909', 0 UNION ALL
SELECT 8, N'E104-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'463ed1f4-3430-4f7f-9c89-feb44692764d', 0 UNION ALL
SELECT 8, N'M 212', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'c1a1d3b6-b57b-4cc5-8f9d-fedabaeea42b', 0 UNION ALL
SELECT 8, N'F610-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'079bf825-6df8-404d-a619-fee52a1a2acb', 0 UNION ALL
SELECT 9, N'1K', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'03d90922-c6e0-436b-8eab-feea81bf543d', 0 UNION ALL
SELECT 9, N'18B', N'Studio Apartment', N'nirshan', '20150723 08:07:50.047', N'b8d10e2f-65f4-4bc9-9792-fef2eaddfc40', 0 UNION ALL
SELECT 8, N'I402-D', N'Apartment/Bedroom-I402-D', N'nirshan', '20150723 08:06:45.067', N'3e79ec9e-deda-4831-b7b5-fefee2a01607', 0 UNION ALL
SELECT 10, N'F65-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'5c52e85a-3a74-4168-86f0-ff31048363c1', 0 UNION ALL
SELECT 6, N'3339-3341', NULL, N'nirshan', '20150723 08:03:32.660', N'ae995274-09af-4695-9464-ff3e5eb842ac', 0 UNION ALL
SELECT 8, N'M 402-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b0e93979-4fe7-4555-aa03-ff44514c7880', 0 UNION ALL
SELECT 8, N'G111-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd8687717-0ebe-4dbd-8fa9-ff98fb1d4df7', 0 UNION ALL
SELECT 8, N'E304-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f0e7dc67-3fdc-4c34-afaa-ff9f85f0aeed', 0 UNION ALL
SELECT 9, N'15F', N'Deluxe 2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'007cf5b9-6247-4ff8-b134-1352c09ecf73', 0 UNION ALL
SELECT 8, N'E306-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'fe0d2641-7108-4f65-b9d9-135bd9bfa1ed', 0 UNION ALL
SELECT 8, N'L402', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'b97b548f-95d6-4a97-8f21-13a7a41dcc85', 0 UNION ALL
SELECT 8, N'M 510-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e2ad048d-eb2b-4d14-b887-13cd78da5bf8', 0 UNION ALL
SELECT 9, N'10L', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'db5d853f-fcf0-4f4a-96b1-13d60cbd6c8e', 0 UNION ALL
SELECT 8, N'M 408-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'df09a871-0119-4706-865b-13eda21e138c', 0 UNION ALL
SELECT 8, N'E407-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f5eda4f1-0da0-45b3-88e4-141cc193f3ac', 0 UNION ALL
SELECT 7, N'017-1B', N'Apartment - 017-1B', N'nirshan', '20150723 08:05:19.033', N'1703eedf-b14e-4188-b8fe-1422f3d79f21', 0 UNION ALL
SELECT 8, N'A105-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'2d8d52e4-20a5-443c-97c0-1476bc31620a', 0 UNION ALL
SELECT 8, N'M 101', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'691305b7-cfc9-409f-a9cf-1484c8a81ea7', 0 UNION ALL
SELECT 10, N'C33', N'1BR Apartment', N'nirshan', '20150723 08:08:25.727', N'9809ea64-4394-43ab-87b1-148571c91134', 0 UNION ALL
SELECT 8, N'G202-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd5640d90-8bba-4d83-8dcd-14a7020c439c', 0 UNION ALL
SELECT 8, N'M 208-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'285fe9c1-86c9-4146-be51-14b9d766c9b6', 0 UNION ALL
SELECT 9, N'4C', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'fe9e3022-3b1f-4848-9466-14de78e2bab9', 0 UNION ALL
SELECT 8, N'M 404-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b139c304-a01f-495d-92a6-14e3a919a0a0', 0 UNION ALL
SELECT 8, N'F501-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ce03594a-f205-40f9-8e39-152beba7ac1e', 0 UNION ALL
SELECT 9, N'6M', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'6e2ce322-8e68-4c71-883f-156c73c05617', 0 UNION ALL
SELECT 10, N'B30-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'84fabb73-867c-4a76-a4af-1588238104a2', 0 UNION ALL
SELECT 8, N'G209-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f57378e3-2e2c-44ff-92d7-15a07ec6863e', 0 UNION ALL
SELECT 8, N'A203', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'384a7f72-7d40-4d2c-820d-15a1ab715961', 0 UNION ALL
SELECT 8, N'G509-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd013576d-d1e9-4bc2-901c-15a276fb6859', 0 UNION ALL
SELECT 8, N'F604', N'RD Apartment', N'nirshan', '20150723 08:06:45.067', N'cf3c3b18-f59c-40c1-82c0-15b39544e110', 0 UNION ALL
SELECT 10, N'A14-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'563ddcfd-a389-4e67-9d4c-15d83c464fd3', 0 UNION ALL
SELECT 8, N'F304', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'18f4bf14-4d58-4362-88b3-15e5820a72ad', 0 UNION ALL
SELECT 8, N'I510-A', N'Apartment/Bedroom-I510-A', N'nirshan', '20150723 08:06:45.067', N'dc83edea-8ed6-4ce3-9d46-15ee5a58a48a', 0 UNION ALL
SELECT 8, N'B307-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'531af08d-837e-44e4-a927-2bfdb8b14182', 0 UNION ALL
SELECT 8, N'G208', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'e1fb406b-03fd-41aa-b6ef-2c16160cbadf', 0 UNION ALL
SELECT 8, N'G201-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'944e7445-0299-4e32-96c3-2c23cf61d2d0', 0 UNION ALL
SELECT 8, N'I310-B', N'Apartment/Bedroom-I310-B', N'nirshan', '20150723 08:06:45.067', N'b8e3034a-7299-4849-8e0f-2c2e976cc688', 0 UNION ALL
SELECT 6, N'798-800', NULL, N'nirshan', '20150723 08:03:32.660', N'c3ad7c2f-671d-4c30-b526-2c35b7e0938b', 0 UNION ALL
SELECT 8, N'M 209-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'37845232-0f37-4e17-adac-2c6ea65b4977', 0 UNION ALL
SELECT 8, N'F508-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3bf3686a-87f3-4900-968e-2ca17d9cbcae', 0 UNION ALL
SELECT 7, N'024-2D', N'Apartment - 024-2D', N'nirshan', '20150723 08:05:19.033', N'341e7033-eab2-42b9-8fad-2cb2fc65ed39', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 30.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 8, N'I209', N'Apartment/2BR 1BA-I209', N'nirshan', '20150723 08:06:45.067', N'abe0a0dc-5f07-4e73-9a3a-2cb74b756023', 0 UNION ALL
SELECT 8, N'M 206-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'385251fe-a7a8-4f0b-95f6-2cdd71468973', 0 UNION ALL
SELECT 8, N'D306', N'2BR Apartment', N'nirshan', '20150723 08:06:45.067', N'e1ada480-6be6-46a6-83c8-2ce888909e52', 0 UNION ALL
SELECT 8, N'D407-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'20b4107f-3c20-4190-a2b4-2ced1ca97c01', 0 UNION ALL
SELECT 8, N'G305', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'647bd469-60e7-4f8c-aebd-2d28f2cc7c05', 0 UNION ALL
SELECT 8, N'F509-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3d315a4e-ee89-406f-91cb-2d4286ec677d', 0 UNION ALL
SELECT 8, N'A205-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f1007931-8725-427b-b2e7-2d47ec198ea0', 0 UNION ALL
SELECT 6, N'879-881', NULL, N'nirshan', '20150723 08:03:32.660', N'a7c069e8-d8f9-44e6-969f-2d59171987a9', 0 UNION ALL
SELECT 10, N'C34-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'7e01c3b5-e5a0-4b54-967c-2d83e93aa15a', 0 UNION ALL
SELECT 8, N'M 210-A', N'Aprtment/Bedroom', N'nirshan', '20150723 08:06:45.067', N'a799c6f4-593d-4ba3-a911-2d9bc1632421', 0 UNION ALL
SELECT 10, N'E63-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'9c474f90-9025-435b-831f-2da51af45f0c', 0 UNION ALL
SELECT 6, N'3478-3480', NULL, N'nirshan', '20150723 08:03:32.660', N'f016caa9-d5eb-4b36-98a4-2ddc18d53f9b', 0 UNION ALL
SELECT 8, N'F402', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'42365bd7-3d73-43d9-80d9-2e6ca66a2142', 0 UNION ALL
SELECT 8, N'D104-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'8908d60f-2de0-41fb-b5d9-47ccbdcc8033', 0 UNION ALL
SELECT 8, N'G305-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'aa04ef22-0bfb-4f7e-8fec-47d9f197fa47', 0 UNION ALL
SELECT 8, N'A404-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'589dfdcb-f090-4d72-bfe8-480ff8d4d5f9', 0 UNION ALL
SELECT 8, N'I204-C', N'Apartment/Bedroom-I204-C', N'nirshan', '20150723 08:06:45.067', N'5087c45f-106b-49e9-8c7f-4837423624b5', 0 UNION ALL
SELECT 8, N'A203-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ad0523c2-a85c-4ca3-94e6-4841d750cd9b', 0 UNION ALL
SELECT 8, N'D402', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'28955c50-e973-49c7-84c6-484351c9a667', 0 UNION ALL
SELECT 8, N'B306-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'5f4fe9e5-6c0b-48d5-8d92-48473fed05e4', 0 UNION ALL
SELECT 8, N'G505-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'42a9e9f5-8855-48a0-a929-4866699a7a60', 0 UNION ALL
SELECT 8, N'F603-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e25384a2-f815-410b-b5c9-4918805c31aa', 0 UNION ALL
SELECT 10, N'A15-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'c2f7bed9-92c4-4e0e-9b6a-491a9812edc3', 0 UNION ALL
SELECT 8, N'G108', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'21ac0612-5dd6-4c1a-a441-49363fd40a4a', 0 UNION ALL
SELECT 8, N'F606-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'859661a4-4df9-48c1-bc2f-4939a4a45439', 0 UNION ALL
SELECT 8, N'M 302-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'c823d56d-1409-4c97-af1f-493e96b93f5f', 0 UNION ALL
SELECT 8, N'F304-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f14a71d5-aa51-438e-884a-49423a64444c', 0 UNION ALL
SELECT 6, N'691-693', NULL, N'nirshan', '20150723 08:03:32.660', N'201c4dda-4eb0-4827-955c-494252365149', 0 UNION ALL
SELECT 8, N'J 208', N'Office', N'nirshan', '20150723 08:06:45.067', N'caaa1940-e885-44d5-8436-4949e527d1ea', 0 UNION ALL
SELECT 8, N'D410-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'bf9d8fc6-6653-4cfe-bc38-49795e67b04c', 0 UNION ALL
SELECT 8, N'G505-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'93dd2fca-2774-4790-aca8-49856df1d14a', 0 UNION ALL
SELECT 8, N'E209-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'98654a0f-384b-46ae-b5a2-499ae0ece4ba', 0 UNION ALL
SELECT 8, N'B407-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'5319e5f3-0a8e-4f0a-a7d8-49a0b3e21c34', 0 UNION ALL
SELECT 8, N'F308-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ebe2cf97-3795-4704-8af8-4a99820e6423', 0 UNION ALL
SELECT 8, N'F409-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd91d79c4-7fa1-4fcc-bd00-4a9e85fc3775', 0 UNION ALL
SELECT 8, N'D210-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'2d5cd44e-e04a-4d62-a278-5c7861eb3eac', 0 UNION ALL
SELECT 8, N'F308', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'c155c853-7a84-407d-87b3-5c8fc42b4f12', 0 UNION ALL
SELECT 7, N'008-2D', N'Apartment - 008-2D', N'nirshan', '20150723 08:05:19.033', N'a11b43b0-bda9-4c2a-b04e-5ca5a93afeed', 0 UNION ALL
SELECT 8, N'M 407-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'687492aa-25ac-4104-b981-5ccc2a4e23f4', 0 UNION ALL
SELECT 8, N'G402-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'5f26511b-ae9c-48cb-8942-5cedf0cf43cc', 0 UNION ALL
SELECT 9, N'11R', N'1 BR Apartment', N'nirshan', '20150723 08:07:50.047', N'0554132e-f512-4dd3-9969-5cfdecac14d1', 0 UNION ALL
SELECT 8, N'D204', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'e87633bc-17bb-4484-b0cc-5d4e333549fe', 0 UNION ALL
SELECT 9, N'7I', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'f5da4b01-de5e-446b-bf13-5d71aed2cfc3', 0 UNION ALL
SELECT 8, N'E308', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'5f4fc222-122d-431f-940c-5d73e1a64860', 0 UNION ALL
SELECT 8, N'G504-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a32a8262-6b92-46f3-b1aa-5d73ef80bf41', 0 UNION ALL
SELECT 8, N'B205-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3336609f-8b9b-4818-9eb1-5d80d5e0a6ec', 0 UNION ALL
SELECT 8, N'I307-B', N'Apartment/Bedroom-I307-B', N'nirshan', '20150723 08:06:45.067', N'f2e40d09-941a-4322-a02b-5d9c4f7d9347', 0 UNION ALL
SELECT 8, N'E202-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'4fd5f3bc-da3d-4073-bef2-5da251e0d673', 0 UNION ALL
SELECT 8, N'F508-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ecc1f7ea-401a-44ea-b097-5dc4c56c7236', 0 UNION ALL
SELECT 8, N'E307-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b371e399-0990-469b-95aa-5df65b38ee83', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 31.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 8, N'I404-B', N'Apartment/Bedroom-I404-B', N'nirshan', '20150723 08:06:45.067', N'3ce496c5-06e6-4f44-bb3d-5e004961a331', 0 UNION ALL
SELECT 8, N'D309-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'c9417bbc-27af-4505-b2fe-5e222c129458', 0 UNION ALL
SELECT 6, N'3458-3460', NULL, N'nirshan', '20150723 08:03:32.660', N'b956aec9-1681-494b-b357-5e412f608aea', 0 UNION ALL
SELECT 10, N'F-68', N'1BR Apartment', N'nirshan', '20150723 08:08:25.727', N'21d65f2b-1f4c-46bd-85b3-5f2d6652270a', 0 UNION ALL
SELECT 8, N'E310-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a3962ba2-a117-4138-8e77-5f2f2f9fe9ca', 0 UNION ALL
SELECT 8, N'G305-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'2434f8ef-73ea-4d10-b0d2-5faa728332f6', 0 UNION ALL
SELECT 8, N'M 501', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'a2e17fc9-c066-470d-b7af-71103a405cce', 0 UNION ALL
SELECT 8, N'J 104', N'Mail Room', N'nirshan', '20150723 08:06:45.067', N'8816e1a2-4840-4458-aead-7119bdbd21b4', 0 UNION ALL
SELECT 10, N'A11-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'182c085a-69da-4e93-8489-717669f70cb5', 0 UNION ALL
SELECT 8, N'D310-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'358dbc00-ef04-4e79-9bc2-717d44350c09', 0 UNION ALL
SELECT 8, N'A205', N'4 BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'1c812ff3-45d9-4cbc-9032-718d3edcd8ac', 0 UNION ALL
SELECT 8, N'B404-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3b372ecd-06e0-4874-b0cd-71c0c1f06907', 0 UNION ALL
SELECT 8, N'D403', N'1BR Apartment', N'nirshan', '20150723 08:06:45.067', N'cfe9a5b5-02d4-4f1b-8c1f-71cea4e4d028', 0 UNION ALL
SELECT 8, N'I103-A', N'Apartment/Bedroom-I103-A', N'nirshan', '20150723 08:06:45.067', N'6e24df12-2e21-47e6-9227-7209d2d18671', 0 UNION ALL
SELECT 8, N'F302-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'592d079d-12ad-4a28-80ab-720bb2b19d28', 0 UNION ALL
SELECT 8, N'B307-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'78a17412-a71a-49fe-8f0e-72376e4ccf44', 0 UNION ALL
SELECT 9, N'9C', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'e9053e2c-5298-4768-8dfd-726c6abd6526', 0 UNION ALL
SELECT 8, N'K 208', N'Laundry Room', N'nirshan', '20150723 08:06:45.067', N'b9789072-826a-473a-b2ef-726fcda5b352', 0 UNION ALL
SELECT 8, N'F612-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'cbf093b1-86ad-4a8a-bdfd-72a179fced9f', 0 UNION ALL
SELECT 8, N'F210', N'2 BR 1 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'1d5db131-e4e4-43e4-bc03-72b8c6df61e0', 0 UNION ALL
SELECT 10, N'B25', N'2BR Apartment', N'nirshan', '20150723 08:08:25.727', N'9c6ebfa1-ef8d-4d66-bf5b-72d19d7bfaf2', 0 UNION ALL
SELECT 8, N'D401-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'bce403e1-3e1e-444c-adbf-72dc0c1346c9', 0 UNION ALL
SELECT 8, N'G301-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'4a169cae-d7bb-48a3-b4fd-72e56644f433', 0 UNION ALL
SELECT 8, N'M 407-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd3133e5d-8f48-408a-be2d-72e9a2dc9793', 0 UNION ALL
SELECT 9, N'9P', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'86a6a955-4cfe-4332-bddc-73067b9e5263', 0 UNION ALL
SELECT 8, N'E405-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'8017363e-d608-4059-a95c-73118eba9c1c', 0 UNION ALL
SELECT 8, N'M 203-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f38a75e4-0988-47da-a9e8-731e22570d6e', 0 UNION ALL
SELECT 8, N'A303-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3d999239-c4a9-4c3b-a9b1-733cbe58c043', 0 UNION ALL
SELECT 9, N'6O', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'733bc0db-6eb8-415d-a24d-7349808802de', 0 UNION ALL
SELECT 8, N'K 105-B', N'Pool', N'nirshan', '20150723 08:06:45.067', N'31e88828-4327-415e-a24b-7366422520ee', 0 UNION ALL
SELECT 9, N'6A', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'ad313588-e0e2-42d9-9a48-762716e47405', 0 UNION ALL
SELECT 8, N'D310-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd7385f2c-dbcf-445a-b454-762dfa1228fe', 0 UNION ALL
SELECT 9, N'2N', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'ccf5e3a0-c742-42e4-b7a3-76520fc40bd4', 0 UNION ALL
SELECT 8, N'G401-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd01e1e1a-7bc3-4223-86c7-766cc5c61fdc', 0 UNION ALL
SELECT 9, N'3K', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'0e4eeea2-18d7-40e8-8d13-766eed40a2c9', 0 UNION ALL
SELECT 8, N'I301-D', N'Apartment/Bedroom-I301-D', N'nirshan', '20150723 08:06:45.067', N'9f6fd9df-3f7d-4710-8339-7685ba072878', 0 UNION ALL
SELECT 8, N'G501', N'RD Apartment', N'nirshan', '20150723 08:06:45.067', N'c078ee02-57ed-4cdd-aa7d-7688c79a44da', 0 UNION ALL
SELECT 9, N'5F', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'83466a59-050e-4f68-9034-769675fdd053', 0 UNION ALL
SELECT 8, N'B104-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd5796254-2b68-4dc9-9dda-769fc2431beb', 0 UNION ALL
SELECT 8, N'F605-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ffcd875c-428b-4e37-82a6-76af19bdc923', 0 UNION ALL
SELECT 8, N'A104-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6c10cd44-cd8e-42e7-9733-76b466f0dc8f', 0 UNION ALL
SELECT 8, N'A205-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'9384a14f-a689-4e94-8607-76fa563d7129', 0 UNION ALL
SELECT 8, N'E406-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'96bcd78a-b0ae-478b-a1db-7706dc3a70dc', 0 UNION ALL
SELECT 8, N'E307-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b060a7bc-aa24-43e1-b043-772409e8fa74', 0 UNION ALL
SELECT 8, N'A106', N'2 BR Apartment', N'nirshan', '20150723 08:06:45.067', N'1a13fb2c-f537-4d03-959e-773249764a9a', 0 UNION ALL
SELECT 8, N'F302', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'ac63ff20-f2ce-442c-a6f0-774e97d6af51', 0 UNION ALL
SELECT 8, N'I209-B', N'Apartment/Bedroom-I209-B', N'nirshan', '20150723 08:06:45.067', N'6e70a1d3-4859-4486-98dc-7757e848e27a', 0 UNION ALL
SELECT 8, N'F604-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e142563b-03d0-41d0-8cec-779efaa21131', 0 UNION ALL
SELECT 8, N'G407', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'3380006f-4c75-405e-af33-77a01394ce62', 0 UNION ALL
SELECT 9, N'20A', N'Leasing Office', N'nirshan', '20150723 08:07:50.047', N'4ea03f46-6303-4051-8dd2-77b7bef0e68f', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 32.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 8, N'E401-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3f1c627e-52fb-4570-8c8c-77d83a02de57', 0 UNION ALL
SELECT 10, N'D41-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'6d568a3b-671f-4b10-928e-77e019e1f674', 0 UNION ALL
SELECT 8, N'B302-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'5bab1a7b-d874-49c2-8a05-77e5f7d0716d', 0 UNION ALL
SELECT 9, N'7J', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'e471347e-774c-4923-92d5-78418c59652f', 0 UNION ALL
SELECT 8, N'A404-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'039e4232-9632-4888-93b7-784c0fb62318', 0 UNION ALL
SELECT 8, N'M 608-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b6b37aa8-c596-4ac8-be7c-787edce41a2f', 0 UNION ALL
SELECT 8, N'D104', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'21448620-1887-4e75-949b-c1e01a35ca4c', 0 UNION ALL
SELECT 8, N'D106-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a6530dad-46af-4689-96a4-c1ee134a3151', 0 UNION ALL
SELECT 8, N'D102-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3548b8e6-7404-4cb4-8556-c2054229cdc0', 0 UNION ALL
SELECT 8, N'G203-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd8ea6c7f-c021-487e-9a9b-c21d8d26e1f9', 0 UNION ALL
SELECT 8, N'D310-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd0fd0ec8-de7c-4297-8f26-c22382e96b30', 0 UNION ALL
SELECT 10, N'D43-2-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'94b20736-ccd5-4922-9c8c-c224f9bce045', 0 UNION ALL
SELECT 8, N'M 303', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'1c9bf734-505f-4593-8fc4-c2583ca590b1', 0 UNION ALL
SELECT 8, N'M 510-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd5408883-0d24-4d05-a501-c2711ef0cb98', 0 UNION ALL
SELECT 9, N'3S', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'83e229e7-61a4-42ac-9ed0-c27bc5685600', 0 UNION ALL
SELECT 8, N'M 403-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3456dad7-99d0-4d37-9df3-c29b2e92eeb3', 0 UNION ALL
SELECT 8, N'E103', N'1BR Apartment', N'nirshan', '20150723 08:06:45.067', N'1d530d68-2879-4229-8d4f-c2a5236b4d66', 0 UNION ALL
SELECT 8, N'D101-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6824f309-bb95-4f51-af03-c2db805a40ba', 0 UNION ALL
SELECT 6, N'3324-3326', NULL, N'nirshan', '20150723 08:03:32.660', N'93310f2a-4623-482b-872a-c305bbb63dc1', 0 UNION ALL
SELECT 8, N'E308-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b0d5e5f1-a817-42f4-bb5e-c314181f0f56', 0 UNION ALL
SELECT 9, N'2F', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'0c511512-924c-4b8a-97f7-c3868109a6d3', 0 UNION ALL
SELECT 8, N'F406-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b67eeeff-6ce1-45cf-896a-c39557b5aad1', 0 UNION ALL
SELECT 9, N'12J', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'1311b0d4-16ce-4982-b552-c397af28d3f8', 0 UNION ALL
SELECT 8, N'I208-D', N'Apartment/Bedroom-I208-D', N'nirshan', '20150723 08:06:45.067', N'9b3b3d48-424a-4a97-b2ad-c39bd27f93b2', 0 UNION ALL
SELECT 8, N'G405-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'9145a3dd-7e7d-4ccb-b105-c3e29ce82df7', 0 UNION ALL
SELECT 8, N'E210', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'85b11ec7-853c-4f52-9b20-c404fb37b94a', 0 UNION ALL
SELECT 10, N'E64-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'92399cf6-9df7-4752-82ab-c40d09425f2a', 0 UNION ALL
SELECT 8, N'M 305', N'2 BR 1 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'ede82a2c-daaf-4cf2-bfb3-c45fbae5e891', 0 UNION ALL
SELECT 8, N'F510-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'8b59f89a-2439-4500-95d5-c4639f845a98', 0 UNION ALL
SELECT 10, N'A2-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'7df1faa5-4465-4557-99c5-c4860738f2ba', 0 UNION ALL
SELECT 9, N'2H', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'9ae238aa-a8a8-4c83-923c-c4a431d9518d', 0 UNION ALL
SELECT 8, N'A101-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'cd23616e-3122-46ee-8c65-c8effcff4b7d', 0 UNION ALL
SELECT 9, N'8A', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'2677f762-073f-4e36-aeec-c9401b5f54b8', 0 UNION ALL
SELECT 8, N'M 208', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'0f16b211-0acd-4a96-b766-c954f2216a4e', 0 UNION ALL
SELECT 8, N'G308-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a748cca5-ed1b-47a6-98d1-c95b1afe7965', 0 UNION ALL
SELECT 9, N'12R', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'ec944452-1d12-428a-90fb-c95ff244f557', 0 UNION ALL
SELECT 8, N'M 605-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ad389e3e-cc28-45c0-9503-c975a3636fd4', 0 UNION ALL
SELECT 8, N'A307-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'072651d2-5e13-4dfd-8398-c98948620234', 0 UNION ALL
SELECT 8, N'I503', N'Apartment/ 4BR 2BA-I503', N'nirshan', '20150723 08:06:45.067', N'65fbf7a7-60e7-491a-b324-c9926361f7a9', 0 UNION ALL
SELECT 8, N'L304', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'1f8c50bb-fa1f-4a3f-9849-c9a6b46c83a4', 0 UNION ALL
SELECT 8, N'F507-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'09a63f66-4390-444c-ab5c-c9bda3adf938', 0 UNION ALL
SELECT 8, N'E407-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'32e5b562-18a8-4292-9c7b-c9c6e0ce5b4b', 0 UNION ALL
SELECT 8, N'I203', N'Apartment/4BR 2BA-I203', N'nirshan', '20150723 08:06:45.067', N'c3e0346b-abeb-42fc-b0d3-c9eda066a00c', 0 UNION ALL
SELECT 8, N'F508-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'43ba2584-0773-45a3-9d93-c9fdf1c8db2c', 0 UNION ALL
SELECT 8, N'L202', N'RD Apartment', N'nirshan', '20150723 08:06:45.067', N'7eb26fd1-23bc-4706-a977-ca22a3f8b692', 0 UNION ALL
SELECT 8, N'F505-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'8c8022fe-708d-410a-9011-ca2b635f85c5', 0 UNION ALL
SELECT 10, N'B17', N'2BR Apartment', N'nirshan', '20150723 08:08:25.727', N'9a9393ab-70e4-4aca-b1a9-ca2df02a9f17', 0 UNION ALL
SELECT 8, N'M 506-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'c4c5a429-d6d4-4828-a156-ca3299d0d788', 0 UNION ALL
SELECT 8, N'M 401-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'c524d045-2f5b-40d2-a323-ca3d30ba39ca', 0 UNION ALL
SELECT 8, N'M 208-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'9004b99c-4d71-40b7-9d6f-ca550d7fb157', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 33.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 8, N'B107-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'cb1dc74c-195b-4738-8570-ca69aabe91e2', 0 UNION ALL
SELECT 9, N'1A', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'cae1f1f5-879a-4865-8123-ca78d9718ba2', 0 UNION ALL
SELECT 8, N'A406-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'65a0da1d-1683-43be-88c4-ca835866610d', 0 UNION ALL
SELECT 9, N'12F', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'5fe2b787-bcae-47e2-bead-ca986b600e9b', 0 UNION ALL
SELECT 10, N'A6', N'2BR 2BA Apartment', N'nirshan', '20150723 08:08:25.727', N'61e88aec-ba2e-42d3-b73b-cabef1184d46', 0 UNION ALL
SELECT 6, N'3329-3333', NULL, N'nirshan', '20150723 08:03:32.660', N'42794d1c-38f1-477a-92e9-caccf767e6f1', 0 UNION ALL
SELECT 8, N'G108-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'4bcbfb47-bfdd-45b0-b644-eaf4f8b240cd', 0 UNION ALL
SELECT 8, N'I407-A', N'Apartment/Bedroom-I407-A', N'nirshan', '20150723 08:06:45.067', N'5088ae1d-7ce2-45ac-b3db-eb1e08491af3', 0 UNION ALL
SELECT 8, N'M 210-B', N'Aprtment/Bedroom', N'nirshan', '20150723 08:06:45.067', N'65bf28ce-cb14-40fe-a133-eb4a461eb911', 0 UNION ALL
SELECT 8, N'I102-B', N'Apartment/Bedroom-I102-B', N'nirshan', '20150723 08:06:45.067', N'f4ec1633-071c-4102-8ee7-eb4f7dd8aa06', 0 UNION ALL
SELECT 8, N'F408', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'38864294-89ff-4ee6-b9ef-eb4fe7046d4a', 0 UNION ALL
SELECT 8, N'I402', N'Apartment/ 4BR 2BA-I402', N'nirshan', '20150723 08:06:45.067', N'682a9b56-c184-4cb8-a81c-eb7d128076f0', 0 UNION ALL
SELECT 8, N'I205-A', N'Apartment/Bedroom-I205-A', N'nirshan', '20150723 08:06:45.067', N'78f72474-ae3d-493a-980c-eb7f525b7ca4', 0 UNION ALL
SELECT 8, N'F401-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'df4b00b1-28a4-4fe0-b9f9-eb852ccb542f', 0 UNION ALL
SELECT 8, N'E206-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'1dd24b5a-9d0c-4474-b4b3-eba7dd2fab90', 0 UNION ALL
SELECT 8, N'B301-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f93fe637-3dc0-4daf-bb43-ebc3920a8b20', 0 UNION ALL
SELECT 10, N'A5', N'2BR 2BA Apartment', N'nirshan', '20150723 08:08:25.727', N'f5fe06d5-f687-4e14-b743-ebcc1c7caab4', 0 UNION ALL
SELECT 8, N'F303-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'45e7675e-11ca-4cdb-9d9b-ebe844733377', 0 UNION ALL
SELECT 8, N'M 410-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd89b6e75-b2e1-42d1-bb5d-ebf94ed35ecf', 0 UNION ALL
SELECT 8, N'F304-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'81926b1f-9408-433a-9e61-ebffca8d13cb', 0 UNION ALL
SELECT 8, N'F408-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'4e1b9ee6-121b-4c52-9a69-ec0202955795', 0 UNION ALL
SELECT 8, N'F201-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'27189753-e722-476d-a004-ec0c31d28a72', 0 UNION ALL
SELECT 6, N'3421-3423', NULL, N'nirshan', '20150723 08:03:32.660', N'fe795d66-4d7f-4ed6-9181-ec6276533781', 0 UNION ALL
SELECT 7, N'009-1B', N'Apartment - 009-1B', N'nirshan', '20150723 08:05:19.033', N'a7f6faeb-b5d3-4cd0-a21b-ec99300878a9', 0 UNION ALL
SELECT 8, N'B206-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'87480860-0a67-4c3e-80a7-ecb7910b7faf', 0 UNION ALL
SELECT 9, N'1G', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'7d698c29-1e75-40a9-8751-ecbe96a5c13a', 0 UNION ALL
SELECT 8, N'G305-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e804e72d-bbff-4201-96f9-ecc0d2d1a41b', 0 UNION ALL
SELECT 8, N'D209-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f50b6fc6-7fef-42a3-8688-ecd235d09413', 0 UNION ALL
SELECT 8, N'M 406', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'd5acd339-6092-4b2e-9f15-ecf64f4acc68', 0 UNION ALL
SELECT 8, N'M 408-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b9f73355-59af-4725-a414-ecfbfd9bf37d', 0 UNION ALL
SELECT 8, N'F503', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'a285195a-3b19-4828-8758-ed17e386660b', 0 UNION ALL
SELECT 9, N'5P', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'62da6e9d-3db4-42ef-b9f9-ed19106e09c9', 0 UNION ALL
SELECT 10, N'C40-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'4cfa4707-d6a6-4049-8fb9-ed2a0dd90975', 0 UNION ALL
SELECT 10, N'B29-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'452675f7-973b-4b54-84e5-114608424096', 0 UNION ALL
SELECT 8, N'F601-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'420708de-a028-4eef-b9e6-1159a9c789eb', 0 UNION ALL
SELECT 10, N'A1-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'35cc23c4-3de7-4454-8e03-1178d05e4a1a', 0 UNION ALL
SELECT 6, N'3349-3451', NULL, N'nirshan', '20150723 08:03:32.660', N'9571cfca-d3a0-44f5-8903-11a94fd0f5c8', 0 UNION ALL
SELECT 8, N'I105-A', N'Apartment/Bedroom-I105-A', N'nirshan', '20150723 08:06:45.067', N'a66154d8-0214-4d01-9d1b-11abe45723e3', 0 UNION ALL
SELECT 8, N'E201-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b0344223-3ee3-4c75-8173-11d34a08cbeb', 0 UNION ALL
SELECT 8, N'D205-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'70921375-4452-4b78-af69-11d7375f474d', 0 UNION ALL
SELECT 8, N'D101', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'44abf2a7-3d89-490a-8be2-122c28bc181d', 0 UNION ALL
SELECT 9, N'3I', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'4b942842-5944-4786-b891-124acfd096c2', 0 UNION ALL
SELECT 8, N'E205', N'2BR Apartment', N'nirshan', '20150723 08:06:45.067', N'369981a6-f965-435c-9fb1-1251931a3787', 0 UNION ALL
SELECT 8, N'D108-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'bab9808d-ffda-4cad-987a-129cbe62d36c', 0 UNION ALL
SELECT 8, N'M 507', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'3742e05e-ad02-4106-9a17-12aa9da93f17', 0 UNION ALL
SELECT 8, N'A106-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'1103d573-93cf-4665-8fc9-12c1d0099da8', 0 UNION ALL
SELECT 8, N'I307-C', N'Apartment/Bedroom-I307-C', N'nirshan', '20150723 08:06:45.067', N'341e2bb7-739f-403b-984a-12d3af7d6e59', 0 UNION ALL
SELECT 8, N'G504-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'80bbd963-68d1-4ad6-9e23-12d7c7b8e02d', 0 UNION ALL
SELECT 9, N'6B', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'7a1baa9a-78ec-45ec-bb15-13326177eff9', 0 UNION ALL
SELECT 8, N'F409', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'b7759e1f-2ec5-41ad-95a1-134148daa20c', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 34.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 8, N'F201-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'20627d89-dd18-42f6-8d7f-4bf52079dd1c', 0 UNION ALL
SELECT 8, N'D303-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'52fb465f-0c19-48f2-9f6d-4c0f3fbeeca7', 0 UNION ALL
SELECT 8, N'M 310-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'16f786e0-8194-4916-b79c-4c37c98178e6', 0 UNION ALL
SELECT 9, N'9E', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'e52b1e42-a1b0-4fb4-920a-4c3d81cc8336', 0 UNION ALL
SELECT 8, N'M 401-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3377197e-dfea-4d6d-83d4-4c3f1024bb9b', 0 UNION ALL
SELECT 6, N'3472-3474', NULL, N'nirshan', '20150723 08:03:32.660', N'14726029-acb2-4081-bed8-4c40d0b893c7', 0 UNION ALL
SELECT 8, N'B307-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6f73653c-4cb6-4ed8-8a06-4c723af01a91', 0 UNION ALL
SELECT 7, N'001-1A', N'Apartment - 001-1A', N'nirshan', '20150723 08:05:19.033', N'52f00e30-4c1c-499d-aea7-4cb1e8be7cae', 0 UNION ALL
SELECT 8, N'G508-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'50d2f3b1-b893-45a9-951e-4cc142c70212', 0 UNION ALL
SELECT 8, N'B404', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'ec250486-484d-4399-ac75-4cd8df6c43dc', 0 UNION ALL
SELECT 8, N'A305-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ff6d196a-7274-4f06-84ae-4ce758e4ec0f', 0 UNION ALL
SELECT 9, N'4P', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'b21aec69-15f0-4c74-b28d-4cf78f8827bb', 0 UNION ALL
SELECT 8, N'F207', N'2 BR 1 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'0a848468-c8a0-41ce-a3a7-4d4aa7538ac9', 0 UNION ALL
SELECT 7, N'023-1A', N'Apartment - 023-1A', N'nirshan', '20150723 08:05:19.033', N'92660d92-f100-461d-83b5-4d725fe05286', 0 UNION ALL
SELECT 10, N'A3-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'c59b30a0-7ba4-4fe8-80ab-4d7b0c1e9f70', 0 UNION ALL
SELECT 8, N'D206-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b719ebde-21f9-4bb6-a041-4d85aad7a712', 0 UNION ALL
SELECT 8, N'A306-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'901dd93d-8385-4a97-84da-4e10fc3f2317', 0 UNION ALL
SELECT 8, N'D106', N'2BR Apartment', N'nirshan', '20150723 08:06:45.067', N'509bef6b-8a5c-40e7-9cef-4e2b5dd8a8c9', 0 UNION ALL
SELECT 9, N'8B', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'8fac55a2-9e92-41d5-a45f-4e94ac9bb677', 0 UNION ALL
SELECT 8, N'M 504-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f11802a9-cba6-4922-a533-4e9900e5020f', 0 UNION ALL
SELECT 9, N'18C', N'Studio Apartment', N'nirshan', '20150723 08:07:50.047', N'3d64eea8-5fb1-44b4-b20e-9d608f1255c6', 0 UNION ALL
SELECT 8, N'A202-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'51dfc5ea-f40e-4a56-9f39-9d77780b3cf0', 0 UNION ALL
SELECT 10, N'D42-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'f7b5914f-ea8c-4f00-aada-9d83dfe329ae', 0 UNION ALL
SELECT 8, N'G208-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'0493727f-3427-4838-9b8b-9d9a17114d3a', 0 UNION ALL
SELECT 8, N'G104-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'76954f67-1adf-4b48-b24a-9ddb46ddaf2b', 0 UNION ALL
SELECT 6, N'896-898', NULL, N'nirshan', '20150723 08:03:32.660', N'41e88300-e741-4bc8-9f01-9dfa50db1b68', 0 UNION ALL
SELECT 9, N'8G', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'42e2d8a3-3589-4453-81fe-9e52d12120cc', 0 UNION ALL
SELECT 8, N'B402-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'2bdd6852-0dc7-4639-928c-9e846b4b0d9a', 0 UNION ALL
SELECT 8, N'G511-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'51b86636-4026-4610-af62-9e97e5565c60', 0 UNION ALL
SELECT 8, N'E302', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'84f1a0c7-7f0c-42b6-a38f-9eb7ab8eba93', 0 UNION ALL
SELECT 8, N'I310-A', N'Apartment/Bedroom-I310-A', N'nirshan', '20150723 08:06:45.067', N'66473242-0001-4d4a-9f4b-9f1560af3ccd', 0 UNION ALL
SELECT 8, N'L503', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'652c315d-db7e-419a-be81-9f651d3599f4', 0 UNION ALL
SELECT 8, N'E102-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'43298875-81bd-4463-814d-9f792644c239', 0 UNION ALL
SELECT 8, N'I410-B', N'Apartment/Bedroom-I410-B', N'nirshan', '20150723 08:06:45.067', N'8f9e0d2d-3cd8-452c-809d-9f8498d2568a', 0 UNION ALL
SELECT 8, N'B407-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3ad48e25-8afd-4d9b-b587-9f9482761fbf', 0 UNION ALL
SELECT 8, N'B402-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6f10fb5f-8124-488c-8dee-9f9c2bd0801c', 0 UNION ALL
SELECT 8, N'B404-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'51b8c67c-f27f-4af9-8ba0-9fab828f7ea8', 0 UNION ALL
SELECT 8, N'G402', N'2 BR 1 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'645944b9-9361-484f-b675-9fb64e987422', 0 UNION ALL
SELECT 8, N'E108-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6525ccea-c4eb-45d7-a758-cb2a2aa2d9a7', 0 UNION ALL
SELECT 8, N'G309-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b924356d-2845-4174-a548-cb3123f2f4b4', 0 UNION ALL
SELECT 8, N'K 105-A', N'Pool', N'nirshan', '20150723 08:06:45.067', N'76b2eb38-dbe1-46fa-aaf1-cb35b5324895', 0 UNION ALL
SELECT 8, N'B402-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a3568943-aa6b-4a32-b084-cb867713b541', 0 UNION ALL
SELECT 8, N'F303-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'7d61b3a5-c0eb-4351-bc1c-cba91f976ca9', 0 UNION ALL
SELECT 8, N'I404-C', N'Apartment/Bedroom-I404-C', N'nirshan', '20150723 08:06:45.067', N'bc6691fd-e39b-4075-97b7-cbb349798c39', 0 UNION ALL
SELECT 7, N'018-2C', N'Apartment - 018-2C', N'nirshan', '20150723 08:05:19.033', N'3f0cb92d-af84-46a5-9035-cbc0e001f5ac', 0 UNION ALL
SELECT 10, N'A16', N'2BR Apartment', N'nirshan', '20150723 08:08:25.727', N'194164c7-78f8-474c-8c52-cbfe7235d211', 0 UNION ALL
SELECT 8, N'D211-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3a8f1694-8a41-441d-a7f4-cc011df982bb', 0 UNION ALL
SELECT 9, N'7C', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'54780746-7529-43d8-aef7-cc027167e45b', 0 UNION ALL
SELECT 8, N'B103-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'5c93b93c-9b83-4978-abbf-cc1114f41764', 0 UNION ALL
SELECT 9, N'10I', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'dffa5066-b0c9-4211-8ab4-cc4591af83d6', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 35.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 10, N'C37', N'1BR Apartment', N'nirshan', '20150723 08:08:25.727', N'f2122076-1248-4756-8d4c-cc5dbc977a3e', 0 UNION ALL
SELECT 8, N'L106-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e63c6b4f-872f-41a3-ab84-cc65727eb7ac', 0 UNION ALL
SELECT 8, N'M 203', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'033f81f6-bd91-4fdb-b53a-cc7adfcafff5', 0 UNION ALL
SELECT 8, N'E403', N'1BR Apartment', N'nirshan', '20150723 08:06:45.067', N'031c4117-9a3a-436a-b603-cc92e35ec49e', 0 UNION ALL
SELECT 10, N'D55-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'889bafa6-0303-449d-8346-ccc9633896d8', 0 UNION ALL
SELECT 8, N'M 208-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'8bdcb29c-9ddd-41ff-a1fd-ccfa032ce83d', 0 UNION ALL
SELECT 8, N'J 118', N'Office', N'nirshan', '20150723 08:06:45.067', N'9c723085-82f9-46e6-8ab4-cd18794f8c48', 0 UNION ALL
SELECT 8, N'F502-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6a8ee9eb-eacd-473a-8038-cd5cbb59d272', 0 UNION ALL
SELECT 7, N'015-1B', N'Apartment - 015-1B', N'nirshan', '20150723 08:05:19.033', N'9db05859-5832-4951-8d90-cd649423aea6', 0 UNION ALL
SELECT 8, N'F404-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'764e1b17-2741-4984-95b9-cd984e62832a', 0 UNION ALL
SELECT 8, N'K 110', N'Serving Pantry', N'nirshan', '20150723 08:06:45.067', N'0b96821b-6d05-43cc-a29d-cda489f101fb', 0 UNION ALL
SELECT 8, N'A107', N'1 BR Apartment', N'nirshan', '20150723 08:06:45.067', N'21aeb4dc-3314-455d-a803-ce0deffe51a0', 0 UNION ALL
SELECT 8, N'I105-D', N'Apartment/Bedroom-I105-D', N'nirshan', '20150723 08:06:45.067', N'bdea2832-73b3-46a7-9d44-ce6cf2da3872', 0 UNION ALL
SELECT 10, N'B26', N'2BR Apartment', N'nirshan', '20150723 08:08:25.727', N'8368a897-ba99-46ef-926b-ce73893db72a', 0 UNION ALL
SELECT 9, N'12E', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'd2079bbf-f3a3-49f0-9bf1-ce7f403f8949', 0 UNION ALL
SELECT 8, N'I101', N'Apartment/ 4BR 2BA-I101', N'nirshan', '20150723 08:06:45.067', N'c61892fb-ebac-4a38-a9e5-ce878092405b', 0 UNION ALL
SELECT 9, N'5D', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'2b84563c-13b8-45a5-a1e0-ceb5e2c20fec', 0 UNION ALL
SELECT 8, N'B208-C', N'Apartment/Bedroom- B208-C', N'nirshan', '20150723 08:06:45.067', N'80ab7497-fc35-4d41-a3bb-cede48285bba', 0 UNION ALL
SELECT 8, N'B106', N'4BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'94d43dd5-d6d1-485d-ac18-cee997a948c2', 0 UNION ALL
SELECT 9, N'17D', N'Studio Apartment', N'nirshan', '20150723 08:07:50.047', N'f8beec63-2540-4341-890e-cef7d1bf6e36', 0 UNION ALL
SELECT 10, N'B23', N'2BR Apartment', N'nirshan', '20150723 08:08:25.727', N'45163cf8-0688-47e5-b81d-cf1e0f5377fb', 0 UNION ALL
SELECT 8, N'L209', N'RD Apartment', N'nirshan', '20150723 08:06:45.067', N'2afa4925-505e-4b28-913c-cf44360d5aed', 0 UNION ALL
SELECT 8, N'D204-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ea4ddff3-f7f7-47a1-9270-cf618e251077', 0 UNION ALL
SELECT 8, N'B202-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'5f923a6e-856e-480d-ae08-cfa42977c117', 0 UNION ALL
SELECT 8, N'B304-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'feae5847-c1b1-4639-98a9-cfbe3ac2cbd9', 0 UNION ALL
SELECT 6, N'818-820', NULL, N'nirshan', '20150723 08:03:32.660', N'9d08f0a1-d286-4fd5-ab7c-cfca14c40430', 0 UNION ALL
SELECT 8, N'G308-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'2b7f33d3-3e6f-4d0d-a7e3-cfda32e56c4b', 0 UNION ALL
SELECT 9, N'6J', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'd76175bb-7a59-49b2-bf3c-cfeeeef68b63', 0 UNION ALL
SELECT 9, N'12N', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'e2c9894a-87a2-4730-ad10-cffc8d808849', 0 UNION ALL
SELECT 10, N'D48-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'ffc8e834-4f53-4c3e-9802-d00bda7dc988', 0 UNION ALL
SELECT 8, N'J 119C', N'Mechanical Room', N'nirshan', '20150723 08:06:45.067', N'26055c04-1338-4881-ac01-d00d7030f71b', 0 UNION ALL
SELECT 8, N'F303-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'fb11f411-1670-443c-a20b-738e1b2bfa58', 0 UNION ALL
SELECT 8, N'E306-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'1f9b5e05-cd21-4160-a4f5-73ba01e2cd78', 0 UNION ALL
SELECT 8, N'I204-A', N'Apartment/Bedroom-I204-A', N'nirshan', '20150723 08:06:45.067', N'5d00fd3c-8918-4ae9-8943-73dea220471e', 0 UNION ALL
SELECT 8, N'F307-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'55ef394a-7984-40e3-b665-74017ae9ef34', 0 UNION ALL
SELECT 9, N'11E', N'1 BR Apartment', N'nirshan', '20150723 08:07:50.047', N'697f5bec-ab13-46f8-8e1f-7407ddc95088', 0 UNION ALL
SELECT 9, N'5E', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'63253406-569e-4d02-a549-7414cfed020f', 0 UNION ALL
SELECT 8, N'E309-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'93e60c59-a4ea-4765-a8d9-7428a1fc7325', 0 UNION ALL
SELECT 8, N'I401-D', N'Apartment/Bedroom-I401-D', N'nirshan', '20150723 08:06:45.067', N'04ec5952-a5e3-4e68-8c3d-743389c85474', 0 UNION ALL
SELECT 6, N'3436-3438', NULL, N'nirshan', '20150723 08:03:32.660', N'83f38848-41e7-4f2f-a09a-74360435af4e', 0 UNION ALL
SELECT 10, N'A3', N'2BR 2BA Apartment', N'nirshan', '20150723 08:08:25.727', N'2fcc572a-d5a6-46a0-a7cc-74931f1379e2', 0 UNION ALL
SELECT 10, N'E62', N'1BR Apartment', N'nirshan', '20150723 08:08:25.727', N'46ca9842-ec4a-47d9-9bc2-74add6ebdeda', 0 UNION ALL
SELECT 10, N'G73-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'0035e38b-b08a-4c78-9cad-7584af04b2dd', 0 UNION ALL
SELECT 6, N'3480-3488', NULL, N'nirshan', '20150723 08:03:32.660', N'7e303167-0849-410b-99b8-759ae88bc033', 0 UNION ALL
SELECT 8, N'F502', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'ac902ea0-be3b-4734-9d86-75b1639a0164', 0 UNION ALL
SELECT 10, N'D44', N'2BR 2BA Apartment', N'nirshan', '20150723 08:08:25.727', N'1dc41435-39dd-403b-a5b0-75cc50fb9d93', 0 UNION ALL
SELECT 8, N'K 208-A', N'Room/Storage', N'nirshan', '20150723 08:06:45.067', N'8fb11702-8db3-4369-9038-75d14fdda871', 0 UNION ALL
SELECT 8, N'M 608-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'87b041bd-781d-4568-9d47-75e5288a7d32', 0 UNION ALL
SELECT 8, N'E203', N'1BR Apartment', N'nirshan', '20150723 08:06:45.067', N'f6ae87c3-a7f6-4a70-b60d-75f0f91470a2', 0 UNION ALL
SELECT 10, N'C39', N'1BR Apartment', N'nirshan', '20150723 08:08:25.727', N'c481b53a-efc7-4fa2-b9a1-76016cc96591', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 36.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 8, N'M 205', N'2BR 1BA', N'nirshan', '20150723 08:06:45.067', N'd31bc146-4a4c-42ce-b6e2-eed2301bd828', 0 UNION ALL
SELECT 10, N'D46-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'b9c4a267-e04a-42af-bfcf-ef0816011ebd', 0 UNION ALL
SELECT 8, N'A302', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'64e448e6-1a95-42f1-b51a-ef21ad6962ac', 0 UNION ALL
SELECT 8, N'I408-D', N'Apartment/Bedroom-I408-D', N'nirshan', '20150723 08:06:45.067', N'19ca4563-5d6e-4af7-8e02-ef514ef05544', 0 UNION ALL
SELECT 8, N'E308-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'41ef98c4-4951-4b56-a90d-ef7822b77caa', 0 UNION ALL
SELECT 8, N'M308-C', N'Apartment/Bedroom-M308-C', N'nirshan', '20150723 08:06:45.067', N'22578fa8-bf22-4ba0-ba11-efa8f137feb7', 0 UNION ALL
SELECT 8, N'B201-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'0e4a4256-e7f6-4664-b1a8-efcef33f77d1', 0 UNION ALL
SELECT 8, N'D103-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'56bc3f9d-5e72-4d2a-8b03-f07d53c3d744', 0 UNION ALL
SELECT 8, N'I505-D', N'Apartment/Bedroom-I505-D', N'nirshan', '20150723 08:06:45.067', N'e015f0a9-883d-424d-8617-f0854773c639', 0 UNION ALL
SELECT 8, N'M 512-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'4c074bf6-87e8-45cd-9ee1-f08ee1d9e8c9', 0 UNION ALL
SELECT 9, N'11L', N'1 BR Apartment', N'nirshan', '20150723 08:07:50.047', N'f7452fba-d860-401a-adf0-f09b45dad3db', 0 UNION ALL
SELECT 7, N'020-1B', N'Apartment - 020-1B', N'nirshan', '20150723 08:05:19.033', N'ea272d65-fef4-446f-921e-f0a6e2b3207a', 0 UNION ALL
SELECT 8, N'E211-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'07a66023-27b2-4d99-bd23-f0b3c777e360', 0 UNION ALL
SELECT 8, N'M 308-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'5f2afe6c-538c-4639-8e36-f102ed1f7c7e', 0 UNION ALL
SELECT 7, N'017-2C', N'Apartment - 017-2C', N'nirshan', '20150723 08:05:19.033', N'd0204ceb-81c6-4701-a704-f1487b06af1c', 0 UNION ALL
SELECT 10, N'E61-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'370fdad4-4bd7-4818-a6f5-f162ce41b125', 0 UNION ALL
SELECT 10, N'D55', N'2BR Apartment', N'nirshan', '20150723 08:08:25.727', N'4ea9162b-7f9d-473d-adff-f1aaf68cd940', 0 UNION ALL
SELECT 8, N'B303-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'1868c39f-b32e-478c-a780-f1b6af62ccf5', 0 UNION ALL
SELECT 9, N'8D', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'8245c5d5-a6f6-4d02-83d9-f1c26fa662dc', 0 UNION ALL
SELECT 7, N'012-1A', N'Apartment - 012-1A', N'nirshan', '20150723 08:05:19.033', N'13a6fb3a-4a4f-42ff-9757-f202075d343a', 0 UNION ALL
SELECT 8, N'G301-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'4d8bea87-5042-4cc7-8cce-f21d969d1fb9', 0 UNION ALL
SELECT 8, N'M 406-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd8c11ab5-f7cd-4b7d-a676-f232e430d7dc', 0 UNION ALL
SELECT 6, N'3395-3397', NULL, N'nirshan', '20150723 08:03:32.660', N'fa5b9ccf-c27a-4684-a553-f294f1ee7cf8', 0 UNION ALL
SELECT 7, N'016-2C', N'Apartment - 016-2C', N'nirshan', '20150723 08:05:19.033', N'b2dead9c-eef7-46ab-adad-f2a3c643e0de', 0 UNION ALL
SELECT 8, N'I405', N'Apartment/ 4BR 2BA-I405', N'nirshan', '20150723 08:06:45.067', N'027e9447-6ee2-4423-950f-f2aa5f9c82b4', 0 UNION ALL
SELECT 8, N'F310-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f6963904-b7a0-4921-8f37-f2b54de16ff9', 0 UNION ALL
SELECT 8, N'L106-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'656a4fa4-7216-4f7f-ba19-f2dbc24f9ac3', 0 UNION ALL
SELECT 8, N'G508-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6feb21f6-63ac-4263-a1b8-f2e911f6a165', 0 UNION ALL
SELECT 8, N'D103-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'645d0210-7546-452f-9fb8-f2fd5fb34d26', 0 UNION ALL
SELECT 8, N'G308-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f028d6f6-78ea-47b5-8e8a-f303f0c07512', 0 UNION ALL
SELECT 8, N'A109', N'2 BR Apartment', N'nirshan', '20150723 08:06:45.067', N'cb997d57-7371-49f3-9b22-f307cd12f97c', 0 UNION ALL
SELECT 8, N'L106-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ebd775fe-0895-47b1-8829-f3678ba01aff', 0 UNION ALL
SELECT 8, N'G209-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ca7e171f-85d4-420d-8dd2-f3aecee6963c', 0 UNION ALL
SELECT 8, N'A404', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'5bca58d1-2e6e-48ee-a4d9-f3d5cabb473d', 0 UNION ALL
SELECT 8, N'M 404', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'af0dec48-724a-4e9c-8e12-1bdec770836e', 0 UNION ALL
SELECT 9, N'8I', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'c8168fd5-6b7b-4d8b-97f6-1be74dda640c', 0 UNION ALL
SELECT 9, N'4H', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'cd6d7c1d-7276-4070-b485-1c0597894f09', 0 UNION ALL
SELECT 9, N'2P', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'fd949557-f569-4f35-842f-1c12055b68d6', 0 UNION ALL
SELECT 8, N'A303', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'089026a0-64c4-40c3-94cf-1c1c069b02c0', 0 UNION ALL
SELECT 8, N'M 509-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'fc00aca1-a476-4770-8612-1c22e32d3cac', 0 UNION ALL
SELECT 8, N'B103-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'2129a000-d8aa-41f1-a18c-1c2dbb47e066', 0 UNION ALL
SELECT 7, N'018-1B', N'Apartment - 018-1B', N'nirshan', '20150723 08:05:19.033', N'9b58a274-4dd3-4a3e-af5e-1c43fbdbb363', 0 UNION ALL
SELECT 8, N'A304-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'00e52131-17ea-4dfd-aef1-1c672d6063f7', 0 UNION ALL
SELECT 8, N'D110-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'25ed48b4-9e95-41c2-9589-1c73b2bb77ad', 0 UNION ALL
SELECT 8, N'J 123', N'Poster Room', N'nirshan', '20150723 08:06:45.067', N'ffabc2cc-7534-45e9-a9c7-1c9d51f0d928', 0 UNION ALL
SELECT 8, N'E204-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e0510abb-96c2-42da-859c-1cc0a5979fd5', 0 UNION ALL
SELECT 8, N'A304-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'1324a823-da25-4874-8e72-1cf4e20e4243', 0 UNION ALL
SELECT 8, N'E410', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'5cfb01df-16c2-4e84-9a04-1d502ea910f1', 0 UNION ALL
SELECT 8, N'M 308-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'fbaa3786-84a2-49f4-a2f0-1d5833295b8d', 0 UNION ALL
SELECT 8, N'M 409', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'd89df6bc-b306-4b1d-ab65-1d5bde466c1e', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 37.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 8, N'M 509', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'e231a44d-5a69-4294-bf4f-1d69540c6522', 0 UNION ALL
SELECT 8, N'B301-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'92e8288c-c7d3-4301-bd4f-1d6c04d3e0be', 0 UNION ALL
SELECT 8, N'E305-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'89c27ae4-60e2-4f43-af17-1da6e8bee17c', 0 UNION ALL
SELECT 9, N'12O', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'ba12e72f-c0ce-43e7-a23d-1ddef53356a3', 0 UNION ALL
SELECT 8, N'M 506-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'26c59bd4-32a0-4bd1-875d-1dfaae0a0d4d', 0 UNION ALL
SELECT 8, N'I409', N'Apartment/2BR 1BA- I409', N'nirshan', '20150723 08:06:45.067', N'1abbd498-179f-4635-be52-1e3cfaabe95d', 0 UNION ALL
SELECT 8, N'B206-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'5009f507-6629-4fc4-a291-1e42fd156134', 0 UNION ALL
SELECT 8, N'F204-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a2f4011a-f028-4641-ac0d-a7e5d8fe4884', 0 UNION ALL
SELECT 8, N'F309', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'f88c0e28-350e-403d-92e9-a7f3692b4401', 0 UNION ALL
SELECT 8, N'E202', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'35c5597b-0ee7-4d35-8da2-a7f96b00fa84', 0 UNION ALL
SELECT 8, N'B105', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'863a1e98-3ece-4b6a-97bb-a81159163dfa', 0 UNION ALL
SELECT 8, N'L104-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'33921116-c08d-462f-985f-a8163b6de098', 0 UNION ALL
SELECT 8, N'E209-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a43a2e26-d3b5-4de9-a3b5-a83650203d83', 0 UNION ALL
SELECT 9, N'15A', N'Deluxe 2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'9118fdb6-07b0-4929-852f-a8c2f071a32e', 0 UNION ALL
SELECT 8, N'G108-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'025aaaa5-84bd-488d-becc-a8c9d2086326', 0 UNION ALL
SELECT 8, N'I508', N'Apartment/2BR 1BA- I508', N'nirshan', '20150723 08:06:45.067', N'1b55fb5b-44cb-4129-a81a-a8d61ab41bc6', 0 UNION ALL
SELECT 8, N'F607-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'9e0dbd6a-2238-450a-a6ac-a90ca894a48e', 0 UNION ALL
SELECT 8, N'F607', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'40c32749-8b8f-47b4-b77a-a94d72b1e094', 0 UNION ALL
SELECT 8, N'F504-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'4cdfd831-650b-498d-87d7-a9519b94f323', 0 UNION ALL
SELECT 8, N'F307-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ecb7a70a-4463-4f7b-9b15-a95d1125b604', 0 UNION ALL
SELECT 8, N'D405-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b5afd556-9e6c-4e73-aa32-a9639e82bdf2', 0 UNION ALL
SELECT 9, N'12P', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'aca81113-0970-475a-afcd-a9792363570f', 0 UNION ALL
SELECT 6, N'3408-3416', NULL, N'nirshan', '20150723 08:03:32.660', N'4ed0b674-2107-438b-8290-a98c8daea3df', 0 UNION ALL
SELECT 8, N'A405-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'0844b1dc-9040-4a39-90b7-a98d9bfa6bcd', 0 UNION ALL
SELECT 8, N'J 311', N'Restroom', N'nirshan', '20150723 08:06:45.067', N'c9c76b50-4b4e-465d-a618-a98e6340e622', 0 UNION ALL
SELECT 8, N'G309', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'49b78ca7-f285-4d29-af61-a9922098e6c4', 0 UNION ALL
SELECT 8, N'D401', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'a2d9fac2-597c-465e-9652-a9fa3b970fd9', 0 UNION ALL
SELECT 8, N'E210-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3ad262bb-335c-4530-a013-aa01e57133ab', 0 UNION ALL
SELECT 8, N'F612-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'46f7501f-46ee-4b5c-9b2c-aa2228207822', 0 UNION ALL
SELECT 8, N'M 507-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'261be755-6980-489e-be14-aa3b9d7d6e4d', 0 UNION ALL
SELECT 8, N'J 203', N'Closet', N'nirshan', '20150723 08:06:45.067', N'2a883e1e-1913-464c-a709-aa5be37e51aa', 0 UNION ALL
SELECT 8, N'I303-D', N'Apartment/Bedroom-I303-D', N'nirshan', '20150723 08:06:45.067', N'0089952c-346e-41c1-b9ad-aa85274acd5e', 0 UNION ALL
SELECT 8, N'G511', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'd83ab353-878b-425e-828b-3fc2d5ecf046', 0 UNION ALL
SELECT 8, N'E309', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'0f3a6cee-e883-4ced-b344-4024b891e569', 0 UNION ALL
SELECT 10, N'D43-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'365abda2-66d0-4e86-a40f-40264891b7b7', 0 UNION ALL
SELECT 8, N'M 208-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'06f21b1a-da8b-4a3a-be1b-403141a4898e', 0 UNION ALL
SELECT 8, N'G502', N'2 BR 1 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'9fb48e54-17b4-4b5b-bc5e-403dd3e47548', 0 UNION ALL
SELECT 9, N'9S', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'15eaeb25-794f-4adb-a24e-40b1a930dcd4', 0 UNION ALL
SELECT 8, N'D305-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'20284a79-7d0c-4aaa-afb5-40eaefb10cc3', 0 UNION ALL
SELECT 8, N'B201', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'6b702224-3474-44e8-991c-410dca89bab2', 0 UNION ALL
SELECT 8, N'A305-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6b4ca6cd-5915-4e21-abf7-412783d84180', 0 UNION ALL
SELECT 8, N'B103-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f52646f7-31e9-4218-b888-4167c61a55ce', 0 UNION ALL
SELECT 8, N'J 115', N'Office', N'nirshan', '20150723 08:06:45.067', N'2020b335-69c9-467d-a73e-418cdc1d0e96', 0 UNION ALL
SELECT 9, N'7Q', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'29cc424e-2631-4b6a-be59-419088a12202', 0 UNION ALL
SELECT 8, N'L108', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'dc0ff50e-8548-47d6-b406-41bda4b29954', 0 UNION ALL
SELECT 8, N'D301-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'13ed3893-1ef9-4b49-a44d-41e83b4d9997', 0 UNION ALL
SELECT 9, N'11M', N'1 BR Apartment', N'nirshan', '20150723 08:07:50.047', N'd83da3e4-5a6a-4377-8b61-4254114d4b7e', 0 UNION ALL
SELECT 8, N'D409-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'952e6c40-cdd5-46b9-8c17-429568e7abeb', 0 UNION ALL
SELECT 8, N'D409-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'4322a6b2-c6e3-43dd-b673-42ad52c620c5', 0 UNION ALL
SELECT 10, N'B26-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'4d9c4daf-2404-4f36-82fe-42cb1d4317e9', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 38.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 8, N'F203-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'07371bdb-765a-4992-90a5-42d47bd2ce83', 0 UNION ALL
SELECT 10, N'B25-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'f5cdd7c9-e730-470c-8b98-42e353a9a0ad', 0 UNION ALL
SELECT 10, N'F-66', N'1BR Apartment', N'nirshan', '20150723 08:08:25.727', N'fe2992e5-239b-40f2-8687-bf2c2a754d42', 0 UNION ALL
SELECT 8, N'G407-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'677f9d3e-da1e-48d7-bf1c-bf6b895247c6', 0 UNION ALL
SELECT 8, N'A401-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'1fc42a44-917d-4867-b015-bf9065d27245', 0 UNION ALL
SELECT 8, N'A102-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'9f80ccad-d147-48e9-94e2-bf93b7d3b52c', 0 UNION ALL
SELECT 8, N'G509-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'4c4b0ab9-1794-49ea-994f-bf9ec0798352', 0 UNION ALL
SELECT 8, N'D310-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'8625c942-4a40-46fb-8a7e-bfbcd1bfcbae', 0 UNION ALL
SELECT 10, N'A8-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'6e29e1bb-2a04-47e4-92c2-bfc580b88a3c', 0 UNION ALL
SELECT 8, N'A207', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'8cb43727-6922-4e48-8d67-bfdb3c9acab2', 0 UNION ALL
SELECT 8, N'I308-D', N'Apartment/Bedroom-I308-D', N'nirshan', '20150723 08:06:45.067', N'03acf9a7-6f62-4fdc-b9cd-bff5e44ff886', 0 UNION ALL
SELECT 8, N'A407', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'3cc096d3-ab90-4d07-812b-bff8bc9221bf', 0 UNION ALL
SELECT 10, N'B20', N'2BR 2BA Apartment', N'nirshan', '20150723 08:08:25.727', N'380a20b2-26dd-4620-8b88-c00581716619', 0 UNION ALL
SELECT 8, N'F206-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'92b05d90-1a0a-4bbb-a845-c02a4364bd96', 0 UNION ALL
SELECT 8, N'F306-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'2349ef59-b4c9-4e10-88ba-c04432ae7443', 0 UNION ALL
SELECT 6, N'3401-3407', NULL, N'nirshan', '20150723 08:03:32.660', N'7a25b446-7d9f-4e8a-8b8f-c06b4cb7874f', 0 UNION ALL
SELECT 7, N'012-1B', N'Apartment - 012-1B', N'nirshan', '20150723 08:05:19.033', N'b1467d6a-6a39-458a-80f4-c07e19d8684a', 0 UNION ALL
SELECT 8, N'A407-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'03f133ba-06ac-4b8a-bcf1-c0b025188b5a', 0 UNION ALL
SELECT 8, N'F306-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e9f3edb1-ab9e-43e9-ac02-c0ccae7c82f6', 0 UNION ALL
SELECT 8, N'M 503-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6f006c61-5fc7-4947-8e35-c0e8981855bc', 0 UNION ALL
SELECT 10, N'C33-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'af5a8870-df86-4aa0-824e-c126c69be2d5', 0 UNION ALL
SELECT 10, N'A10', N'2BR Apartment', N'nirshan', '20150723 08:08:25.727', N'54ab2235-31e4-481f-9e8a-c140a9540cda', 0 UNION ALL
SELECT 9, N'7M', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'cf0e7cc4-b4ac-47a2-ad0f-c14ec92a0e18', 0 UNION ALL
SELECT 8, N'I203-B', N'Apartment/Bedroom-I203-B', N'nirshan', '20150723 08:06:45.067', N'3d58c20e-f277-4084-9e43-c16f96ba40cf', 0 UNION ALL
SELECT 8, N'G107-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'8046bb18-717a-43c1-968e-c16ff5924a14', 0 UNION ALL
SELECT 9, N'5I', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'79f5850a-2ba4-442f-8aee-c1951bd3ab5b', 0 UNION ALL
SELECT 8, N'L306', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'9e91073d-c7da-4b9c-9521-c1960774a674', 0 UNION ALL
SELECT 8, N'D401-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'1aacdbfa-773f-4dfd-b373-c1b9a363335a', 0 UNION ALL
SELECT 9, N'9O', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'e507e864-1ec5-4076-9e81-c1dcc6769856', 0 UNION ALL
SELECT 8, N'F402-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3b270b86-1a26-4ef9-a237-9afbb06892b7', 0 UNION ALL
SELECT 8, N'M 204-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'4295eb36-2d14-4294-a5fb-9b1ffeebca55', 0 UNION ALL
SELECT 9, N'8S', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'bc6312b0-88c0-4a31-9e01-9b3689a65a57', 0 UNION ALL
SELECT 8, N'M 307-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'7e3f05e0-2fb2-4a70-a193-9b9768515db7', 0 UNION ALL
SELECT 8, N'D201', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'14a65d8d-1ae4-4603-a940-9b9b814a301b', 0 UNION ALL
SELECT 8, N'M 204-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a9b8922f-3184-451d-af70-9b9f2e96bc4b', 0 UNION ALL
SELECT 10, N'D42', N'2 BR Apartment', N'nirshan', '20150723 08:08:25.727', N'047ef89c-1738-4e57-94b9-9ba1989091a8', 0 UNION ALL
SELECT 9, N'15B', N'Deluxe 2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'63c51c0f-6c58-449a-acb4-9c6355d8f04e', 0 UNION ALL
SELECT 8, N'B201-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e3e9170c-e4cd-49f2-9dad-9c67bb55e5b9', 0 UNION ALL
SELECT 8, N'M 404-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'2ebebd93-048c-4648-aa12-9c6d35e6157d', 0 UNION ALL
SELECT 8, N'M 302-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'312c4d0b-75b6-4ffa-b2f2-9c83a555cfa0', 0 UNION ALL
SELECT 7, N'015-1A', N'Apartment - 015-1A', N'nirshan', '20150723 08:05:19.033', N'f31f659b-b7bf-4144-9a71-9c929f21618c', 0 UNION ALL
SELECT 9, N'13B', N'2 BR Apartment', N'nirshan', '20150723 08:07:50.047', N'ac4390e0-e934-4b42-b663-9cb1d54e3ca4', 0 UNION ALL
SELECT 8, N'F309-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'7328b0d8-9cc8-437e-9ab2-9cb602fe3639', 0 UNION ALL
SELECT 8, N'I305-D', N'Apartment/Bedroom-I305-D', N'nirshan', '20150723 08:06:45.067', N'6cf6f98c-4217-4bc5-aeaf-9cf18a61d7fa', 0 UNION ALL
SELECT 8, N'E302-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'eacc5fe1-3f64-4eaa-ad3d-9d1e041cf42e', 0 UNION ALL
SELECT 9, N'12K', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'3897b9dc-c91c-4972-b6f7-5423ccab4e19', 0 UNION ALL
SELECT 8, N'F506-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd32bc5af-f149-4e5e-820e-543348a5bf59', 0 UNION ALL
SELECT 8, N'G308', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'c1f32459-8bf0-43d2-bc49-547694172f4f', 0 UNION ALL
SELECT 10, N'B21-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'cd49b97e-653a-4844-b755-54981b38bbeb', 0 UNION ALL
SELECT 10, N'F-72', N'1BR Apartment', N'nirshan', '20150723 08:08:25.727', N'4031c5c2-365b-4438-83c8-54ee0579c141', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 39.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 9, N'8H', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'74baf785-61a7-42a0-a51c-54f26de54871', 0 UNION ALL
SELECT 8, N'B103-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b2b4d6ea-7597-4cdf-86ae-5500cae4c596', 0 UNION ALL
SELECT 8, N'L104-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'0a1e951c-292a-45b0-8b05-5509ee574c70', 0 UNION ALL
SELECT 9, N'8L', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'33137811-b3bd-4811-8c2f-5539f565c6e6', 0 UNION ALL
SELECT 8, N'D207', N'2BR Apartment', N'nirshan', '20150723 08:06:45.067', N'7986f8e1-6c5e-407c-87a4-559e21548b72', 0 UNION ALL
SELECT 8, N'I405-A', N'Apartment/Bedroom-I405-A', N'nirshan', '20150723 08:06:45.067', N'6cb22d95-56d0-40ec-9328-559eb94c4fbc', 0 UNION ALL
SELECT 9, N'10S', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'22907e21-66b1-48eb-8c4e-55a2c697ae24', 0 UNION ALL
SELECT 9, N'8M', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'20c83ebd-ca2d-4b7c-bc0d-55bad00a7d4b', 0 UNION ALL
SELECT 8, N'D208-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'fe843968-5cd6-42cc-9dd7-55d1b18ea3e6', 0 UNION ALL
SELECT 8, N'F402-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'14c035ab-3718-44e0-a57c-55d7145eedd2', 0 UNION ALL
SELECT 8, N'M 510', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'64257990-4c8e-4a3b-9a79-55db2b6ad889', 0 UNION ALL
SELECT 8, N'F209-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'82c4f4f8-dac2-4357-a9e1-55f6a32665ea', 0 UNION ALL
SELECT 10, N'A14', N'2BR Apartment', N'nirshan', '20150723 08:08:25.727', N'20a9c0b8-c2fc-4c9f-b972-561269e5d66d', 0 UNION ALL
SELECT 8, N'B202-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b337a8b7-45cb-492b-9c1a-562ecaa36186', 0 UNION ALL
SELECT 8, N'B208-D', N'Apartment/Bedroom- B208-D', N'nirshan', '20150723 08:06:45.067', N'de752211-b5b9-4c9a-b211-56324d43ca82', 0 UNION ALL
SELECT 8, N'I310', N'Apartment/ 4BR 2BA-I310', N'nirshan', '20150723 08:06:45.067', N'9b9a05ff-38f5-4280-ac82-56484d77ebc1', 0 UNION ALL
SELECT 10, N'D41', N'2 BR Apartment', N'nirshan', '20150723 08:08:25.727', N'7cc98f71-f11b-4092-b64b-566ee7ae620e', 0 UNION ALL
SELECT 8, N'I301', N'Apartment/ 4BR 2BA-I301', N'nirshan', '20150723 08:06:45.067', N'e4c28eb6-4593-45b0-bbf7-568b138aab72', 0 UNION ALL
SELECT 8, N'I405-C', N'Apartment/Bedroom-I405-C', N'nirshan', '20150723 08:06:45.067', N'8a3a1616-9903-43e0-95d9-569f68d568f5', 0 UNION ALL
SELECT 8, N'D301-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f18c0130-5f30-4eb6-a48a-56c612b8c5fe', 0 UNION ALL
SELECT 8, N'F306-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e66b24d2-57b6-4a93-8041-56e623b3fcc4', 0 UNION ALL
SELECT 7, N'003-1A', N'Apartment - 003-1A', N'nirshan', '20150723 08:05:19.033', N'55f6520a-5617-4a31-ba2c-5713f61a4417', 0 UNION ALL
SELECT 8, N'B202-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'2f74c3c5-3504-45ff-b3ae-7cd62e5907e1', 0 UNION ALL
SELECT 8, N'D405-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'76c3e7c8-e82f-42f1-ad5a-7cdb3b344490', 0 UNION ALL
SELECT 8, N'K 205', N'Room', N'nirshan', '20150723 08:06:45.067', N'97534f95-b196-4476-8786-7cdb77011fa7', 0 UNION ALL
SELECT 8, N'G503-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'036a0670-6a5a-4c6c-a992-7d15193c3cbe', 0 UNION ALL
SELECT 8, N'D404-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'616d5b1c-60f0-4755-87c1-7d196d240986', 0 UNION ALL
SELECT 8, N'F204-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'4def7bd9-bf6e-4872-8fba-6a3292286853', 0 UNION ALL
SELECT 8, N'B205-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'75c084db-ac2b-4276-b895-6a37bb4a3827', 0 UNION ALL
SELECT 8, N'I504-D', N'Apartment/Bedroom-I504-D', N'nirshan', '20150723 08:06:45.067', N'5b8af7c4-91b6-4fcb-befb-6a66675b1589', 0 UNION ALL
SELECT 8, N'G408-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b31e4c28-26c8-4dc8-89c3-6a6be742fe82', 0 UNION ALL
SELECT 8, N'I407-B', N'Apartment/Bedroom-I407-B', N'nirshan', '20150723 08:06:45.067', N'2b688dee-6ca3-48aa-99f8-6a71a691e977', 0 UNION ALL
SELECT 8, N'G202', N'2 BR 1 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'1d6bf57e-cf6c-4f5a-a28d-6a7d6f5b5fa4', 0 UNION ALL
SELECT 8, N'E308-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'602b9227-eb02-4ebe-b569-6ac5b3ee0e44', 0 UNION ALL
SELECT 9, N'6D', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'cc68903c-64ed-41fc-b8e5-6adc450deefb', 0 UNION ALL
SELECT 8, N'D401-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'aa32a216-a08a-4b9a-8668-086989424372', 0 UNION ALL
SELECT 8, N'I109-A', N'Apartment/Bedroom-I109-A', N'nirshan', '20150723 08:06:45.067', N'709f72ee-bddc-40fe-9697-086ea19cb605', 0 UNION ALL
SELECT 8, N'G205-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'14d639b4-53b6-4b91-9fb0-089029a6d04d', 0 UNION ALL
SELECT 8, N'M 409-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e5ef5e8b-193f-4146-abe0-08968d26b68c', 0 UNION ALL
SELECT 8, N'G407-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'9dd8ff77-e0a2-4c8a-81d8-08b61bc1866c', 0 UNION ALL
SELECT 8, N'G404-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'930feb7b-1311-4cac-b0ce-08ebc1a93383', 0 UNION ALL
SELECT 6, N'3359-3361', NULL, N'nirshan', '20150723 08:03:32.660', N'af8c5f7c-4fe2-41a4-9df8-08fbce2adf01', 0 UNION ALL
SELECT 7, N'009-2C', N'Apartment - 009-2C', N'nirshan', '20150723 08:05:19.033', N'12bc3e5e-3918-48d2-8ae6-0907b2638efa', 0 UNION ALL
SELECT 8, N'M 403', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'5c9bfbb8-7a65-4a7a-b9ff-093e4ca4be4a', 0 UNION ALL
SELECT 8, N'M 403-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e8a7abe1-6c66-4223-be4b-096650c67140', 0 UNION ALL
SELECT 8, N'J 124', N'Office', N'nirshan', '20150723 08:06:45.067', N'3786744e-7a7c-4a0e-8435-097ec2545d9c', 0 UNION ALL
SELECT 8, N'I204-D', N'Apartment/Bedroom-I204-D', N'nirshan', '20150723 08:06:45.067', N'88f41d7b-dc1b-43be-ac29-0999a06a5efd', 0 UNION ALL
SELECT 8, N'F309-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'44da616d-54f5-495f-b843-09cb37c2ced3', 0 UNION ALL
SELECT 8, N'A105-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'405b47c5-d3ea-4da2-89ce-09cef6a8e555', 0 UNION ALL
SELECT 6, N'3454-3456', NULL, N'nirshan', '20150723 08:03:32.660', N'385f3561-417b-4bae-be7f-0a0f78d8410e', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 40.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 6, N'3475-3479', NULL, N'nirshan', '20150723 08:03:32.660', N'b2dfe54e-5e76-4ab2-a208-0a2d63c6157e', 0 UNION ALL
SELECT 8, N'G108-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ee0ce3f2-daf9-4d3e-b6cd-0a6d8beb666b', 0 UNION ALL
SELECT 10, N'F-69-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'876000a7-15d9-4dc4-8d6c-0a71e3c498f2', 0 UNION ALL
SELECT 8, N'D203-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'c2618c59-2c9b-4360-adc4-0a847fc4d275', 0 UNION ALL
SELECT 8, N'M 503-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'19849123-fabb-4b94-bb3a-0a8f1f266f09', 0 UNION ALL
SELECT 8, N'G404', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'ea5c2696-7cfd-4ce0-bdd6-0a9f7c1b19df', 0 UNION ALL
SELECT 8, N'G408-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'74a9246d-fc1e-4ec4-9f76-0aabad02698c', 0 UNION ALL
SELECT 6, N'841-843', NULL, N'nirshan', '20150723 08:03:32.660', N'cb42d1f8-b9da-41dc-bf83-0ab27f4c0bf8', 0 UNION ALL
SELECT 8, N'B304-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ae9ad896-6b45-4779-b28f-0aec7e882fb8', 0 UNION ALL
SELECT 8, N'F209', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'5a823a39-1a3e-4c13-b00b-0b2890f2258f', 0 UNION ALL
SELECT 8, N'E408-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'987f9bde-a476-46a4-8b32-0b363768fd77', 0 UNION ALL
SELECT 10, N'B17-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'699bf461-cd59-4af5-84db-0b3e505f6743', 0 UNION ALL
SELECT 10, N'F-70-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'30740e8a-43d5-4535-9884-0b3f1c2abd59', 0 UNION ALL
SELECT 10, N'B24-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'4189cc56-b3c1-4ae8-9d46-8fb761d7c88d', 0 UNION ALL
SELECT 8, N'M 409-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'c00a2c15-4c52-4723-9812-8ff28206a3cc', 0 UNION ALL
SELECT 8, N'I106', N'Apartment/RD-I106', N'nirshan', '20150723 08:06:45.067', N'e826f085-3b74-496c-82ab-8ff8af02d884', 0 UNION ALL
SELECT 8, N'B305-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'31ff5fd5-2065-4b6a-9b8c-903fe50b759a', 0 UNION ALL
SELECT 8, N'M 403-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'fc2727bb-fb37-4b48-8721-90706463a4b3', 0 UNION ALL
SELECT 8, N'B401-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'9ca1a374-ef65-4d51-bcd5-d3f1005181ed', 0 UNION ALL
SELECT 8, N'F503-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'7725ae7c-99d2-4949-9725-d42c2c9b6ac5', 0 UNION ALL
SELECT 8, N'G503-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'0f94a1b6-b78d-4aea-bd59-d46a440bc68a', 0 UNION ALL
SELECT 8, N'I402-B', N'Apartment/Bedroom-I402-B', N'nirshan', '20150723 08:06:45.067', N'67978b46-9043-462e-80ba-d48d1a6e3272', 0 UNION ALL
SELECT 9, N'16F', N'Deluxe 2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'4e3fa9f9-d95d-4116-8aa5-d49b616c9851', 0 UNION ALL
SELECT 8, N'I309-A', N'Apartment/Bedroom-I309-A', N'nirshan', '20150723 08:06:45.067', N'39475932-7e88-494d-aeec-d4ab7283e196', 0 UNION ALL
SELECT 9, N'2S', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'e3371da7-8ead-4789-8bf6-d4e2a7c13b21', 0 UNION ALL
SELECT 8, N'F208-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ac5a94c5-2b0a-4391-99cd-d4e7f1b4dfaa', 0 UNION ALL
SELECT 8, N'L108-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'21cc369a-daee-4c99-a589-d4f8d5aa8bc7', 0 UNION ALL
SELECT 8, N'A105-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'c1d846b9-b06a-4a34-90d0-d50731167e1a', 0 UNION ALL
SELECT 8, N'F605-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e1f3b996-9ff2-4b1f-90f2-d50754b9ea94', 0 UNION ALL
SELECT 8, N'E107', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'cd638031-da28-458b-beb8-d55240a60b25', 0 UNION ALL
SELECT 8, N'L508', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'ce60a1ef-f376-4924-8017-d5647d997c21', 0 UNION ALL
SELECT 8, N'I409-B', N'Apartment/Bedroom-I409-B', N'nirshan', '20150723 08:06:45.067', N'a35dcda2-64b1-4705-99c4-d5938525b675', 0 UNION ALL
SELECT 9, N'13F', N'2 BR Apartment', N'nirshan', '20150723 08:07:50.047', N'306cc5cd-ac45-4781-977f-d59728226a0b', 0 UNION ALL
SELECT 8, N'F206', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'12157c26-2fc0-4aad-9c64-d59e61aaacf4', 0 UNION ALL
SELECT 9, N'10O', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'1d0498b8-3875-4f46-bec6-d59fc0aa7e26', 0 UNION ALL
SELECT 8, N'M 509-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'c94b7be5-5035-4d45-94a0-d5aebefe1904', 0 UNION ALL
SELECT 6, N'3327-3329', NULL, N'nirshan', '20150723 08:03:32.660', N'b07aa9a7-5c2e-4f5d-ab02-d5b400407f9d', 0 UNION ALL
SELECT 8, N'M 606-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'753f3599-a5da-451f-a1d1-d5ca2bb77a2b', 0 UNION ALL
SELECT 8, N'D101-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'9e2df5a9-3ced-494a-a378-d5e5464317a5', 0 UNION ALL
SELECT 9, N'1Q', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'1b2b63e9-0064-4d6c-9b1d-d60ef6d197bd', 0 UNION ALL
SELECT 8, N'E208-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'747c6648-92db-4a84-9a3b-d61a135e5ae9', 0 UNION ALL
SELECT 8, N'G303-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'81a798ea-62fb-4e6c-aed5-d62c64231e3f', 0 UNION ALL
SELECT 8, N'F403-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'7bb1f6bc-545b-456c-a4cc-d633dc51db3c', 0 UNION ALL
SELECT 7, N'015-2D', N'Apartment - 015-2D', N'nirshan', '20150723 08:05:19.033', N'5644a82c-11a9-41ca-a51e-d63468f189b0', 0 UNION ALL
SELECT 9, N'4F', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'712cf6dc-e2b0-4e13-93f4-d6350dbeb44f', 0 UNION ALL
SELECT 9, N'9J', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'29ba297a-d8c5-4a87-a3b1-d636f209a0e8', 0 UNION ALL
SELECT 8, N'F203-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a65f3ca9-e3df-4b51-8a7d-d6397eb4c99e', 0 UNION ALL
SELECT 8, N'E302-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b0abe99f-8448-4dff-a4cb-d66a5f019dbe', 0 UNION ALL
SELECT 9, N'6R', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'a10ec455-d8e4-46ab-afa6-d6acc3bf8014', 0 UNION ALL
SELECT 9, N'19A', N'Studio Apartment', N'nirshan', '20150723 08:07:50.047', N'3b9c504a-437c-4c3d-8f09-d6b6dde5da20', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 41.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 8, N'A207-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'05b5bf07-ff66-4413-947d-d6d2ff8cdc61', 0 UNION ALL
SELECT 8, N'D106-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'5af6b66e-3e1b-470f-8c7f-e4542523f93a', 0 UNION ALL
SELECT 6, N'747-749', NULL, N'nirshan', '20150723 08:03:32.660', N'65b3b8d1-b5a4-42cf-8370-e45698506eeb', 0 UNION ALL
SELECT 8, N'M 210', N'Aprtment/Bedroom', N'nirshan', '20150723 08:06:45.067', N'ea482f23-dc46-4864-a000-e46d3d4df391', 0 UNION ALL
SELECT 10, N'B32-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'317ce4e6-c11c-41ad-ab2e-e49da2de1f6f', 0 UNION ALL
SELECT 9, N'19F', N'Studio Apartment', N'nirshan', '20150723 08:07:50.047', N'aa512455-dd4a-4038-a562-e4b2b5bbe36b', 0 UNION ALL
SELECT 8, N'B401', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'd1367374-200a-474f-9c0e-e4d5dca0db18', 0 UNION ALL
SELECT 8, N'E204-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'cdef4b30-1216-44d5-9892-e4d5fbc82029', 0 UNION ALL
SELECT 8, N'I505-A', N'Apartment/Bedroom-I505-A', N'nirshan', '20150723 08:06:45.067', N'20ee599a-2441-4cca-b89b-e4db002d8859', 0 UNION ALL
SELECT 8, N'F610-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a87b5b57-8c9e-4731-b435-e4f1706fbe0f', 0 UNION ALL
SELECT 10, N'E61', N'1BR Apartment', N'nirshan', '20150723 08:08:25.727', N'7b8feba6-31be-4eaf-b91f-e507c69906a8', 0 UNION ALL
SELECT 8, N'M 309-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'30d0a1e8-8266-454f-b2ea-e50ecbd13c56', 0 UNION ALL
SELECT 8, N'M 402-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'a5bd1a74-4f0d-4ae5-910e-e52b88dda54c', 0 UNION ALL
SELECT 8, N'D402-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'feda3446-548a-4c74-a847-e535c55e071d', 0 UNION ALL
SELECT 9, N'1N', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'930cfe41-633e-4dbc-944b-e5486692e570', 0 UNION ALL
SELECT 9, N'9F', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'77bc1f27-3864-4265-81c5-e54a07802106', 0 UNION ALL
SELECT 7, N'010-2D', N'Apartment - 010-2D', N'nirshan', '20150723 08:05:19.033', N'7e616a86-7a85-46d7-9844-e5855a061c30', 0 UNION ALL
SELECT 9, N'4A', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'5043ec14-9f72-410f-bee5-e5c047ab094c', 0 UNION ALL
SELECT 8, N'G511-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'9715ab07-dd4a-43d4-a15d-e5e9af985ced', 0 UNION ALL
SELECT 10, N'B24-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'f8f4218f-36fd-48cd-860c-e6033d786c0d', 0 UNION ALL
SELECT 8, N'M 512-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'daf63519-8a9b-4eea-a877-e649b42c8e6b', 0 UNION ALL
SELECT 8, N'E405', N'2BR Apartment', N'nirshan', '20150723 08:06:45.067', N'29053b1d-4dbe-4bf5-8424-e64bbab0bb8e', 0 UNION ALL
SELECT 9, N'3E', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'7e8923a7-f169-4601-bd06-e65152997283', 0 UNION ALL
SELECT 8, N'I304-B', N'Apartment/Bedroom-I304-B', N'nirshan', '20150723 08:06:45.067', N'fa409c7c-d1ae-49f2-a213-e6672217b6ac', 0 UNION ALL
SELECT 8, N'M 207-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'69695d0b-c49a-4986-b598-e671570d7070', 0 UNION ALL
SELECT 9, N'14A', N'Deluxe 2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'0b1e4ab7-e18d-478f-b79f-e67679278859', 0 UNION ALL
SELECT 8, N'L208', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'9b40ac0f-862e-4c10-9c42-e678947f6514', 0 UNION ALL
SELECT 8, N'A202-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'cf4201e7-6a86-4bb4-8de1-e67abf6a98eb', 0 UNION ALL
SELECT 10, N'D53-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'752e84d8-b6e3-4d97-89ab-e6daf72990e9', 0 UNION ALL
SELECT 8, N'F507-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'72c499fd-bf31-4a5c-a7e5-e72a767a4a5b', 0 UNION ALL
SELECT 8, N'L102-C', N'Apartment/Bedroom-L102-C', N'nirshan', '20150723 08:06:45.067', N'00d593c5-dad8-472a-a047-e72d8c748894', 0 UNION ALL
SELECT 7, N'011-1B', N'Apartment - 011-1B', N'nirshan', '20150723 08:05:19.033', N'd98ceb29-b991-4109-9cea-e75665fde834', 0 UNION ALL
SELECT 8, N'F501-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'365fc343-e323-416a-9979-e7b84f2e9abf', 0 UNION ALL
SELECT 7, N'023-1B', N'Apartment - 023-1B', N'nirshan', '20150723 08:05:19.033', N'f3247596-c6ba-471d-829c-e7b8ce7aa783', 0 UNION ALL
SELECT 10, N'D45', N'2BR 2BA Apartment', N'nirshan', '20150723 08:08:25.727', N'a006b928-9b79-430b-9d8c-f5ecb373b4f6', 0 UNION ALL
SELECT 8, N'M 401-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3a846a71-4573-4231-b807-f5fb254b0abb', 0 UNION ALL
SELECT 8, N'D304', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'293c5629-324d-44c4-86d2-f62c2983a74f', 0 UNION ALL
SELECT 8, N'D209-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f362eeca-27ed-4789-8b2d-f63adbc5eeb8', 0 UNION ALL
SELECT 10, N'B28-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'0fb014a4-75fd-4b43-b6e3-f669862e84e7', 0 UNION ALL
SELECT 8, N'I103-B', N'Apartment/Bedroom-I103-B', N'nirshan', '20150723 08:06:45.067', N'f96748a9-bc9e-4ccf-b075-f694efef2bad', 0 UNION ALL
SELECT 8, N'G407-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'1f9d8866-2b87-4f93-b336-f69e37495555', 0 UNION ALL
SELECT 6, N'819-821', NULL, N'nirshan', '20150723 08:03:32.660', N'28b3d8ae-5c2b-4aef-8969-f6aef182d6f2', 0 UNION ALL
SELECT 8, N'D306-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'1c79e91a-0b62-4bb8-afc8-f6cf2973d193', 0 UNION ALL
SELECT 7, N'011-1A', N'Apartment - 011-1A', N'nirshan', '20150723 08:05:19.033', N'60f03724-fd49-4d2c-bf8e-f71d3ab0bc1e', 0 UNION ALL
SELECT 8, N'F609-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'6d9c396d-6fd1-404f-b2f6-f730ffb45a9c', 0 UNION ALL
SELECT 8, N'M 402', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'9d76e109-f5c2-4779-be11-f757866ee425', 0 UNION ALL
SELECT 8, N'I305-B', N'Apartment/Bedroom-I305-B', N'nirshan', '20150723 08:06:45.067', N'576fd8fa-5eb9-49f2-8415-f75ebd41973c', 0 UNION ALL
SELECT 8, N'B301-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'8029c660-5179-45d3-86fd-f775baf4f324', 0 UNION ALL
SELECT 8, N'E207', N'2BR Apartment', N'nirshan', '20150723 08:06:45.067', N'd819a742-2d84-417b-bda7-f77745751826', 0 UNION ALL
SELECT 10, N'D47-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'805e7311-5449-4ef2-abe1-f7aa2d2a6343', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 42.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 6, N'3324-3326', NULL, N'nirshan', '20150723 08:03:32.660', N'5e5c9120-83d6-4b48-b2b5-f7d405837beb', 0 UNION ALL
SELECT 8, N'E202-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'da9223e1-bf21-4954-acd6-f818c331a95e', 0 UNION ALL
SELECT 8, N'A101', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'274252c2-a5b0-4e0b-8f97-f82ff3c9329a', 0 UNION ALL
SELECT 9, N'5R', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'aff2ae96-9778-4a88-87d9-f83d7f0f21a3', 0 UNION ALL
SELECT 9, N'9K', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'71fedc0f-baf4-470a-a385-f858f8154637', 0 UNION ALL
SELECT 8, N'M 303-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b0ee2775-8d73-4972-a9a3-f874823fdb3e', 0 UNION ALL
SELECT 8, N'G105-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'1a3d269a-9aac-4bb2-adf1-f8aa6844b9c1', 0 UNION ALL
SELECT 8, N'F601', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'ecc8d3f8-97dc-4b58-8df7-f8abcde3f888', 0 UNION ALL
SELECT 8, N'G209', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'7e9c614e-a0af-4352-806a-f8d08e37afc8', 0 UNION ALL
SELECT 8, N'M 308-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'493acdfd-1655-4956-ba40-f8d69ddf87e8', 0 UNION ALL
SELECT 8, N'F609-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'954ebe5f-7a74-40a2-92dc-f8d723fcd8ed', 0 UNION ALL
SELECT 7, N'003-1B', N'Apartment - 003-1B', N'nirshan', '20150723 08:05:19.033', N'c3b5d786-32d2-4566-992a-f9231a429a96', 0 UNION ALL
SELECT 8, N'B407-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'0329f68d-c98e-4ee0-92be-f92adb17bdef', 0 UNION ALL
SELECT 9, N'3A', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'80977e12-91d5-44e3-8fef-f92f375aab53', 0 UNION ALL
SELECT 8, N'F308-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'0c60abfd-0795-4378-a36d-45c761bd2162', 0 UNION ALL
SELECT 9, N'4K', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'a1c1fb02-5f4e-4030-ae43-45f7dd21a120', 0 UNION ALL
SELECT 8, N'D110', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'3b425ee9-9a91-412e-bd4f-45fcb100e18c', 0 UNION ALL
SELECT 8, N'E201-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f874073a-33ef-4f84-ade5-4602a46cf9c5', 0 UNION ALL
SELECT 8, N'F607-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'fc97c18f-c316-4a8c-97f7-4609bfa19d96', 0 UNION ALL
SELECT 8, N'I403-D', N'Apartment/Bedroom-I403-D', N'nirshan', '20150723 08:06:45.067', N'b0f0f05b-6e6e-4264-8529-461dc08a403f', 0 UNION ALL
SELECT 8, N'A307-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3bf03cfa-c39b-4b1a-a061-464c203a0ca2', 0 UNION ALL
SELECT 9, N'16C', N'Deluxe 2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'ccfc5799-dfc2-4d66-b44f-4676b1c31dfb', 0 UNION ALL
SELECT 8, N'I108-B', N'Apartment/Bedroom-I108-B', N'nirshan', '20150723 08:06:45.067', N'5801801f-6318-4e5e-9632-46b10dd2a87d', 0 UNION ALL
SELECT 8, N'G204-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ef815916-a27d-4e93-890a-4705c891c281', 0 UNION ALL
SELECT 10, N'A16-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'750dbe92-4f99-4922-9082-470725f0fc52', 0 UNION ALL
SELECT 8, N'F405-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ef0c36b5-881d-4817-8084-4712095e0a1e', 0 UNION ALL
SELECT 8, N'D202-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'5861d240-7ca9-48cd-9fbc-471ac13f8ac4', 0 UNION ALL
SELECT 8, N'E310-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'79f805f5-21dd-4f6b-9d76-471af57e6725', 0 UNION ALL
SELECT 9, N'8O', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'3f0d72d5-7614-4d2a-96e6-47209753f40e', 0 UNION ALL
SELECT 9, N'5G', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'688e9c2b-0174-4eb5-9327-473a3df40dae', 0 UNION ALL
SELECT 8, N'F308-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'df1f0044-cfc2-4d27-a480-474ce46a688c', 0 UNION ALL
SELECT 8, N'A403', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'895df75e-30f3-4921-b2a8-478491fd2baf', 0 UNION ALL
SELECT 7, N'025-1A', N'Apartment - 025-1A', N'nirshan', '20150723 08:05:19.033', N'2f4b640a-d17a-4580-9105-47a78b4f6ddb', 0 UNION ALL
SELECT 8, N'E305-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3967825c-4fdd-4fa1-a378-5a606dfc5072', 0 UNION ALL
SELECT 8, N'A407-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'92850171-abe0-4fda-8dd4-5a8e03c66873', 0 UNION ALL
SELECT 8, N'D404-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'087a2868-c517-41d0-866c-5a95e3c2accc', 0 UNION ALL
SELECT 8, N'E310-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f5993d6c-7b53-4def-832d-5aa9ed6937ad', 0 UNION ALL
SELECT 8, N'K 206', N'Fitness Room', N'nirshan', '20150723 08:06:45.067', N'bd68c04b-2fa1-49bb-a742-5ad2fc91bc41', 0 UNION ALL
SELECT 8, N'F605-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'0f4b7e7c-5572-413e-9148-5ad3a80683c4', 0 UNION ALL
SELECT 8, N'B406-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'bc741f1b-d5eb-4556-a6ed-5addff4bc33c', 0 UNION ALL
SELECT 8, N'L201', N'2 BR 1 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'9fcd200e-9216-437f-a78d-5b0662b61a71', 0 UNION ALL
SELECT 10, N'B18-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'916ff5e4-857e-4f73-8093-5b1033a046cd', 0 UNION ALL
SELECT 8, N'F610', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'7450999f-57a2-4b62-a885-5b14f82a34a4', 0 UNION ALL
SELECT 8, N'M 404-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'f7d7989d-1c53-450a-8c96-5b31350d758a', 0 UNION ALL
SELECT 8, N'E107-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'29f68b14-8806-42f3-a6af-5b3701e3a2d0', 0 UNION ALL
SELECT 8, N'F409-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e698eca1-5dee-4acb-b6f7-5b37598d31c1', 0 UNION ALL
SELECT 8, N'E108-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'8d882bc0-4d60-4c41-98fc-5b52e7287162', 0 UNION ALL
SELECT 8, N'I104', N'Apartment/2BR 1BA-I104', N'nirshan', '20150723 08:06:45.067', N'4df88154-bde2-4ca3-80f4-5b5c1abd1cb5', 0 UNION ALL
SELECT 8, N'L510', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'cfc1487b-8211-48cf-9de1-5b7c16259b3a', 0 UNION ALL
SELECT 6, N'3465-3467', NULL, N'nirshan', '20150723 08:03:32.660', N'978efbbc-b1fb-4b98-8667-5b951ed1cc1a', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 43.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 9, N'5C', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'e026a375-d033-4f86-9e5f-5bb8851ad07b', 0 UNION ALL
SELECT 8, N'M 506-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'50721dd2-ac8a-42bb-badd-5bf99faa9843', 0 UNION ALL
SELECT 7, N'018-1A', N'Apartment - 018-1A', N'nirshan', '20150723 08:05:19.033', N'd9520293-ca21-42ec-a95c-5c07ebbee29d', 0 UNION ALL
SELECT 9, N'1L', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'78d1b317-5e51-42a9-9512-5c1ffff5b8f1', 0 UNION ALL
SELECT 8, N'D211-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'5724e810-2a86-403b-99cb-5c2949e96fda', 0 UNION ALL
SELECT 9, N'5J', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'b87974dc-0083-4a14-aa0a-5c3313608294', 0 UNION ALL
SELECT 8, N'E401-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'326f2e97-2c1e-41e3-855c-c6af9c1db9f3', 0 UNION ALL
SELECT 9, N'14E', N'Deluxe 2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'91d8b451-daa6-4b7f-b367-c6c7d153d7a2', 0 UNION ALL
SELECT 7, N'002-2D', N'Apartment - 002-2D', N'nirshan', '20150723 08:05:19.033', N'b9cae41a-ae80-4ffb-a64f-c6cafedd00b3', 0 UNION ALL
SELECT 8, N'I304', N'Apartment/ 4BR 2BA-I304', N'nirshan', '20150723 08:06:45.067', N'82557ed8-ee2a-4a26-be0a-c6efcab5bf6a', 0 UNION ALL
SELECT 9, N'1H', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'610d19d5-b7e1-4050-858c-c7343da96981', 0 UNION ALL
SELECT 8, N'E101-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'00568cb2-f8c4-435f-a710-c735f6822e0f', 0 UNION ALL
SELECT 8, N'G309-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ec852a94-ed1c-423f-96c9-c7b387e1996b', 0 UNION ALL
SELECT 10, N'A4-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'7ac79c75-2f75-4e7f-968a-c7c4ce35b741', 0 UNION ALL
SELECT 9, N'11J', N'1 BR Apartment', N'nirshan', '20150723 08:07:50.047', N'264f9cf1-4723-4c71-9cd3-c7cef1e4a5ce', 0 UNION ALL
SELECT 8, N'G401-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'50f41b8f-59bc-4a9c-9412-c7e0fb444ea8', 0 UNION ALL
SELECT 6, N'821-823', NULL, N'nirshan', '20150723 08:03:32.660', N'365f7d1e-3b80-421b-8e03-c7fc9d8d328d', 0 UNION ALL
SELECT 9, N'4O', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'f9596573-4a82-4dd4-845a-c81cae7286bb', 0 UNION ALL
SELECT 6, N'878-880', NULL, N'nirshan', '20150723 08:03:32.660', N'1a393768-bbf7-46fc-be6b-c83437878ee5', 0 UNION ALL
SELECT 8, N'A305-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'57484edd-6e9f-411d-bcaa-c86757a47f76', 0 UNION ALL
SELECT 9, N'1D', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'52639164-c882-4d3b-8c8e-c871cfc0a3f8', 0 UNION ALL
SELECT 8, N'F503-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'12d1ed1c-d4de-4a29-9dd4-c88f9e7097f1', 0 UNION ALL
SELECT 8, N'D209-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3af8225f-262e-4f37-bc03-c8db2ff317f0', 0 UNION ALL
SELECT 10, N'A7-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'19c4bfa5-d19b-456d-9afb-c8e3ad5d9a31', 0 UNION ALL
SELECT 8, N'M103-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'2bb34412-c585-4c03-afb3-b97d785578d2', 0 UNION ALL
SELECT 8, N'M 507-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'b2ecc1b0-cc6a-4f8b-9da4-b9820d299600', 0 UNION ALL
SELECT 8, N'B103', N'4BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'3bcc4264-b51e-4068-a22e-b98c3edff1db', 0 UNION ALL
SELECT 8, N'E209-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e9ed61ff-5fc1-436c-80f2-b99b9ed8bc89', 0 UNION ALL
SELECT 8, N'A302-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'7781693a-8126-4a79-8e99-b9abab057b6b', 0 UNION ALL
SELECT 8, N'M 302', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'8b469e4a-cb7a-4b17-a743-ba47e8010d4f', 0 UNION ALL
SELECT 8, N'A304', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'955ec5c8-0601-410b-872c-ba665bc3a774', 0 UNION ALL
SELECT 9, N'7L', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'5a19061a-0b98-499d-9da6-ba95867fb665', 0 UNION ALL
SELECT 8, N'M 509-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'97aa75f2-5b76-4f50-935b-baa7705c9f4b', 0 UNION ALL
SELECT 10, N'B20-1', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'fa1c1b0c-4c4e-43b7-ab6f-bab8daecc4ef', 0 UNION ALL
SELECT 8, N'D407', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'a6ec5b33-0914-4815-a431-bac06a4d90fd', 0 UNION ALL
SELECT 10, N'D52-2', N'Bedroom Apartment', N'nirshan', '20150723 08:08:25.727', N'3d4b166d-fded-4f82-aaad-baebf569784c', 0 UNION ALL
SELECT 8, N'D104-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'2c9b2ad4-fcf9-4f31-814d-baf72ea3c2c3', 0 UNION ALL
SELECT 8, N'F309-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'db6878db-27b3-4d1b-aa09-bb126e7ed1c7', 0 UNION ALL
SELECT 8, N'F507', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'dbf11484-d357-4612-a9ed-bb3817a9c5c1', 0 UNION ALL
SELECT 9, N'13C', N'2 BR Apartment', N'nirshan', '20150723 08:07:50.047', N'4558af4c-d690-4727-bdb5-bb4573727577', 0 UNION ALL
SELECT 8, N'A201-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'20820f60-2e2b-4827-823f-bb806d07ab07', 0 UNION ALL
SELECT 9, N'16A', N'Deluxe 2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'52946633-9e98-4401-b93e-bb909eb874fe', 0 UNION ALL
SELECT 8, N'D109-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'259a68f8-e9ad-405f-aa08-bb981e06dc45', 0 UNION ALL
SELECT 6, N'3471-3473', NULL, N'nirshan', '20150723 08:03:32.660', N'0d646124-a77a-4d5d-a704-bba008d6011a', 0 UNION ALL
SELECT 9, N'4Q', N'1 BR 1 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'eb0f9cfa-5c6a-4960-a5ba-bbae91cd2615', 0 UNION ALL
SELECT 10, N'C35', N'1BR Apartment', N'nirshan', '20150723 08:08:25.727', N'a9a2ade6-9a68-4c79-ab27-bbcc6b6bb63c', 0 UNION ALL
SELECT 8, N'F407', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'4cb5340e-5d59-40f9-a865-bbce16c1f3b4', 0 UNION ALL
SELECT 8, N'D202-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3a63e06e-05d3-4f77-a01b-bbe32e2dc1fb', 0 UNION ALL
SELECT 8, N'M 405', N'2 BR 1 BA Aprtment', N'nirshan', '20150723 08:06:45.067', N'59571727-988d-419e-b896-bbe63806a95c', 0 UNION ALL
SELECT 8, N'M 507-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'ee5cd7a3-c7fd-4591-9f17-bbfc543e3f2f', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 44.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[BaseHouseRoom]([BaseHouseId], [RoomName], [Description], [CreatedBy], [CreatedDate], [BaseHouseRoomId], [IsDeleted])
SELECT 8, N'E410-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'db810f62-dd01-4d6a-a163-1637ef8d3f43', 0 UNION ALL
SELECT 8, N'G509', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'7a80a0f8-a57d-4177-a801-168d13795a34', 0 UNION ALL
SELECT 8, N'G304-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'3d43da0c-b63c-43d4-90c2-16a5ec80d701', 0 UNION ALL
SELECT 8, N'A203-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'abe37cea-0d6f-4dc9-ba5d-16b8c9fac01f', 0 UNION ALL
SELECT 8, N'E205-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'c9583d27-b1c2-4a67-a4cb-16ba1cb1fcb3', 0 UNION ALL
SELECT 8, N'E201', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'44c39d9e-d021-47df-a3c7-16bd7026c92f', 0 UNION ALL
SELECT 8, N'G401-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'85e8aa3d-8451-4b92-a11a-16c2ad3d2769', 0 UNION ALL
SELECT 8, N'I503-C', N'Apartment/Bedroom-I503-C', N'nirshan', '20150723 08:06:45.067', N'990666e4-0518-4389-81c7-1702209ca65a', 0 UNION ALL
SELECT 8, N'L405', N'4 BR 2 BA Apartment', N'nirshan', '20150723 08:06:45.067', N'4147d456-0ca0-43c3-8c58-170abc3169e3', 0 UNION ALL
SELECT 8, N'L104-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'c328f123-90bb-4200-be2c-171f944fc261', 0 UNION ALL
SELECT 8, N'F603-B', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'aeba78aa-ebee-4051-b723-177ce0b91ad3', 0 UNION ALL
SELECT 8, N'I508-B', N'Apartment/Bedroom-I508-B', N'nirshan', '20150723 08:06:45.067', N'8f2d2966-2648-4d2e-b75e-177d65f73d30', 0 UNION ALL
SELECT 8, N'D108-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'9a87e9d7-aaf0-4c70-950b-179e81bbe54e', 0 UNION ALL
SELECT 8, N'F210-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'02f17808-bf24-44e6-bd29-17bfaba66208', 0 UNION ALL
SELECT 8, N'B101-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'e01835af-4387-488c-998c-17e3da33bc51', 0 UNION ALL
SELECT 9, N'2D', N'2 BR 2 BA Apartment', N'nirshan', '20150723 08:07:50.047', N'5d9114e9-1b00-4d31-890a-1802d0d17414', 0 UNION ALL
SELECT 8, N'B405-D', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'd7238af4-6db8-4f77-b4ee-180a3ea8485b', 0 UNION ALL
SELECT 8, N'E201-A', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'892c6899-5e19-4ec5-b6e8-181595c26b98', 0 UNION ALL
SELECT 8, N'A202-C', N'Bedroom Apartment', N'nirshan', '20150723 08:06:45.067', N'23ff103b-02d2-4637-b102-1838ae05dbed', 0 UNION ALL
SELECT 8, N'D108', N'4BR 2BA Apartment', N'nirshan', '20150723 08:06:45.067', N'9db56df4-f665-4d31-964d-186ebeec7b23', 0
COMMIT;
RAISERROR (N'[dbo].[BaseHouseRoom]: Insert Batch: 45.....Done!', 10, 1) WITH NOWAIT;
GO


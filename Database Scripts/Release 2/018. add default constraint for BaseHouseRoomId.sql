ALTER table  dbo.BaseHouseRoom
 add constraint df_Constraint_NewGuid
 default newid() for BaseHouseRoomId
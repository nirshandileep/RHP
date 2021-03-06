﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using RHP.Common;
using RHP.UserManagement;

namespace RHP.LandlordManagement
{
   public class HouseDAO
   {
       public DataSet SelectAllDataset()
       {
           Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
           DbCommand command = db.GetStoredProcCommand("usp_HouseSelectAll");
           return db.ExecuteDataSet(command);
       }

       public DataSet SelectAllDataset(Guid LandlordId)
       {
           Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
           DbCommand command = db.GetStoredProcCommand("usp_HouseSelectByLandlordId");
           db.AddInParameter(command, "LandlordId", DbType.Guid, LandlordId);

           return db.ExecuteDataSet(command);
       }

       public bool Insert(House house)
       {
           Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
           return this.Insert(house, db, null);
       }

       public bool Insert(House house, Database db, DbTransaction transaction)
       {
           DbCommand command = db.GetStoredProcCommand("usp_HouseInsert");

           house.HouseId = Guid.NewGuid();
           db.AddInParameter(command, "HouseId", DbType.Guid, house.HouseId);
           db.AddInParameter(command, "LandlordId", DbType.Guid, house.LandlordId);
           db.AddInParameter(command, "StreetAddress", DbType.String, house.StreetAddress);
           db.AddInParameter(command, "City", DbType.String, house.City);
           db.AddInParameter(command, "StateId", DbType.Int32, house.StateId);
           db.AddInParameter(command, "Zip", DbType.String, house.Zip);
           db.AddInParameter(command, "YearHomeBuild", DbType.Int16, house.YearHomeBuild);
           db.AddInParameter(command, "BedRooms", DbType.Int16, house.BathRooms);
           db.AddInParameter(command, "BathRooms", DbType.Int16, house.BedRooms);
           db.AddInParameter(command, "LotSquareFootage", DbType.Int32, house.LotSquareFootage);
           db.AddInParameter(command, "TotalSquareFootage", DbType.Int32, house.TotalSquareFootage);
           db.AddInParameter(command, "UtilitiesIncludedInRent", DbType.String, house.UtilitiesIncludedInRent);
           db.AddInParameter(command, "PropertyImagePath", DbType.String, house.PropertyImagePath);
           db.AddInParameter(command, "IsDeleted", DbType.Boolean, house.IsDeleted);
           db.AddInParameter(command, "IsPartialHouse", DbType.Boolean, house.IsPartialHouse);
           db.AddInParameter(command, "CreatedBy", DbType.Guid, house.CreatedBy);
           db.AddInParameter(command, "RatingValue", DbType.Decimal, house.RatingValue);
           db.AddInParameter(command, "Price", DbType.Decimal, house.Price);
           db.AddOutParameter(command, "CreatedDate", DbType.DateTime, 30);

           if (transaction == null)
           {
               db.ExecuteNonQuery(command);
           }
           else
           {
               db.ExecuteNonQuery(command, transaction);
           }

           house.CreatedDate = Convert.ToDateTime(db.GetParameterValue(command, "CreatedDate").ToString());
           house.UpdatedDate = house.CreatedDate;

           return true;
       }

       public bool Update(House house)
       {
           Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
           return this.Update(house, db, null);
       }

       public bool Update(House house, Database db, DbTransaction transaction)
       {
           DbCommand command = db.GetStoredProcCommand("usp_HouseUpdate");


           db.AddInParameter(command, "HouseId", DbType.Guid, house.HouseId);
           db.AddInParameter(command, "LandlordId", DbType.Guid, house.LandlordId);
           db.AddInParameter(command, "StreetAddress", DbType.String, house.StreetAddress);
           db.AddInParameter(command, "City", DbType.String, house.City);
           db.AddInParameter(command, "StateId", DbType.Int32, house.StateId);
           db.AddInParameter(command, "Zip", DbType.String, house.Zip);
           db.AddInParameter(command, "YearHomeBuild", DbType.Int16, house.YearHomeBuild);
           db.AddInParameter(command, "BedRooms", DbType.Int16, house.BathRooms);
           db.AddInParameter(command, "BathRooms", DbType.Int16, house.BedRooms);
           db.AddInParameter(command, "LotSquareFootage", DbType.Int32, house.LotSquareFootage);
           db.AddInParameter(command, "TotalSquareFootage", DbType.Int32, house.TotalSquareFootage);
           db.AddInParameter(command, "UtilitiesIncludedInRent", DbType.String, house.UtilitiesIncludedInRent);
           db.AddInParameter(command, "PropertyImagePath", DbType.String, house.PropertyImagePath);
           db.AddInParameter(command, "IsDeleted", DbType.Boolean, house.IsDeleted);
           db.AddInParameter(command, "IsPartialHouse", DbType.Boolean, house.IsPartialHouse);
           db.AddInParameter(command, "UpdatedBy", DbType.Guid, house.UpdatedBy);
           db.AddInParameter(command, "RatingValue", DbType.Decimal, house.RatingValue);
           db.AddInParameter(command, "Price", DbType.Decimal, house.Price);
           db.AddOutParameter(command, "UpdatedDate", DbType.DateTime, 30);

           if (transaction == null)
           {
               db.ExecuteNonQuery(command);
           }
           else
           {
               db.ExecuteNonQuery(command, transaction);
           }

           house.UpdatedDate = Convert.ToDateTime(db.GetParameterValue(command, "UpdatedDate").ToString());

           return true;
       }

       public bool Delete(House house)
       {
           Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
           return this.Delete(house, db, null);
       }

       public bool Delete(House house, Database db, DbTransaction transaction)
       {
           DbCommand command = db.GetStoredProcCommand("usp_HouseDelete");
           db.AddInParameter(command, "HouseId", DbType.Guid, house.HouseId);
           db.AddInParameter(command, "UpdatedBy", DbType.Guid, house.UpdatedBy);

           if (transaction == null)
           {
               db.ExecuteNonQuery(command);
           }
           else
           {
               db.ExecuteNonQuery(command, transaction);
           }
           return true;
       }

       public bool IsHouseExist(House house)
       {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand command = db.GetStoredProcCommand("usp_House_IsHouseExist");

            db.AddInParameter(command, "HouseId", DbType.Guid, house.HouseId);
            db.AddOutParameter(command, "IsExist", DbType.Boolean, 1);

            db.ExecuteNonQuery(command);

            return Convert.ToBoolean(db.GetParameterValue(command, "IsExist").ToString());
        }

       public bool Select(House entity)
       {
           bool result = true;
           
           Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
           DbCommand dbCommand = db.GetStoredProcCommand("usp_HouseSelect");

           db.AddInParameter(dbCommand, "HouseId", DbType.Guid, entity.HouseId);

           using (IDataReader dataReader = db.ExecuteReader(dbCommand))
           {
               if (dataReader.Read())
               {
                   if (entity == null)
                   {
                       entity = new House(); 
                   }
                   RHP.Utility.Generic.AssignDataReaderToEntity(dataReader, entity);
               }

               if (dataReader.NextResult())
               {
                   while (dataReader.Read())
                   {
                       HouseOption houseOption = new HouseOption();
                       RHP.Utility.Generic.AssignDataReaderToEntity(dataReader, houseOption);
                       if (entity.HouseOptionList == null)
                       {
                           entity.HouseOptionList = new List<HouseOption>();
                       }
                       entity.HouseOptionList.Add(houseOption);
                   }
               }
           }

           if (entity.HouseOptionList != null)
           {
               foreach (HouseOption houseOption in entity.HouseOptionList)
               {
                   Option option = RHP.Utility.Generic.Get<Option>(houseOption.OptionId);
                   houseOption.Option = option;
               }

           }
           return result;
       }

       public House SelectByRoomId(Guid BaseHouseRoomId)
       {
           House entity = new House();

           Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
           DbCommand dbCommand = db.GetStoredProcCommand("usp_HouseSelectByBaseHouseRoomId");

           db.AddInParameter(dbCommand, "BaseHouseRoomId", DbType.Guid, BaseHouseRoomId);

           using (IDataReader dataReader = db.ExecuteReader(dbCommand))
           {
               if (dataReader.Read())
               {
                   if (entity == null)
                   {
                       entity = new House();
                   }
                   RHP.Utility.Generic.AssignDataReaderToEntity(dataReader, entity);
               }
           }

           return entity;
       }

       public DataSet Search(HouseSearch house)
       {
           Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
           DbCommand command = db.GetStoredProcCommand("usp_HouseSearch");

           db.AddInParameter(command, "BathRooms", DbType.String, house.BathRooms);
           db.AddInParameter(command, "BedRooms", DbType.String, house.BedRooms);
           db.AddInParameter(command, "Zip", DbType.String, house.Zip);

           return db.ExecuteDataSet(command);

       }
   }
}

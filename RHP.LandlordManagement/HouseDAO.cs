using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using RHP.Common;

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
           db.AddInParameter(command, "State", DbType.String, house.State);
           db.AddInParameter(command, "Zip", DbType.String, house.Zip);
           db.AddInParameter(command, "YearHomeBuild", DbType.Int16, house.YearHomeBuild);
           db.AddInParameter(command, "BedRooms", DbType.Int16, house.BathRooms);
           db.AddInParameter(command, "BathRooms", DbType.Int16, house.BedRooms);
           db.AddInParameter(command, "LotSquareFootage", DbType.Decimal, house.LotSquareFootage);
           db.AddInParameter(command, "TotalSquareFootage", DbType.Decimal, house.TotalSquareFootage);
           db.AddInParameter(command, "UtilitiesIncludedInRent", DbType.String, house.UtilitiesIncludedInRent);
           db.AddInParameter(command, "PropertyImagePath", DbType.String, house.PropertyImagePath);
           db.AddInParameter(command, "IsDeleted", DbType.Boolean, house.IsDeleted);
           db.AddInParameter(command, "CreatedBy", DbType.Guid, house.CreatedBy);
           db.AddInParameter(command, "RatingValue", DbType.Decimal, house.RatingValue);
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

           db.AddInParameter(command, "HouseId", DbType.Guid, Guid.NewGuid());
           db.AddInParameter(command, "LandlordId", DbType.Guid, house.LandlordId);
           db.AddInParameter(command, "StreetAddress", DbType.String, house.StreetAddress);
           db.AddInParameter(command, "City", DbType.String, house.City);
           db.AddInParameter(command, "State", DbType.String, house.State);
           db.AddInParameter(command, "Zip", DbType.String, house.Zip);
           db.AddInParameter(command, "YearHomeBuild", DbType.Int16, house.YearHomeBuild);
           db.AddInParameter(command, "BedRooms", DbType.Int16, house.BathRooms);
           db.AddInParameter(command, "BathRooms", DbType.Int16, house.BedRooms);
           db.AddInParameter(command, "LotSquareFootage", DbType.Decimal, house.LotSquareFootage);
           db.AddInParameter(command, "TotalSquareFootage", DbType.Decimal, house.TotalSquareFootage);
           db.AddInParameter(command, "UtilitiesIncludedInRent", DbType.String, house.UtilitiesIncludedInRent);
           db.AddInParameter(command, "PropertyImagePath", DbType.String, house.PropertyImagePath);
           db.AddInParameter(command, "IsDeleted", DbType.Boolean, house.IsDeleted);
           db.AddInParameter(command, "UpdatedBy", DbType.Guid, house.UpdatedBy);
           db.AddInParameter(command, "RatingValue", DbType.Decimal, house.RatingValue);
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

   }
}

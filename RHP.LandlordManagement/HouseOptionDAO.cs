using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using RHP.Common;
using System.Data;

namespace RHP.LandlordManagement
{
    public class HouseOptionDAO
    {

        public bool Insert(HouseOption option, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_HouseInsert");

            db.AddInParameter(command, "HouseId", DbType.Guid, option.HouseId);
            db.AddInParameter(command, "OptionId", DbType.Guid, option.OptionId);
            db.AddInParameter(command, "OptionValue", DbType.String, option.OptionValue);
            db.AddInParameter(command, "CreatedBy", DbType.Guid, option.CreatedBy);

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

        public bool Delete(HouseOption house, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_HouseOptionDeleteByHouseId");
            db.AddInParameter(command, "HouseId", DbType.Guid, house.HouseId);

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
    }
}

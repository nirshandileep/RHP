using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using System.Data;
using RHP.Common;

namespace RHP.LandlordManagement
{
    public class BaseHouseRoomDAO
    {
        public Landlord GetLandlordByRoomId(Guid roomId)
        {
            Landlord returnLandlord = new Landlord();

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand dbCommand = db.GetStoredProcCommand("usp_HouseSelect");

            db.AddInParameter(dbCommand, "HouseId", DbType.Guid, roomId);


            return returnLandlord;
        }
    }
}

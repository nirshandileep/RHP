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
    public class BaseHouseDAO
    {
        public static List<BaseHouse> SelectAllByHouseTypeId(int houseTypeId)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand dbCommand = db.GetStoredProcCommand("usp_BaseHouseSelectByHouseTypeId");

            List<BaseHouse> listBaseHouse = new List<BaseHouse>();

            db.AddInParameter(dbCommand, "HouseTypeId", DbType.Int32, houseTypeId);

            using (IDataReader dataReader = db.ExecuteReader(dbCommand))
            {
                while (dataReader.Read())
                {
                    BaseHouse baseHouse = HouseFactory.Create((Enums.HouseType)houseTypeId);
                    RHP.Utility.Generic.AssignDataReaderToEntity(dataReader, baseHouse);
                    listBaseHouse.Add(baseHouse);
                }

                if (dataReader.NextResult())
                {
                    while (dataReader.Read())
                    {
                        BaseHouseRoom baseHouseRoom = new BaseHouseRoom();
                        RHP.Utility.Generic.AssignDataReaderToEntity(dataReader, baseHouseRoom);
                        if (listBaseHouse != null)
                        {
                            BaseHouse baseHouse2 = HouseFactory.Create((Enums.HouseType)houseTypeId);
                            foreach (BaseHouse item in listBaseHouse)
                            {
                                if (item.BaseHouseId == baseHouseRoom.BaseHouseId)
                                {
                                    if (item.HouseRooms == null)
                                    {
                                        item.HouseRooms = new List<BaseHouseRoom>();
                                    }
                                    item.HouseRooms.Add(baseHouseRoom);
                                }
                            }
                        }
                    }
                }
            }

            return listBaseHouse;
        }
    }
}

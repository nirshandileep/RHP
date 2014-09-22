using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using RHP.Common;

namespace RHP.LandlordManagement
{
    public class HouseOption : Common.Base
    {
        public int HouseOptionId { get; set; }
        public Guid HouseId { get; set; }
        public int OptionId { get; set; }
        public Option Option { get; set; }
        public string OptionValue { get; set; }


        public bool Save(House house)
        {
            bool result = false;

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbConnection connection = db.CreateConnection();
            connection.Open();
            DbTransaction transaction = connection.BeginTransaction();

            try
            {
                HouseDAO houseDAO = new HouseDAO();
               // House house = new House();

                if (houseDAO.IsHouseExist(house))
                {
                    result = new HouseOptionDAO().Delete(new HouseOption() { HouseId = house.HouseId.Value }, db, transaction);
                    if (house.HouseOptionList != null)
                    {
                        foreach (HouseOption item in house.HouseOptionList)
                        {
                            new HouseOptionDAO().Insert(item, db, transaction);
                        }
                    }
                }
                
                if (result)
                {
                    transaction.Commit();
                }
                else
                {
                    transaction.Rollback();
                }

            }
            catch (System.Exception ex)
            {
                transaction.Rollback();
                result = false;
                throw ex;
            }
            finally
            {
                connection.Close();
            }
            return result;
        }


    }
}

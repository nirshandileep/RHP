using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using RHP.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;

namespace RHP.LandlordManagement
{
    public abstract class BaseHouse
    {
        #region Database Fields

        public int BaseHouseId { get; set; }
        public string ContactName { get; set; }
        public int HouseTypeId { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Zip { get; set; }
        public string PhoneNumber { get; set; }
        public string ManagerEmail { get; set; }
        public string AssistantManagerEmail { get; set; }
        public string PropertyManagementCompanyName { get; set; }
        public string WebSiteURL { get; set; }
        public string CreatedBy { get; set; }
        public DateTime CreatedDate { get; set; }
        public string UpdatedBy { get; set; }
        public DateTime UpdatedDate { get; set; }
        public List<BaseHouseRoom> HouseRooms { get; set; }
        public Guid? LandlordId { get; set; }

        #endregion

        #region UI Fields

        public string HousingTypeHeader { get; set; }
        public string LabelRoom { get; set; }

        #endregion


        #region

        public bool Save()
        {
            bool result = false;

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbConnection connection = db.CreateConnection();
            connection.Open();
            DbTransaction transaction = connection.BeginTransaction();

            try
            {
                BaseHouseDAO baseHouseDAO = new BaseHouseDAO();
                if (this.BaseHouseId != null && this.BaseHouseId > 0)
                {
                    result = baseHouseDAO.Update(this, db, transaction);
                }
                else
                {
                    throw new NotImplementedException("This method has not yet been implemented!");
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

        #endregion
    }
}

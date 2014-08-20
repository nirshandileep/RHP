using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using RHP.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;

namespace RHP.LandlordManagement
{
    public class House: Base
    {
        public Guid? HouseId { get; set; }
        public Guid LandlordId { get; set; }
        public string StreetAddress { get; set; }
        public string City { get; set; }
        public int? StateId { get; set; }
        public string Zip { get; set; }
        public int? YearHomeBuild { get; set; }
        public int? BedRooms { get; set; }
        public int? BathRooms { get; set; }
        public decimal? LotSquareFootage { get; set; }
        public decimal? TotalSquareFootage { get; set; }
        public string UtilitiesIncludedInRent { get; set; }
        public string PropertyImagePath { get; set; }
        public decimal? RatingValue { get; set; }
        public decimal? Price { get; set; }
        public List<HouseOption> HouseOptionList { get; set; }

        public House Select(Guid houseId)
        {
            House house;
            house = RHP.Utility.Generic.GetByGUID<House>(houseId);

            return new House();
        }

        public bool Save()
        {
            bool result = false;

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbConnection connection = db.CreateConnection();
            connection.Open();
            DbTransaction transaction = connection.BeginTransaction();

            try
            {
                HouseDAO houseDAO = new HouseDAO();
                if (houseDAO.IsHouseExist(this))
                {
                    result = houseDAO.Update(this, db, transaction);
                }
                else
                {
                    result = houseDAO.Insert(this, db, transaction);
                }

                transaction.Commit();
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

        /// <summary>
        /// Delete user from the database.
        /// This only marks the user as IsDeleted
        /// </summary>
        /// <returns></returns>
        public bool Delete()
        {
            bool result = false;

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbConnection connection = db.CreateConnection();
            connection.Open();
            DbTransaction transaction = connection.BeginTransaction();

            try
            {
                result = (new HouseDAO().Delete(this, db, transaction));
                transaction.Commit();
            }
            catch (Exception ex)
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

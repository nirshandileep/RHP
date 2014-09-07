using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using RHP.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;

namespace RHP.LandlordManagement
{
   public class PartialHouse : Base
    {
         public Guid PartialHouseId { get; set; }
         public Guid PartialUserId { get; set; }
         public int StateId { get; set; }
         public string ZipCode { get; set; }
         public string City { get; set; }
         public string Address { get; set; }


         public bool Save()
         {
             bool result = false;

             Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
             DbConnection connection = db.CreateConnection();
             connection.Open();
             DbTransaction transaction = connection.BeginTransaction();

             try
             {
                 PartialHouseDAO PartialHouseDAO = new PartialHouseDAO();
                 if (PartialHouseDAO.IsHouseExist(this))
                 {
                     result = PartialHouseDAO.Update(this, db, transaction);
                 }
                 else
                 {
                     result = PartialHouseDAO.Insert(this, db, transaction);
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

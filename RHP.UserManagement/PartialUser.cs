using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using RHP.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;

namespace RHP.UserManagement
{
   public class PartialUser : Base

    {
       public string UserName { get; set; }

       public Guid PartialUserId { get; set; }
          public string Email  { get; set; }
          public string FirstName  { get; set; }
          public string MiddleName  { get; set; }
          public string LastName { get; set; }
          public string Contact  { get; set; }
          public Guid RoleId  { get; set; }
          public Guid UserId  { get; set; }
          public Guid PartialHouseId { get; set; }


          public bool Save()
          {
              bool result = false;

              Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
              DbConnection connection = db.CreateConnection();
              connection.Open();
              DbTransaction transaction = connection.BeginTransaction();

              try
              {
                  PartialUserDAO partialUserDAO = new PartialUserDAO();
                  if (partialUserDAO.IsPartialUserExist(this))
                  {
                      result = (new PartialUserDAO()).Update(this, db, transaction);
                  }
                  else
                  {
                      result = partialUserDAO.Insert(this, db, transaction);
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
    }
}

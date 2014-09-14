using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using RHP.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;

namespace RHP.StudentManagement
{
    public class StudentHouse : Base
    {
        public int StudentHouseId { get; set; }
       public Guid HouseId {get; set;}
       public Guid StudentId { get; set; }


       public static StudentHouse Select(int StudentHouseId)
       {
           StudentHouse studentHouse = new StudentHouse();
           studentHouse.StudentHouseId = StudentHouseId;
           if (!new StudentHouseDAO().Select(studentHouse))
           {
               studentHouse = null;
           }

           return studentHouse;
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
               StudentHouseDAO studentHouseDAO = new StudentHouseDAO();
               if (studentHouseDAO != null)
               {
                   result = studentHouseDAO.Insert(this, db, transaction);
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
               result = (new StudentHouseDAO().Delete(this, db, transaction));
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

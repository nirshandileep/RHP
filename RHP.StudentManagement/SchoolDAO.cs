using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data;
using RHP.Common;

namespace RHP.StudentManagement
{
    public class SchoolDAO
    {

        /*
         public Guid SchoolId { get; set; }
        public string Name { get; set; }
        public string StreetAddress { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Zip { get; set; }
        public string ContactNumber { get; set; }
        public string Email { get; set; }
        public string Location { get; set; }
        public string WebsiteURL { get; set; }
         */
        public DataSet SelectAllDataset()
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand command = db.GetStoredProcCommand("usp_SchoolSelectAll");
            return db.ExecuteDataSet(command);
        }

        public bool Insert(School school)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            return this.Insert(school, db, null);
        }

        public bool Insert(School school, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_SchoolInsert");

            db.AddInParameter(command, "SchoolId", DbType.Guid, Guid.NewGuid());
            db.AddInParameter(command, "Name", DbType.String, school.Name);
            db.AddInParameter(command, "StreetAddress", DbType.String, school.StreetAddress);
            db.AddInParameter(command, "City", DbType.String, school.City);
            db.AddInParameter(command, "State", DbType.String, school.State);
            db.AddInParameter(command, "Zip", DbType.String, school.Zip);
            db.AddInParameter(command, "ContactNumber", DbType.String, school.ContactNumber);
            db.AddInParameter(command, "Email", DbType.String, school.Email);
            db.AddInParameter(command, "Location", DbType.String, school.Location);
            db.AddInParameter(command, "WebsiteURL", DbType.String, school.WebsiteURL);
            db.AddInParameter(command, "RatingValue", DbType.Decimal, school.RatingValue);
            db.AddInParameter(command, "CreatedBy", DbType.Guid, school.CreatedBy);

            db.AddOutParameter(command, "CreatedDate", DbType.DateTime, 30);

            if (transaction == null)
            {
                db.ExecuteNonQuery(command);
            }
            else
            {
                db.ExecuteNonQuery(command, transaction);
            }

            school.CreatedDate = Convert.ToDateTime(db.GetParameterValue(command, "CreatedDate").ToString());
            school.UpdatedDate = school.CreatedDate;

            return true;
        }

        public bool Update(School school)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            return this.Update(school, db, null);
        }

        public bool Update(School school,Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_SchoolUpdate");

            db.AddInParameter(command, "SchoolId", DbType.Guid, school.SchoolId);
            db.AddInParameter(command, "Name", DbType.String, school.Name);
            db.AddInParameter(command, "StreetAddress", DbType.String, school.StreetAddress);
            db.AddInParameter(command, "City", DbType.String, school.City);
            db.AddInParameter(command, "State", DbType.String, school.State);
            db.AddInParameter(command, "Zip", DbType.String, school.Zip);
            db.AddInParameter(command, "ContactNumber", DbType.String, school.ContactNumber);
            db.AddInParameter(command, "Email", DbType.String, school.Email);
            db.AddInParameter(command, "Location", DbType.String, school.Location);
            db.AddInParameter(command, "WebsiteURL", DbType.String, school.WebsiteURL);
            db.AddInParameter(command, "UpdatedBy", DbType.Guid, school.UpdatedBy);
            db.AddInParameter(command, "RatingValue", DbType.Decimal, school.RatingValue);
            db.AddOutParameter(command, "UpdatedDate", DbType.DateTime, 30);

            if (transaction == null)
            {
                db.ExecuteNonQuery(command);
            }
            else
            {
                db.ExecuteNonQuery(command, transaction);
            }

            school.UpdatedDate = Convert.ToDateTime(db.GetParameterValue(command, "UpdatedDate").ToString());

            return true;
        }

        public bool Delete(School school)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            return this.Delete(school, db, null);
        }

        public bool Delete(School school, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_SchoolDelete");
            db.AddInParameter(command, "SchoolId", DbType.Guid, school.SchoolId);
            db.AddInParameter(command, "UpdatedBy", DbType.Guid, school.UpdatedBy); 
            
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

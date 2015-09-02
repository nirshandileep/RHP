using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using RHP.Common;
using System.Data;

namespace RHP.Survey
{
    public class SurveyDAO
    {
        public static bool Insert(SurveyEntity survey)
        {
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            return SurveyDAO.Insert(survey, db, null);
        }

        public static bool Insert(SurveyEntity survey, Database db, DbTransaction transaction)
        {
            DbCommand command = db.GetStoredProcCommand("usp_SurveyInsert");

            db.AddInParameter(command, "MyUniversity", DbType.String, survey.MyUniversity);
            db.AddInParameter(command, "UniversityName", DbType.String, survey.UniversityName);
            db.AddInParameter(command, "UniversityAddress", DbType.String, survey.UniversityAddress);
            db.AddInParameter(command, "TypeOfResidence", DbType.String, survey.TypeOfResidence);
            db.AddInParameter(command, "TypeOfResidenceOption", DbType.String, survey.TypeOfResidenceOption);
            db.AddInParameter(command, "NameOfResidence", DbType.String, survey.NameOfResidence);
            db.AddInParameter(command, "AddressOfResidence", DbType.String, survey.AddressOfResidence);
            db.AddInParameter(command, "Email", DbType.String, survey.Email);

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

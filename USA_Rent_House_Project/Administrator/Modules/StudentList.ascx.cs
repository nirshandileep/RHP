using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using RHP.SessionManager;
using RHP.Common;
using RHP.StudentManagement;

namespace USA_Rent_House_Project.Administrator.Modules
{
    public partial class StudentList : System.Web.UI.UserControl
    {
        private DataSet dsStudents
        {
            get
            {
                DataSet ds;
                ds = SessionManager.GetSession<DataSet>(Constants.SESSION_STUDENT_LIST);

                if (ds == null)
                {
                    ds = new StudentDAO().SelectAllDataset();
                    ds.Tables[0].PrimaryKey = new DataColumn[] { ds.Tables[0].Columns["StudentId"] };
                    Session[Constants.SESSION_STUDENT_LIST] = ds;
                }

                return ds;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadGrid();
        }

        private void LoadGrid()
        {
            gvStudentList.SettingsText.ConfirmDelete = Messages.Delete_Confirm;
            gvStudentList.DataSource = dsStudents.Tables[0];
            gvStudentList.DataBind();
        }
          
    }
}
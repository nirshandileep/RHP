using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace USA_Rent_House_Project.Administrator.Modules
{
    public partial class StudentList : System.Web.UI.UserControl
    {
        public DataSet dsStudents { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            gvStudentList.DataSource = dsStudents;
            gvStudentList.DataBind();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SM = RHP.StudentManagement;

namespace USA_Rent_House_Project.Administrator
{
    public partial class Student : System.Web.UI.Page
    {
       // SM.StudentSearch StudentSearchParameters = new SM.StudentSearch();

        protected void Page_Load(object sender, EventArgs e)
        {
            //These parameter can be set to search criteria
            //StudentSearchParameters.SchoolId = null;
            //StudentSearchParameters.StudentId = null;

            //StudentListID.dsStudents = SM.StudentDAO.Search(StudentSearchParameters);
        }
    }
}
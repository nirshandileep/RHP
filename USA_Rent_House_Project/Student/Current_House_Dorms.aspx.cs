using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.Utility;

namespace USA_Rent_House_Project.Student
{
    public partial class Current_House_Dorms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int houseType = 1;
            //Get it from query string
            string housetype = Utility.GetQueryStringValueByKey(Request, "housetype");
            if (!string.IsNullOrEmpty(housetype))
            {
                Int32.TryParse(housetype, out houseType);
                Current_House_Dorms1.HouseTypeId = houseType;
            }
            else
            {
                //Response redirect back to previous page
            }
            
        }
    }
}
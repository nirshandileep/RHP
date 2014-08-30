using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;

namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Current_House_RoomMate_info : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateRommateButton_Click(object sender, EventArgs e)
        {
            GridviewRoommatelist.DataSource = CreateDataSource();
            GridviewRoommatelist.DataBind();

            if (ViewState["CurrentTable"] != null)
            {
                SaveRommateButton.Enabled = false;
            }
            else
            {
                SaveRommateButton.Enabled = true;
            }
        }

        ICollection CreateDataSource()
        {
            DataTable dt = null;
            DataRow dr;
            DataTable dtCurrentTable = null;

            if (ViewState["CurrentTable"] != null)
            {
                dtCurrentTable = (DataTable)ViewState["CurrentTable"];
                dt = (DataTable)ViewState["CurrentTable"];

            }
            else
            {
                dtCurrentTable = new DataTable();
                dt = new DataTable();

                // Define the columns of the table.
                dt.Columns.Add(new DataColumn("Email", typeof(String)));
                dt.Columns.Add(new DataColumn("FirstName", typeof(String)));
                dt.Columns.Add(new DataColumn("MiddleName", typeof(String)));
                dt.Columns.Add(new DataColumn("LastName", typeof(String)));
                dt.Columns.Add(new DataColumn("Mobile", typeof(String)));
            }

            // Populate the table with sample values.
           
                dr = dt.NewRow();

                dr[0] = Email.Text.Trim();
                dr[1] = FirstName.Text.Trim();
                dr[2] = MiddleName.Text.Trim();
                dr[3] = LastName.Text.Trim();
                dr[4] = Mobile.Text.Trim();
                dt.Rows.Add(dr);
            
            DataView dv = new DataView(dt);

            ViewState["CurrentTable"] =  dt;
            return dv;
        }

        protected void SaveRommateButton_Click(object sender, EventArgs e)
        {

        }




    }
}
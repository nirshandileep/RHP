using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;
using RHP.UserManagement;
using RHP.Common;
using RHP.SessionManager;
using System.Web.Security;

namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Current_House_RoomMate_info : System.Web.UI.UserControl
    {

        private User _user;

        public User user
        {
            get
            {
                _user = SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER);
                if (_user == null)
                {
                    _user = new User();
                }
                Session[Constants.SESSION_LOGGED_USER] = _user;
                return _user;
            }
            set
            {
                _user = value;
                Session[Constants.SESSION_LOGGED_USER] = _user;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }


      
        protected void CreateRommateButton_Click(object sender, EventArgs e)
        {
            GridviewRoommatelist.DataSource = CreateDataSource();
            GridviewRoommatelist.DataBind();

            clear();

            if (ViewState["CurrentTable"] != null)
            {
                SaveRommateButton.Enabled = true;
            }
            else
            {
                SaveRommateButton.Enabled = false;
               
            }
        }

        public void clear()
        {
            Email.Text = "";
            FirstName.Text = "";
            MiddleName.Text = "";
            LastName.Text= "";
            Mobile.Text = "";
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
                dt.Columns.Add(new DataColumn("First Name", typeof(String)));
                dt.Columns.Add(new DataColumn("Middl eName", typeof(String)));
                dt.Columns.Add(new DataColumn("Last Name", typeof(String)));
                dt.Columns.Add(new DataColumn("Contact No", typeof(String)));
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

        protected void RemoveRoommate_Click(object sender, EventArgs e)
        {

            LinkButton lb = (LinkButton)sender;

            GridViewRow gvRow = (GridViewRow)lb.NamingContainer;

            int rowID = gvRow.RowIndex; //+1;

            if (ViewState["CurrentTable"] != null)
            {

                DataTable dt = (DataTable)ViewState["CurrentTable"];

                if (dt.Rows.Count >= 1)
                {

                    if (gvRow.RowIndex <= dt.Rows.Count - 1)
                    {

                        //Remove the Selected Row data

                        dt.Rows.Remove(dt.Rows[rowID]);

                    }

                }

                //Store the current data in ViewState for future reference

                ViewState["CurrentTable"] = dt;

                //Re bind the GridView for the updated data

                GridviewRoommatelist.DataSource = dt;
                GridviewRoommatelist.DataBind();

            }


        }

        protected void SaveRommateButton_Click(object sender, EventArgs e)
        {
            _user.UserId = Guid.NewGuid();
            _user.Email = Email.Text.Trim();
            _user.FirstName = FirstName.Text.Trim();
            _user.MiddleName = MiddleName.Text.Trim();
            _user.LastName = LastName.Text.Trim();
            _user.BestContactNumber = Mobile.Text.Trim();
            _user.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
            _user.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
            _user.UserId = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());

           // _user.Save();
        }

        public bool Save()
        {
            throw new NotImplementedException("Write the code");
        }


    }
}
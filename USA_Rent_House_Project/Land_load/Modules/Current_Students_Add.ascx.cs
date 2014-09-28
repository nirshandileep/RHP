using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.StudentManagement;
using RHP.LandlordManagement;
using RHP.UserManagement;
using RHP.SessionManager;
using RHP.Common;
using System.Collections;
using System.Data;
using System.Web.Security;
using RHP.Utility;

namespace USA_Rent_House_Project.Land_load.Modules
{
    public partial class Current_Students_Add : System.Web.UI.UserControl
    {


        StudentHouse studentHouse = new StudentHouse();
        House house = new House();

        public Guid? LandlordId
        {
            get
            {
                if (string.IsNullOrEmpty(hdnLandlordId.Value.Trim()))
                {
                    return null;
                }
                else
                {
                    return Guid.Parse(hdnLandlordId.Value.Trim());
                }
            }
            set
            {
                if (value.HasValue)
                {
                    hdnLandlordId.Value = value.Value.ToString();
                }
                else
                {
                    hdnLandlordId.Value = string.Empty;
                }

            }
        }

        public Guid? HouseId
        {
            get
            {
                if (string.IsNullOrEmpty(hdHouseId.Value.Trim()))
                {
                    return null;
                }
                else
                {
                    return Guid.Parse(hdHouseId.Value.Trim());
                }
            }
            set
            {
                if (value.HasValue)
                {
                    hdHouseId.Value = value.Value.ToString();
                }
                else
                {
                    hdHouseId.Value = string.Empty;
                }

            }
        }

        private User _user;

        public User user
        {
            get
            {
                _user = SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER);
                if (_user == null)
                {
                    _user = new User(); //
                    
                    _user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
                }
                else
                {

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

            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                string AccessCode = Utility.GetQueryStringValueByKey(Request, "AccessCode");

                if (AccessCode != string.Empty && AccessCode != null)
                {
                    try
                    {
                        hdHouseId.Value = AccessCode;
                    }
                    catch (Exception ex)
                    { }
                }

                LoadStudent();
            }

          
        }

        public void LoadStudent()
        {


            if (HouseId.HasValue)
            {
               // HouseId = Guid.Parse("8313D02D-FA75-474A-A93B-0EFD3B817A88");

                List<User> userList = User.SelectUserByHouseId("HouseId", HouseId.Value, "RoleName", "student");

                DataListStudentList.DataSource = userList;
                DataListStudentList.DataBind();
            }
        }

        protected void CreateRommateButton_Click(object sender, EventArgs e)
        {
            GridviewRoommatelist.DataSource = CreateDataSource();
            GridviewRoommatelist.DataBind();

            clear();

            if (ViewState["CurrentTable"] != null)
            {
                //  SaveRommateButton.Enabled = true;

            }
            else
            {
                //  SaveRommateButton.Enabled = false;

            }
        }

        public void clear()
        {
            Email.Text = "";
            FirstName.Text = "";
            MiddleName.Text = "";
            LastName.Text = "";
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

            ViewState["CurrentTable"] = dt;
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


        public bool Save()
        {
            bool result = true;

            aspnet_Roles aspnet_Roles_ = new aspnet_Roles();

            aspnet_Roles_ = aspnet_Roles.Select("student");

            foreach (GridViewRow row in GridviewRoommatelist.Rows)
            {
                user.PersonalEmail = row.Cells[1].Text;
                user.FirstName = row.Cells[2].Text;
                user.MiddleName = row.Cells[3].Text;
                user.LastName = row.Cells[4].Text;
                user.BestContactNumber = row.Cells[5].Text;

                user.UserId = Guid.NewGuid();
                user.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                user.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                user.IsPartialUser = true;
                user.HouseId = HouseId.Value;
                user.RoleId = aspnet_Roles_.RoleId;

                if (result = user.Save())
                {
                    Save_Student_House();

                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Success + "'); window.location = '/Land_load/Land_load_Profile.aspx';}", true);

                }
            }
            return result;
        }

        public void Save_Student_House()
        {
            // save current house for student
            user.HouseId = HouseId.Value;
            user.UpdateHouse();

            // log house details for futer use
            studentHouse.HouseId = HouseId.Value;
            studentHouse.UserId = user.UserId.Value;
            studentHouse.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
            studentHouse.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());

            studentHouse.Save();


        }

        public bool Next(bool val)
        {
            if (val)
            {
                RoommateAdd.Visible = false;
            }
            return true;
        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            Save();
        }
    }
}
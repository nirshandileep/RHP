using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using RHP.SessionManager;
using RHP.Common;
using RHP.LandlordManagement;

namespace USA_Rent_House_Project.Administrator.Modules
{
    public partial class LandloadList : System.Web.UI.UserControl
    {
        private DataSet dsLandlords
        {
            get
            {
                DataSet ds;
                ds = SessionManager.GetSession<DataSet>(Constants.SESSION_LANDLOAD_LIST);

                if (ds == null)
                {
                    ds = new LandlordDAO().SelectAllDataset();
                    ds.Tables[0].PrimaryKey = new DataColumn[] { ds.Tables[0].Columns["LandlordId"] };
                    Session[Constants.SESSION_LANDLOAD_LIST] = ds;
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
            DataSet ds;
            ds = new LandlordDAO().SelectAllDataset();
            ds.Tables[0].PrimaryKey = new DataColumn[] { ds.Tables[0].Columns["LandlordId"] };
            gvLandloadList.SettingsText.ConfirmDelete = Messages.Delete_Confirm;
            gvLandloadList.DataSource = ds.Tables[0];
            gvLandloadList.DataBind();
        }

        //Landlord.LandlordId,Landlord.LandlordName, aspnet_Users.UserName, [User].Name, [User].StreetAddress, [User].City, [User].State, [User].Zip, [User].BestContactNumber, 
        //              [User].DriversLicenseNumber, [User].RatingValue, [User].IsDeleted, [User].IsFBUser, aspnet_Membership.LoweredEmail, 
        //              aspnet_Membership.PasswordQuestion
    }
}
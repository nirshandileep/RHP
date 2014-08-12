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
    public partial class PropertyList : System.Web.UI.UserControl
    {
        private DataSet dsProperty
        {
            get
            {
                DataSet ds;
                ds = SessionManager.GetSession<DataSet>(Constants.SESSION_HOUSE_LIST);

                if (ds == null)
                {
                    ds = new HouseDAO().SelectAllDataset();
                    ds.Tables[0].PrimaryKey = new DataColumn[] { ds.Tables[0].Columns["HouseId"] };
                    Session[Constants.SESSION_HOUSE_LIST] = ds;
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
            gvPropertyList.SettingsText.ConfirmDelete = Messages.Delete_Confirm;
            gvPropertyList.DataSource = dsProperty.Tables[0];
            gvPropertyList.DataBind();
        }

    }
}
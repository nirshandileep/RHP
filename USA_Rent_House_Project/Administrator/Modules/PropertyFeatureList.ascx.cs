using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web.ASPxGridView;
using System.Data;
using RHP.SessionManager;
using RHP.Common;
using RHP.LandlordManagement;

namespace USA_Rent_House_Project.Administrator.Modules
{
    public partial class PropertyFeatureList : System.Web.UI.UserControl
    {

        private DataSet dsFeatures
        {
            get
            {
                DataSet ds;
                ds = SessionManager.GetSession<DataSet>(Constants.SESSION_FEATURE_LIST);

                if (ds == null)
                {
                    ds = new PropertyOptionDAO().SelectAllDataset();
                    ds.Tables[0].PrimaryKey = new DataColumn[] { ds.Tables[0].Columns["LandlordId"] };
                    Session[Constants.SESSION_FEATURE_LIST] = ds;
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
            gvFeatureList.SettingsText.ConfirmDelete = Messages.Delete_Confirm;
            gvFeatureList.DataSource = dsFeatures.Tables[0];
            gvFeatureList.DataBind();
        }


         protected void gvFeatureList_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
        {
            ASPxGridView gridView = sender as ASPxGridView;

            PropertyOption PropertyOption = new PropertyOption();
            PropertyOption.Name = e.NewValues["Name"].ToString().Trim();
            PropertyOption.Description = e.NewValues["Description"].ToString().Trim();
            PropertyOption.OptionCategoryId =Convert.ToInt16( e.NewValues["OptionCategoryId"].ToString().Trim());
            PropertyOption.ParentOptionId = Convert.ToInt16(e.NewValues["ParentOptionId"].ToString().Trim());
            PropertyOption.IsDeleted = Convert.ToBoolean(e.NewValues["IsDeleted"].ToString().Trim());
            PropertyOption.IsMultiSelect = Convert.ToBoolean(e.NewValues["IsMultiSelect"].ToString().Trim());
          
           
            gridView.CancelEdit();
            e.Cancel = true;

            if (PropertyOption.Save())
            {
                //Show Success message
            }
            else
            {
                //Error message
            }

            LoadGrid();
        }

        protected void gvFeatureList_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {
            ASPxGridView gridView = sender as ASPxGridView;

            PropertyOption PropertyOption = new PropertyOption();
            PropertyOption.OptionId = Convert.ToInt16(e.NewValues["OptionId"].ToString().Trim());
            PropertyOption.Name = e.NewValues["Name"].ToString().Trim();
            PropertyOption.Description = e.NewValues["Description"].ToString().Trim();
            PropertyOption.OptionCategoryId = Convert.ToInt16(e.NewValues["OptionCategoryId"].ToString().Trim());
            PropertyOption.ParentOptionId = Convert.ToInt16(e.NewValues["ParentOptionId"].ToString().Trim());
            PropertyOption.IsDeleted = Convert.ToBoolean(e.NewValues["IsDeleted"].ToString().Trim());
            PropertyOption.IsMultiSelect = Convert.ToBoolean(e.NewValues["IsMultiSelect"].ToString().Trim());
            gridView.CancelEdit();
            e.Cancel = true;

            if (PropertyOption.Save())
            {
                //Show Success message
            }
            else
            {
                //Error message
            }
            LoadGrid();
        }

        protected void gvFeatureList_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
        {
            PropertyOption PropertyOption = new PropertyOption();

            int i = gvFeatureList.FindVisibleIndexByKeyValue(e.Keys[gvFeatureList.KeyFieldName]);
            e.Cancel = true;

            PropertyOption.OptionId = Convert.ToInt16(e.Keys[gvFeatureList.KeyFieldName]);

            if (new PropertyOptionDAO().Delete(PropertyOption))
            {
                //Show Success message
            }
            else
            {
                //Error message
            }
            LoadGrid();
        }

        protected void gvFeatureList_CommandButtonInitialize(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewCommandButtonEventArgs e)
        {
            if (e.VisibleIndex == -1) return;

            switch (e.ButtonType)
            {
                //Show hide buttons based on user role
                //case ColumnCommandButtonType.New:
                //    e.Visible = SessionHandler.LoggedUser.IsUserAuthorised(Enums.Rights.GeneralManagement_Gaurantee_Add);
                //    break;
                //case ColumnCommandButtonType.Edit:
                //    e.Visible = SessionHandler.LoggedUser.IsUserAuthorised(Enums.Rights.GeneralManagement_Gaurantee_Edit);
                //    break;
                //case ColumnCommandButtonType.Delete:
                //    e.Visible = SessionHandler.LoggedUser.IsUserAuthorised(Enums.Rights.GeneralManagement_Gaurantee_Delete);
                //    break;
            }
        }
    }
}
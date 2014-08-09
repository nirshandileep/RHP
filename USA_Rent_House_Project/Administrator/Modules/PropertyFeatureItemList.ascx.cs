using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using RHP.Common;
using RHP.SessionManager;
using DevExpress.Web.ASPxGridView;
using RHP.LandlordManagement;
using System.Web.Security;

namespace USA_Rent_House_Project.Administrator.Modules
{
    public partial class PropertyFeatureItemList : System.Web.UI.UserControl
    {
      
        DataSet dsFeatureItems = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {        
            Session[Constants.SESSION_FEATURE_ITEMS_LIST] = dsFeatureItems;
            LoadGrid();
        }

        private void LoadGrid()
        {
            dsFeatureItems = SessionManager.GetSession<DataSet>(Constants.SESSION_FEATURE_LIST);
            gvFeatureItemList.SettingsText.ConfirmDelete = Messages.Delete_Confirm;
            dsFeatureItems.Tables[0].PrimaryKey = new DataColumn[] { dsFeatureItems.Tables[0].Columns["OptionId"] };
            gvFeatureItemList.DataSource = dsFeatureItems.Tables[0];
            gvFeatureItemList.DataBind();
        }


        protected void gvFeatureItemList_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
        {
            ASPxGridView gridView = sender as ASPxGridView;

            PropertyOptionItem propertyOptionItem = new PropertyOptionItem();
            propertyOptionItem.Name = e.NewValues["Name"].ToString().Trim();
            propertyOptionItem.Description = e.NewValues["Description"].ToString().Trim();
            propertyOptionItem.IsDeleted = Convert.ToBoolean(e.NewValues["IsDeleted"].ToString().Trim());
            propertyOptionItem.OptionId = Convert.ToInt16(e.NewValues["OptionId"].ToString().Trim());
            propertyOptionItem.CreatedBy = (Guid)Membership.GetUser().ProviderUserKey;
            propertyOptionItem.UpdatedBy = (Guid)Membership.GetUser().ProviderUserKey;
           
            gridView.CancelEdit();
            e.Cancel = true;

            if (propertyOptionItem.Save())
            {
                //Show Success message
            }
            else
            {
                //Error message
            }

            LoadGrid();
        }

        protected void gvFeatureItemList_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {
            ASPxGridView gridView = sender as ASPxGridView;

            PropertyOptionItem propertyOptionItem = new PropertyOptionItem();
            propertyOptionItem.OptionItemId = Convert.ToInt16(e.NewValues["OptionItemId"].ToString().Trim());
            propertyOptionItem.Name = e.NewValues["Name"].ToString().Trim();
            propertyOptionItem.Description = e.NewValues["Description"].ToString().Trim();
            propertyOptionItem.IsDeleted = Convert.ToBoolean(e.NewValues["IsDeleted"].ToString().Trim());
            propertyOptionItem.OptionId = Convert.ToInt16(e.NewValues["OptionId"].ToString().Trim());
            propertyOptionItem.CreatedBy = (Guid)Membership.GetUser().ProviderUserKey;
            propertyOptionItem.UpdatedBy = (Guid)Membership.GetUser().ProviderUserKey;

            gridView.CancelEdit();
            e.Cancel = true;


            if (propertyOptionItem.Save())
            {
                //Show Success message
            }
            else
            {
                //Error message
            }
            LoadGrid();
        }

        protected void gvFeatureItemList_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
        {
            PropertyOptionItem propertyOptionItem = new PropertyOptionItem();

            int i = gvFeatureItemList.FindVisibleIndexByKeyValue(e.Keys[gvFeatureItemList.KeyFieldName]);
            e.Cancel = true;

            propertyOptionItem.OptionItemId = Convert.ToInt16(e.Keys[gvFeatureItemList.KeyFieldName]);

            if (new PropertyOptionItemDAO().Delete(propertyOptionItem))
            {
                //Show Success message
            }
            else
            {
                //Error message
            }
            LoadGrid();
        }

        protected void gvFeatureItemList_CommandButtonInitialize(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewCommandButtonEventArgs e)
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
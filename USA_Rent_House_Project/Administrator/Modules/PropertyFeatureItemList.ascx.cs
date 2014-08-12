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
using RHP.UserManagement;
using RHP.Utility;
using DevExpress.Web.ASPxEditors;

namespace USA_Rent_House_Project.Administrator.Modules
{
    public partial class PropertyFeatureItemList : System.Web.UI.UserControl
    {

        List<Option> option = new List<Option>();

        private DataSet dsFeatureItems
        {
            get
            {
                DataSet ds;
                ds = SessionManager.GetSession<DataSet>(Constants.SESSION_FEATURE_ITEMS_LIST);

                if (ds == null)
                {
                    ds = new OptionItemDAO().SelectAllDataset();
                    ds.Tables[0].PrimaryKey = new DataColumn[] { ds.Tables[0].Columns["OptionItemId"] };
                    Session[Constants.SESSION_FEATURE_ITEMS_LIST] = ds;
                }

                return ds;
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

        protected void Page_Init(object sender, EventArgs e)
        {
            LoadGrid();

            option = Generic.GetAll<Option>();
            ((GridViewDataComboBoxColumn)gvFeatureItemList.Columns["OptionId"]).PropertiesComboBox.DataSource = option;

        }




        protected void Page_Load(object sender, EventArgs e)
        {
            gvFeatureItemList.DataBind();
        }

        private void LoadGrid()
        {
            gvFeatureItemList.SettingsText.ConfirmDelete = Messages.Delete_Confirm;
            gvFeatureItemList.DataSource = dsFeatureItems.Tables[0];
            gvFeatureItemList.DataBind();
        }


        protected void gvFeatureItemList_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
        {
            ASPxGridView gridView = sender as ASPxGridView;

            OptionItem optionItem = new OptionItem();
            optionItem.Name = e.NewValues["Name"].ToString().Trim();
            optionItem.Description = e.NewValues["Description"].ToString().Trim();
            optionItem.IsDeleted = Convert.ToBoolean(e.NewValues["IsDeleted"].ToString().Trim());
            optionItem.OptionId = Convert.ToInt16(e.NewValues["OptionId"].ToString().Trim());
            optionItem.CreatedBy = (Guid)Membership.GetUser().ProviderUserKey;
            optionItem.UpdatedBy = (Guid)Membership.GetUser().ProviderUserKey;
           
            gridView.CancelEdit();
            e.Cancel = true;

            if (optionItem.Save())
            {
                //Show Success message
            }
            else
            {
                //Error message
            }
            Session[Constants.SESSION_FEATURE_ITEMS_LIST] = new OptionItemDAO().SelectAllDataset();
            LoadGrid();
        }

        protected void gvFeatureItemList_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {
            ASPxGridView gridView = sender as ASPxGridView;

            OptionItem optionItem = new OptionItem();
            optionItem.OptionItemId = Convert.ToInt16(e.Keys[gvFeatureItemList.KeyFieldName]);  //Convert.ToInt16(e.NewValues["OptionItemId"].ToString().Trim());
            optionItem.Name = e.NewValues["Name"].ToString().Trim();
            optionItem.Description = e.NewValues["Description"].ToString().Trim();
            optionItem.IsDeleted = Convert.ToBoolean(e.NewValues["IsDeleted"].ToString().Trim());
            optionItem.OptionId = Convert.ToInt16(e.NewValues["OptionId"].ToString().Trim());
            optionItem.CreatedBy = (Guid)Membership.GetUser().ProviderUserKey;
            optionItem.UpdatedBy = (Guid)Membership.GetUser().ProviderUserKey;

            gridView.CancelEdit();
            e.Cancel = true;


            if (optionItem.Save())
            {
                //Show Success message
            }
            else
            {
                //Error message
            }
            Session[Constants.SESSION_FEATURE_ITEMS_LIST] = new OptionItemDAO().SelectAllDataset();
            LoadGrid();
        }

        protected void gvFeatureItemList_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
        {
            OptionItem optionItem = new OptionItem();

            int i = gvFeatureItemList.FindVisibleIndexByKeyValue(e.Keys[gvFeatureItemList.KeyFieldName]);
            e.Cancel = true;

            optionItem.OptionItemId = Convert.ToInt16(e.Keys[gvFeatureItemList.KeyFieldName]);

            if (new OptionItemDAO().Delete(optionItem))
            {
                //Show Success message
            }
            else
            {
                //Error message
            }
            Session[Constants.SESSION_FEATURE_ITEMS_LIST] = new OptionItemDAO().SelectAllDataset();
            LoadGrid();
        }

        protected void gvFeatureItemList_CellEditorInitialize(object sender, ASPxGridViewEditorEventArgs e)
        {
            if (e.Column.FieldName != "OptionId") return;

            ASPxComboBox combo = e.Editor as ASPxComboBox;
            combo.DataBindItems();
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
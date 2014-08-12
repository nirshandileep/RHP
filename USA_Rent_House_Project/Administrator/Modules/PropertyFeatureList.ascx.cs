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
using RHP.Utility;
using DevExpress.Web.ASPxEditors;
using RHP.UserManagement;
using System.Web.Security;

namespace USA_Rent_House_Project.Administrator.Modules
{
    public partial class PropertyFeatureList : System.Web.UI.UserControl
    {

        List<OptionCategory> optionCategories = new List<OptionCategory>();

        private DataSet dsFeatures
        {
            get
            {
                DataSet ds;
                ds = SessionManager.GetSession<DataSet>(Constants.SESSION_FEATURE_LIST);

                if (ds == null)
                {
                    ds = new PropertyOptionDAO().SelectAllDataset();
                    ds.Tables[0].PrimaryKey = new DataColumn[] { ds.Tables[0].Columns["OptionId"] };
                    Session[Constants.SESSION_FEATURE_LIST] = ds;
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
            
            optionCategories = Generic.GetAll<OptionCategory>();
            ((GridViewDataComboBoxColumn)gvFeatureList.Columns["OptionCategoryId"]).PropertiesComboBox.DataSource = optionCategories;

        }
       
        protected void Page_Load(object sender, EventArgs e)
        {
            gvFeatureList.DataBind();
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

            PropertyOption propertyOption = new PropertyOption();
            propertyOption.Name = e.NewValues["Name"].ToString().Trim();
            propertyOption.Description = e.NewValues["Description"].ToString().Trim();
            propertyOption.OptionCategoryId =Convert.ToInt16( e.NewValues["OptionCategoryId"].ToString().Trim());
            propertyOption.IsMultiSelect = Convert.ToBoolean(e.NewValues["IsMultiSelect"]);
            propertyOption.CreatedBy = (Guid)Membership.GetUser().ProviderUserKey; //SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER).UserId.Value;
            propertyOption.UpdatedBy = (Guid)Membership.GetUser().ProviderUserKey; //SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER).UserId.Value;
           
            gridView.CancelEdit();
            e.Cancel = true;

            if (propertyOption.Save())
            {
                //Show Success message
            }
            else
            {
                //Error message
            }
            Session[Constants.SESSION_FEATURE_LIST] = new PropertyOptionDAO().SelectAllDataset();
            LoadGrid();
        }

        protected void gvFeatureList_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {
            ASPxGridView gridView = sender as ASPxGridView;

            PropertyOption propertyOption = new PropertyOption();
            propertyOption.OptionId = Convert.ToInt16(e.Keys[gvFeatureList.KeyFieldName]); //e.NewValues["OptionId"].ToString().Trim());
            propertyOption.Name = e.NewValues["Name"].ToString().Trim();
            propertyOption.Description = e.NewValues["Description"].ToString().Trim();
            propertyOption.OptionCategoryId = Convert.ToInt16(e.NewValues["OptionCategoryId"].ToString().Trim());
            //propertyOption.ParentOptionId = Convert.ToInt16(e.NewValues["ParentOptionId"].ToString().Trim());
            //propertyOption.IsDeleted = Convert.ToBoolean(e.NewValues["IsDeleted"].ToString().Trim());
            propertyOption.IsMultiSelect = Convert.ToBoolean(e.NewValues["IsMultiSelect"]);  //Convert.ToBoolean(e.NewValues["IsMultiSelect"].ToString().Trim());
            propertyOption.CreatedBy = (Guid)Membership.GetUser().ProviderUserKey; //SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER).UserId.Value;
            propertyOption.UpdatedBy = (Guid)Membership.GetUser().ProviderUserKey; //SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER).UserId.Value;

            gridView.CancelEdit();
            e.Cancel = true;

            if (propertyOption.Save())
            {
                //Show Success message
            }
            else
            {
                //Error message
            }
            Session[Constants.SESSION_FEATURE_LIST] = new PropertyOptionDAO().SelectAllDataset();
            LoadGrid();

        }

        protected void gvFeatureList_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
        {
            PropertyOption propertyOption = new PropertyOption();

            int i = gvFeatureList.FindVisibleIndexByKeyValue(e.Keys[gvFeatureList.KeyFieldName]);
            e.Cancel = true;

            propertyOption.OptionId = Convert.ToInt16(e.Keys[gvFeatureList.KeyFieldName]);
            propertyOption.UpdatedBy = (Guid)Membership.GetUser().ProviderUserKey;  //SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER).UserId.Value;
            propertyOption.IsDeleted = true;
            if (new PropertyOptionDAO().Delete(propertyOption))
            {
                //Show Success message
            }
            else
            {
                //Error message
            }
            Session[Constants.SESSION_FEATURE_LIST] = new PropertyOptionDAO().SelectAllDataset();
            LoadGrid();
        }

        protected void gvFeatureList_CellEditorInitialize(object sender, ASPxGridViewEditorEventArgs e)
        {
            if (e.Column.FieldName != "OptionCategoryId") return;

            ASPxComboBox combo = e.Editor as ASPxComboBox;
            combo.DataBindItems();
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
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
                    ds = new OptionDAO().SelectAllDataset();
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

            Option Option = new Option();
            Option.Name = e.NewValues["Name"].ToString().Trim();
            Option.Description = e.NewValues["Description"].ToString().Trim();
            Option.OptionCategoryId = Convert.ToInt16(e.NewValues["OptionCategoryId"].ToString().Trim());
            Option.IsMultiSelect = Convert.ToBoolean(e.NewValues["IsMultiSelect"]);
            Option.CreatedBy = (Guid)Membership.GetUser().ProviderUserKey; //SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER).UserId.Value;
            Option.UpdatedBy = (Guid)Membership.GetUser().ProviderUserKey; //SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER).UserId.Value;
           
            gridView.CancelEdit();
            e.Cancel = true;

            if (Option.Save())
            {
                //Show Success message
            }
            else
            {
                //Error message
            }
            Session[Constants.SESSION_FEATURE_LIST] = new OptionDAO().SelectAllDataset();
            LoadGrid();
        }

        protected void gvFeatureList_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {
            ASPxGridView gridView = sender as ASPxGridView;

            Option option = new Option();
            option.OptionId = Convert.ToInt16(e.Keys[gvFeatureList.KeyFieldName]); //e.NewValues["OptionId"].ToString().Trim());
            option.Name = e.NewValues["Name"].ToString().Trim();
            option.Description = e.NewValues["Description"].ToString().Trim();
            option.OptionCategoryId = Convert.ToInt16(e.NewValues["OptionCategoryId"].ToString().Trim());
            //propertyOption.ParentOptionId = Convert.ToInt16(e.NewValues["ParentOptionId"].ToString().Trim());
            //propertyOption.IsDeleted = Convert.ToBoolean(e.NewValues["IsDeleted"].ToString().Trim());
            option.IsMultiSelect = Convert.ToBoolean(e.NewValues["IsMultiSelect"]);  //Convert.ToBoolean(e.NewValues["IsMultiSelect"].ToString().Trim());
            option.CreatedBy = (Guid)Membership.GetUser().ProviderUserKey; //SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER).UserId.Value;
            option.UpdatedBy = (Guid)Membership.GetUser().ProviderUserKey; //SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER).UserId.Value;

            gridView.CancelEdit();
            e.Cancel = true;

            if (option.Save())
            {
                //Show Success message
            }
            else
            {
                //Error message
            }
            Session[Constants.SESSION_FEATURE_LIST] = new OptionDAO().SelectAllDataset();
            LoadGrid();

        }

        protected void gvFeatureList_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
        {
            Option option = new Option();

            int i = gvFeatureList.FindVisibleIndexByKeyValue(e.Keys[gvFeatureList.KeyFieldName]);
            e.Cancel = true;

            option.OptionId = Convert.ToInt16(e.Keys[gvFeatureList.KeyFieldName]);
            option.UpdatedBy = (Guid)Membership.GetUser().ProviderUserKey;  //SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER).UserId.Value;
            option.IsDeleted = true;
            if (new OptionDAO().Delete(option))
            {
                //Show Success message
            }
            else
            {
                //Error message
            }
            Session[Constants.SESSION_FEATURE_LIST] = new OptionDAO().SelectAllDataset();
            LoadGrid();
        }

        protected void gvFeatureList_CellEditorInitialize(object sender, ASPxGridViewEditorEventArgs e)
        {
            if (e.Column.FieldName != "OptionCategoryId" || e.Column.FieldName != "IsMultiSelect") return;

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
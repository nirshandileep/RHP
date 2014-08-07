using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using RHP.Common;
using DevExpress.Web.ASPxGridView;
using System.Collections;
using System.Web.Security;
using RHP.StudentManagement;
using RHP.SessionManager;

namespace USA_Rent_House_Project.Administrator.Modules
{
    public partial class SchoolList : System.Web.UI.UserControl
    {
        DataSet dsSchools = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session[Constants.SESSION_SCHOOL_LIST] = dsSchools;
            LoadGrid();
        }

        private void LoadGrid()
        {
            dsSchools = SessionManager.GetSession<DataSet>(Constants.SESSION_SCHOOL_LIST);
            gvSchoolList.SettingsText.ConfirmDelete = Messages.Delete_Confirm;
            dsSchools.Tables[0].PrimaryKey = new DataColumn[] { dsSchools.Tables[0].Columns["SchoolId"] };
            gvSchoolList.DataSource = dsSchools.Tables[0];
            gvSchoolList.DataBind();
        }

        protected void gvSchoolList_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
        {
            ASPxGridView gridView = sender as ASPxGridView;

            School school = new School();
            school.State = e.NewValues["State"].ToString();
            school.StreetAddress = e.NewValues["StreetAddress"].ToString();
            school.WebsiteURL = e.NewValues["WebsiteURL"].ToString();
            school.Year = e.NewValues["Year"].ToString();
            school.Zip = e.NewValues["Zip"].ToString();
            school.City = e.NewValues["City"].ToString();
            school.ContactNumber = e.NewValues["ContactNumber"].ToString();
            school.CreatedBy = (Guid)Membership.GetUser().ProviderUserKey;
            school.Email = e.NewValues["Email"].ToString().Trim();
            gridView.CancelEdit();
            e.Cancel = true;

            if (school.Save())
            {
                //Show Success message
            }
            else
            {
                //Error message
            }
            LoadGrid();
        }

        protected void gvSchoolList_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {
            ASPxGridView gridView = sender as ASPxGridView;

            School school = new School();
            school.State = e.NewValues["State"].ToString();
            school.StreetAddress = e.NewValues["StreetAddress"].ToString();
            school.WebsiteURL = e.NewValues["WebsiteURL"].ToString();
            school.Year = e.NewValues["Year"].ToString();
            school.Zip = e.NewValues["Zip"].ToString();
            school.City = e.NewValues["City"].ToString();
            school.ContactNumber = e.NewValues["ContactNumber"].ToString();
            school.CreatedBy = (Guid)Membership.GetUser().ProviderUserKey;
            school.Email = e.NewValues["Email"].ToString().Trim();
            gridView.CancelEdit();
            e.Cancel = true;

            if (school.Save())
            {
                //Show Success message
            }
            else
            {
                //Error message
            }
            LoadGrid();
        }

        protected void gvSchoolList_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
        {
            School school = new School();

            int i = gvSchoolList.FindVisibleIndexByKeyValue(e.Keys[gvSchoolList.KeyFieldName]);
            e.Cancel = true;

            school.SchoolId = (Guid)e.Keys[gvSchoolList.KeyFieldName];

            if (new SchoolDAO().Delete(school))
            {
                //Show Success message
            }
            else
            {
                //Error message
            }
            LoadGrid();
        }

        protected void gvSchoolList_CommandButtonInitialize(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewCommandButtonEventArgs e)
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
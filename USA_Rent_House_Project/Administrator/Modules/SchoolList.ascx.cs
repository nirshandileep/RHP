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
        private DataSet dsSchools
        {
            get
            {
                DataSet ds;
                ds = SessionManager.GetSession<DataSet>(Constants.SESSION_SCHOOL_LIST);

                if (ds == null)
                {
                    ds = new SchoolDAO().SelectAllDataset();
                    ds.Tables[0].PrimaryKey = new DataColumn[] { ds.Tables[0].Columns["SchoolId"] };
                    Session[Constants.SESSION_SCHOOL_LIST] = ds;
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
            gvSchoolList.SettingsText.ConfirmDelete = Messages.Delete_Confirm;
            gvSchoolList.DataSource = dsSchools.Tables[0];
            gvSchoolList.DataBind();
        }

        protected void gvSchoolList_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
        {
            ASPxGridView gridView = sender as ASPxGridView;

            School school = new School();
            school.Name = GetColumnValue(e.NewValues["Name"]);
            school.State = GetColumnValue(e.NewValues["State"]);
            school.StreetAddress = GetColumnValue(e.NewValues["StreetAddress"]);
            school.WebsiteURL = GetColumnValue(e.NewValues["WebsiteURL"]);
           // school.Year = GetColumnValue(e.NewValues["Year"]);
            school.Zip = GetColumnValue(e.NewValues["Zip"]);
            school.City = GetColumnValue(e.NewValues["City"]);
            school.ContactNumber = GetColumnValue(e.NewValues["ContactNumber"]);
            school.CreatedBy = (Guid)Membership.GetUser().ProviderUserKey;
            school.Email = GetColumnValue(e.NewValues["Email"]);
            school.RatingValue = e.NewValues["RatingValue"] == null ? decimal.Zero : (decimal)e.NewValues["RatingValue"];

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

            Session[Constants.SESSION_SCHOOL_LIST] = new SchoolDAO().SelectAllDataset();
            LoadGrid();
        }

        protected void gvSchoolList_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {
            ASPxGridView gridView = sender as ASPxGridView;

            School school = new School();
            school.SchoolId = (Guid)e.Keys[gvSchoolList.KeyFieldName];
            school.Name = GetColumnValue(e.NewValues["Name"]);
            school.State = GetColumnValue(e.NewValues["State"]);
            school.StreetAddress = GetColumnValue(e.NewValues["StreetAddress"]);
            school.WebsiteURL = GetColumnValue(e.NewValues["WebsiteURL"]);
            //school.Year = GetColumnValue(e.NewValues["Year"]);
            school.Zip = GetColumnValue(e.NewValues["Zip"]);
            school.City = GetColumnValue(e.NewValues["City"]);
            school.ContactNumber = GetColumnValue(e.NewValues["ContactNumber"]);
            school.Email = GetColumnValue(e.NewValues["Email"]);
            school.RatingValue = e.NewValues["RatingValue"] == null ? decimal.Zero : (decimal)e.NewValues["RatingValue"];

            school.CreatedBy = (Guid)Membership.GetUser().ProviderUserKey;

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

            Session[Constants.SESSION_SCHOOL_LIST] = new SchoolDAO().SelectAllDataset();

            LoadGrid();
        }

        private string GetColumnValue(object column)
        {
            string text ;
            if (column != null)
            {
                text = column.ToString();
            }
            else
            {
                text = string.Empty;
            }
            return text;
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

            Session[Constants.SESSION_SCHOOL_LIST] = new SchoolDAO().SelectAllDataset();
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
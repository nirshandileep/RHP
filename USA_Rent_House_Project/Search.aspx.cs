using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.Utility;
using RHP.StudentManagement;
using RHP.Common;

namespace USA_Rent_House_Project
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string v = Utility.GetQueryStringValueByKey(Request, "type");
            if (v == "s")
            {
                div_Search.Visible = false;
                Div_Search_Student.Visible = true;
                Div_Search_House.Visible = false;

            }
            else if (v == "l")
            {
                div_Search.Visible = false;
                Div_Search_House.Visible = true;
                Div_Search_Student.Visible = false;
            }
            else
            {
                div_Search.Visible = true;
            }

            if (!IsPostBack)
            {
                loaddata();
            }
        }


        public void loaddata()
        {
             if (DrpSchoolName.Items.Count == 0)
            {
                DrpSchoolName.DataSource = School.SelectAllList();
                DrpSchoolName.TextField = "Name";
                DrpSchoolName.ValueField = "SchoolId";
                DrpSchoolName.DataBind();
            }

             //DrpBathRooms
             DrpBathRooms.Items.Clear();
             for (int i = Constants.LANDLORD_PROFILE_HOUSEBUILD_BATHROOMS_MIN; i <= Constants.LANDLORD_PROFILE_HOUSEBUILD_BATHROOMS_MIN + Constants.LANDLORD_PROFILE_HOUSEBUILD_BATHROOMS; i++)
             {
                 DrpBathRooms.Items.Add(new ListItem(i.ToString(), i.ToString()));
             }
             DrpBathRooms.Items.Insert(0, new ListItem(Constants.DROPDOWN_EMPTY_ITEM_TEXT, Constants.DROPDOWN_EMPTY_ITEM_VALUE));

             //DrpBedRooms
             DrpBedRooms.Items.Clear();
             for (int i = Constants.LANDLORD_PROFILE_HOUSEBUILD_BEDROOMS_MIN; i <= Constants.LANDLORD_PROFILE_HOUSEBUILD_BEDROOMS_MIN + Constants.LANDLORD_PROFILE_HOUSEBUILD_BEDROOMS; i++)
             {
                 DrpBedRooms.Items.Add(new ListItem(i.ToString(), i.ToString()));
             }
             DrpBedRooms.Items.Insert(0, new ListItem(Constants.DROPDOWN_EMPTY_ITEM_TEXT, Constants.DROPDOWN_EMPTY_ITEM_VALUE));

             Status.Items.AddRange(Constants.STUDENT_STATUS_LIST);
             DrpGender.Items.AddRange(Constants.STUDENT_SEX_LIST);
            
        }
        protected void ButtonSearchHouse_Click(object sender, EventArgs e)
        {
            Div_Search_House.Visible = true;
            Div_Search_Student.Visible = false;
        }

        protected void ButtonSearchStudent_Click(object sender, EventArgs e)
        {
            Div_Search_Student.Visible = true;
            Div_Search_House.Visible = false;
        }

        protected void FindHome_Click(object sender, EventArgs e)
        {

        }

        protected void FindStudent_Click(object sender, EventArgs e)
        {

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.Utility;
using RHP.StudentManagement;
using RHP.Common;
using RHP.UserManagement;
using System.Data;
using RHP.LandlordManagement;

namespace USA_Rent_House_Project
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string v = Utility.GetQueryStringValueByKey(Request, "type");
            if (v == "s")
            {
                loadStudentdata();
                div_Search.Visible = false;
                Div_Search_Student.Visible = true;
                Div_Search_House.Visible = false;

            }
            else if (v == "l")
            {
                loadHousedata();
                div_Search.Visible = false;
                Div_Search_House.Visible = true;
                Div_Search_Student.Visible = false;
            }
            else
            {
                div_Search.Visible = true;
            }

            if (HiddenFieldCurrentStep.Value != "1" || HiddenFieldCurrentStep.Value != "2")
            {
                Searchresults.Visible = true;
            }

           

            
        }


        public void loadHousedata()
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

        }

        public void loadStudentdata()
        {
           
            //if (DrpSchoolName2.Items.Count == 0)
            //{
            //    DrpSchoolName2.DataSource = School.SelectAllList();
            //    DrpSchoolName2.TextField = "Name";
            //    DrpSchoolName2.ValueField = "SchoolId";
            //    DrpSchoolName2.DataBind();
            //}

            DrpStatus.Items.Clear();
            DrpStatus.Items.AddRange(Constants.STUDENT_STATUS_LIST);
            DrpGender.Items.Clear();
            DrpGender.Items.AddRange(Constants.STUDENT_SEX_LIST);

        }

        protected void ButtonSearchHouse_Click(object sender, EventArgs e)
        {
            loadHousedata();
            HiddenFieldCurrentStep.Value = "1";
            Div_Search_House.Visible = true;
            Div_Search_Student.Visible = false;
        }

        protected void ButtonSearchStudent_Click(object sender, EventArgs e)
        {
            loadStudentdata();
            HiddenFieldCurrentStep.Value = "2";
            Div_Search_Student.Visible = true;
            Div_Search_House.Visible = false;
        }

        protected void FindHome_Click(object sender, EventArgs e)
        {
            House house = new House();
            HouseDAO houseDAO = new HouseDAO();

            string SelectedSchoolname = "";// DrpSchoolName.SelectedItem.Value.ToString();
            house.Zip = string.IsNullOrEmpty(Zipcode.Text.Trim()) ? null : Zipcode.Text.Trim(); 

            if (DrpBedRooms.SelectedItem.Value != "-1")
            {
                house.BathRooms = int.Parse(DrpBedRooms.SelectedItem.Value);
            }
            else
            {
                house.BathRooms = null;
            }

            if (DrpBathRooms.SelectedItem.Value != "-1")
            {
                house.BathRooms = int.Parse(DrpBathRooms.SelectedItem.Value);
            }
            else
            {
                house.BathRooms = null;
            }

            
           

           DataSet ds;

           ds = houseDAO.Search(house, SelectedSchoolname);

           if (ds != null)
           {

               DataListHouseSearchresults.DataSource = ds.Tables[0];
               DataListHouseSearchresults.DataBind();

               HouseSearchresults.Visible = true;
           }
           else
           {
               Searchresults.Visible = true;
           }
        }


        protected void FindStudent_Click(object sender, EventArgs e)
        {
            User user = new User();
            StudentDAO studentDAO = new StudentDAO();

            user.FirstName = string.IsNullOrEmpty(FirstName.Text.Trim()) ? null : FirstName.Text.Trim();
            user.MiddleName = string.IsNullOrEmpty(MiddleName.Text.Trim()) ? null : MiddleName.Text.Trim(); 
            user.LastName = string.IsNullOrEmpty(LastName.Text.Trim()) ? null : LastName.Text.Trim();

            user.Zip = string.IsNullOrEmpty(Zipcode2.Text.Trim()) ? null : Zipcode2.Text.Trim();

            if (DrpGender.SelectedItem.Value != "-1")
            {
                 user.Gender = DrpGender.SelectedItem.Value;
            }
            else
            {
                user.Gender = null;
            }

            if (DrpStatus.SelectedItem.Value != "-1")
            {
                user.Status = DrpStatus.SelectedItem.Value;
            }
            else
            {
                user.Status = null;
            }
            

            DataSet ds;

            ds = studentDAO.Search(user);

            if (ds != null)
            {
                
                DataListStudentSearchresults.DataSource = ds.Tables[0];
                DataListStudentSearchresults.DataBind();

                StudentSearchresults.Visible = true;
            }
            else
            {
            Searchresults.Visible = true;
           

            }

        }
    }
}
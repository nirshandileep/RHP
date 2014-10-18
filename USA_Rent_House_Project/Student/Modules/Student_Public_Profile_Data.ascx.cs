using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.UserManagement;
using RHP.Utility;
using RHP.Photos;
using RHP.Common;

namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Student_Public_Profile_Data : System.Web.UI.UserControl
    {
        User user = new User();

        protected void Page_Load(object sender, EventArgs e)
        {
            string AccessCode = Utility.GetQueryStringValueByKey(Request, "AccessCode");

            if (AccessCode != string.Empty && AccessCode != null)
            {
                try
                {
                    LoadStudent(Guid.Parse(AccessCode));
                }
                catch(Exception ex)
                {}
            }
        }

        public void LoadStudent(Guid AccessCode)
        {

          
                user = User.Select(AccessCode);

                if (user != null)
                {
                    if (user.HouseId.HasValue)
                    {
                        List<User> userList = User.SelectUserByHouseId("HouseId", user.HouseId.Value, "RoleName", "student");

                        DataListStudentList.DataSource = userList;
                        DataListStudentList.DataBind();

                        if (userList.Count > 0)
                        { currentHomeStudentData.Visible = true; }
                    }
                }
           
        }


        protected void ItemDataBound(object sender, DataListItemEventArgs e)
        {
            Photo photo = new Photo();
            HiddenField HiddenField_ = (HiddenField)e.Item.FindControl("hdUserId");

            HyperLink Image_ = (HyperLink)e.Item.FindControl("HyperLinkimage");

            Image_.ImageUrl = photo.LoadImage(Guid.Parse(HiddenField_.Value.ToString()), Enums.PhotoCategory.Profile_Picture);
        }
    }
}
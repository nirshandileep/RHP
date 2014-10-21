using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.Utility;
using RHP.UserManagement;
using RHP.Photos;
using RHP.Common;

namespace USA_Rent_House_Project.Land_load.Modules
{
    public partial class Landload_Public_Profile_Data : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                string AccessCode = Utility.GetQueryStringValueByKey(Request, "AccessCode");

                if (AccessCode != string.Empty && AccessCode != null)
                {
                    try
                    {
                        LoadStudent(Guid.Parse(AccessCode));
                    }
                    catch (Exception ex)
                    { }
                }

            }


        }

        public void LoadStudent(Guid AccessCode)
        {

            currentHomeStudentData.Visible = true;
                // HouseId = Guid.Parse("8313D02D-FA75-474A-A93B-0EFD3B817A88");

                List<User> userList = User.SelectUserByHouseId("HouseId", AccessCode, "RoleName", "student");

                DataListCurrentHomeStudent.DataSource = userList;
                DataListCurrentHomeStudent.DataBind();
            
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
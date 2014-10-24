using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using RHP.UserManagement;
using RHP.SessionManager;
using RHP.Common;
using RHP.Utility;
using RHP.Photos;

namespace USA_Rent_House_Project.Land_load
{
    public partial class Land_Load_House : System.Web.UI.Page
    {
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

        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                string AccessCode = Utility.GetQueryStringValueByKey(Request, "AccessCode");
                string AccessCode2 = Utility.GetQueryStringValueByKey(Request, "AccessCode2");
                if (AccessCode != string.Empty && AccessCode != null)
                {
                    try
                    {
                        LoadStudent(Guid.Parse(AccessCode),Guid.Parse(AccessCode2));
                      
                    }
                    catch (Exception ex)
                    { }
                }

               
            }
        }

        public void LoadStudent(Guid AccessCode, Guid AccessCode2)
        {
           // user = RHP.UserManagement.User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));

            if (AccessCode != null )
            {
                HyperLinkPublicView.NavigateUrl = "~/Land_load/Land_load_Public_Profile.aspx?AccessCode=" + AccessCode + "&AccessCode2=" + AccessCode2;
                HyperLinkHouseDetails.NavigateUrl = "~/Land_load/Land_Load_House_View.aspx?AccessCode=" + AccessCode + "&AccessCode2=" + AccessCode2;

               // AccessCode = Guid.Parse("8313D02D-FA75-474A-A93B-0EFD3B817A88");
                List<User> userList = RHP.UserManagement.User.SelectUserByHouseId("HouseId", AccessCode, "RoleName", "student");

                DataListCurrentHomeStudent.DataSource = userList;
                DataListCurrentHomeStudent.DataBind();

                if (userList.Count > 0)
                { currentHomeStudentData.Visible = true; }
            }
        }

        protected void ItemDataBound(object sender, DataListItemEventArgs e)
        {
            Photo photo = new Photo();
            HiddenField HiddenField_ = (HiddenField)e.Item.FindControl("hdUserId");

            HyperLink Image_ = (HyperLink)e.Item.FindControl("HyperLinkimage");

            Image_.ImageUrl = photo.LoadImage(Guid.Parse(HiddenField_.Value.ToString()), Enums.PhotoCategory.Profile_Picture);
        }

        protected void LB_House_Add_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Land_load/Land_Load_House_info_Add.aspx");
        }

    }
}
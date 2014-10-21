using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.UserManagement;
using RHP.SessionManager;
using RHP.Common;
using System.Web.Security;
using RHP.Photos;

namespace USA_Rent_House_Project.Land_load.Modules
{
    public partial class Landload_Profile_Data : System.Web.UI.UserControl
    {
        private User _user;

        public User user
        {
            get
            {
                _user = SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER);
                if (_user == null)
                {
                    _user = new User();  //_
                    user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
                }
                else
                {
                    
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
                LoadStudent();
            }
        }

        public void LoadStudent()
        {
            user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));

            if (user.HouseId.HasValue)
            {

                //user.HouseId = Guid.Parse("8313D02D-FA75-474A-A93B-0EFD3B817A83");
                List<User> userList = User.SelectUserByHouseId("HouseId", user.HouseId.Value, "RoleName", "student");

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
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Drawing;
using RHP.UserManagement;
using RHP.SessionManager;
using RHP.Common;
using System.Web.Security;
using RHP.Photos;

namespace USA_Rent_House_Project.Student
{
    public partial class Current_House_Life : System.Web.UI.Page
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
           if(!IsPostBack)
           {
               if (HttpContext.Current.User.Identity.IsAuthenticated)
               {
                  // HyperLinkPublicView.NavigateUrl = "~/Student/Student_Public_Profile.aspx?AccessCode=" + Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                   loadimage();
               }
           }
        }

        public void loadimage()
        {
            Photo photo = new Photo();
             try
                {

                    List<String> images = photo.LoadImageList(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()), Enums.PhotoCategory.House_Life_Picture);

                    if (images != null)
                    {
                        RepeaterImages.DataSource = images;
                        RepeaterImages.DataBind();

                    }

                }
                catch (Exception ec)
                { }

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (FileUploads.PostedFile.ContentLength > 6291456)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }

        protected void btn_Photos_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                Photo photo = new Photo();

                string path = "~/uploads/" + Membership.GetUser().ProviderUserKey.ToString();

                bool IsUpload = photo.ImageUpload(FileUploads, path, photo);

                if (IsUpload == true)
                {
                    photo.ContextId = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                    photo.ContextTypeId = (int)Enums.ContextType.Student;
                    photo.PhotoCategoryId = (int)Enums.PhotoCategory.House_Life_Picture;

                    photo.Insert(photo);
                }

                loadimage();

            }
        }
    }
}
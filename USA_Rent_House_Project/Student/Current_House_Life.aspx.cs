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
               loadimage();
           }
        }

        public void loadimage()
        {
            string path = "~/uploads/" + Membership.GetUser().ProviderUserKey.ToString() + "/HouseLife";

            string[] filesindirectory = Directory.GetFiles(Server.MapPath(path));
            List<String> images = new List<string>(filesindirectory.Count());

            foreach (string item in filesindirectory)
            {
                // images.Add(String.Format("~/Images/{0}", System.IO.Path.GetFileName(item)));
                images.Add(String.Format(path + "/{0}", System.IO.Path.GetFileName(item)));
            }

            RepeaterImages.DataSource = images;
            RepeaterImages.DataBind();
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
                string strpath = string.Empty;

                if (FileUploads.HasFile)
                {
                    // framework 4.5

                    //foreach (HttpPostedFile uploadedFile in FileUploads.PostedFiles)
                    //{
                    //    uploadedFile.SaveAs(System.IO.Path.Combine(Server.MapPath("~/Images/"),
                    //    uploadedFile.FileName)); listofuploadedfiles.Text += String.Format("{0}<br />", uploadedFile.FileName);
                    //}

                    FileInfo finfo = new FileInfo(FileUploads.FileName);
                    string fileExtension = finfo.Extension.ToLower();

                    string path = "~/uploads/" + Membership.GetUser().ProviderUserKey.ToString() +"/HouseLife";
                        if (!Directory.Exists(Server.MapPath(path)))
                            Directory.CreateDirectory(Server.MapPath(path));

                        //create the path to save the file to
                        string imagename = Guid.NewGuid().ToString() + fileExtension;

                        string fileName = Path.Combine(Server.MapPath(path), imagename); //FileUploads.FileName
                        //save the file to our local path
                        FileUploads.SaveAs(fileName);
                    
                }
                loadimage();

            }
        }
    }
}
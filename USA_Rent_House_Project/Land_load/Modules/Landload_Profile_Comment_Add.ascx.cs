using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.Comments;
using RHP.UserManagement;
using RHP.SessionManager;
using RHP.Common;
using RHP.Utility;
using System.Web.Security;
using System.Data;
using RHP.Photos;

namespace USA_Rent_House_Project.Land_load.Modules
{
    public partial class Landload_Profile_Comment_Add : System.Web.UI.UserControl
    {

        Comment comment = new Comment();

        private User _user;

        public User user
        {
            get
            {
                _user = SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER);
                if (_user == null)
                {
                    
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
            LbComment.Attributes.Add("onClick", "return false;");
            LbFeedback.Attributes.Add("onClick", "return false;");
            LbPhoto.Attributes.Add("onClick", "return false;");
            LbUpload.Attributes.Add("onClick", "return false;");

            SetUserBasedRestrictions();

        }

        private void SetUserBasedRestrictions()
        {
            string AccessCode = Utility.GetQueryStringValueByKey(Request, "AccessCode2");
            User currentProfileUser = User.Select(Guid.Parse(AccessCode));

            //Check if the user is the same as the logged users id
            //One cannot rate himself
            if (user == null)
            {
                LbFeedback.Visible = false;
                FeedbackButton.Visible = false;
            }
            else
            {
                if (currentProfileUser.UserId == user.UserId)
                {
                    LbFeedback.Visible = false;
                    FeedbackButton.Visible = false;
                }

                if (user.RoleId == Constants.USER_ROLE_LANDLORD)
                {

                }
                else if (user.RoleId == Constants.USER_ROLE_STUDENT)
                {

                }
                else
                {

                }
            }
        }

        public void LoadUserData(Guid AccessCode)
        {
            //  user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
            // user = User.Select(AccessCode);

        }


        protected void CommentButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid == true)
            {

                if (CommentMessage.Text.Trim() != "")
                {
                    comment.CommentText = CommentMessage.Text.Trim();
                    comment.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                    comment.ContextTypeId = (int)Enums.ContextType.Landlord;
                    comment.CommentTypeId = (int)Enums.CommentType.Comment;
                    comment.FilePath = "";

                    comment.RatingValue = 0;
                    save(comment);
                }

            }
        }

        protected void FeedbackButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid == true)
            {
                comment.CommentText = FeedbackText.Text.Trim();
                comment.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                comment.ContextTypeId = (int)Enums.ContextType.Landlord;
                comment.CommentTypeId = (int)Enums.CommentType.Feedback;
                comment.FilePath = "";
                comment.RatingValue = CalculateReting();

                save(comment);

            }
        }

        protected void PhotoButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid == true)
            {
                Photo photo = new Photo();

                string path = "~/uploads/" + Membership.GetUser().ProviderUserKey.ToString();

                bool IsUpload = photo.ImageResize(PhotoUpload, path, photo);

                if (IsUpload == true)
                {
                    comment.CommentText = PhotoUploadComment.Text.Trim();
                    comment.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                    comment.ContextTypeId = (int)Enums.ContextType.Landlord;
                    comment.CommentTypeId = (int)Enums.CommentType.Photo;
                    comment.FilePath = photo.FilePath;
                    comment.RatingValue = 0;

                    save(comment);

                }
            }

        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid == true)
            {
                Photo photo = new Photo();

                string path = "~/uploads/" + Membership.GetUser().ProviderUserKey.ToString();

                bool IsUpload = photo.DocumentUpload(DocumentUpload, path, photo);

                if (IsUpload == true)
                {
                    comment.CommentText = DocumentUploadComment.Text.Trim();
                    comment.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                    comment.ContextTypeId = (int)Enums.ContextType.Landlord;
                    comment.CommentTypeId = (int)Enums.CommentType.Document;
                    comment.FilePath = photo.FilePath;
                    comment.RatingValue = 0;

                    save(comment);
                }
            }
        }

        public void save(Comment comment)
        {

            try
            {
                string AccessCode = Utility.GetQueryStringValueByKey(Request, "AccessCode");

                if (AccessCode != null && AccessCode != string.Empty)
                {
                    comment.ContextId = Guid.Parse(AccessCode);
                    if (comment.Insert(comment))
                    {
                        DataSet ds;
                        ds = new CommentDAO().SelectByContext(1, Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
                        ds.Tables[0].PrimaryKey = new DataColumn[] { ds.Tables[0].Columns["CommentId"] };
                        Session[Constants.SESSION_COMMENTS] = ds;

                        clear();
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Success + "'); window.location = '/Student/Student_Public_Profile.aspx?AccessCode='" + AccessCode + "';}", true);
                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Unsuccess + "'); }", true);
                    }

                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Unsuccess + "');}", true);
                }
            }
            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Unsuccess + "'); }", true);
                throw ex;
            }

        }

        public void clear()
        {

        }

        public decimal CalculateReting()
        {
            comment.FeedbackQuestions = comment.SelectFeedbackQuestions();

            comment.FeedbackQuestions.Find(a => a.QuestionId == 8).RatingValue = ASPxRatingRent.Value;
            comment.FeedbackQuestions.Find(a => a.QuestionId == 9).RatingValue = ASPxRatingAmenities.Value;
            comment.FeedbackQuestions.Find(a => a.QuestionId == 10).RatingValue = ASPxRatingcondition.Value;
            comment.FeedbackQuestions.Find(a => a.QuestionId == 11).RatingValue = ASPxRatingBackYard.Value;
            comment.FeedbackQuestions.Find(a => a.QuestionId == 12).RatingValue = ASPxRatingResponsiveOfLandlord.Value;
            comment.FeedbackQuestions.Find(a => a.QuestionId == 13).RatingValue = ASPxRatingLocation.Value;
            comment.FeedbackQuestions.Find(a => a.QuestionId == 14).RatingValue = ASPxRatingFairnessOfLandlord.Value;
            comment.FeedbackQuestions.Find(a => a.QuestionId == 15).RatingValue = ASPxRatingGoodLandlord.Value;

            string AccessCode = Utility.GetQueryStringValueByKey(Request, "AccessCode");
            Guid.Parse(AccessCode);

            //Get automatic ratings
            //Todo: The below code has to be rewritten to get the correct rating values.
            comment.FeedbackQuestions.Find(a => a.QuestionId == 16).RatingValue = comment.GetAutomaticRentRatingByLandlord(Guid.Parse(AccessCode));
            comment.FeedbackQuestions.Find(a => a.QuestionId == 17).RatingValue = comment.GetAutomaticAmenitiesRatingByLandlord(Guid.Parse(AccessCode));

            decimal ratevalue = 0;
            //Rating system for the Students by other roommates
            ratevalue = comment.CalculateLandlordFeedback(Guid.Parse(AccessCode));

            return ratevalue;
        }

    }
}
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
using System.Web.Security;
using System.Data;
using RHP.Utility;
using RHP.Photos;

namespace USA_Rent_House_Project.Administrator.Modules
{
    public partial class Comment_Add : System.Web.UI.UserControl
    {

        private User _user = new User();

        public User user
        {
            get
            {
                _user = SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER);
                return _user;
            }
            set
            {
                _user = value;
                Session[Constants.SESSION_LOGGED_USER] = _user;
            }
        }

        Comment comment = new Comment();

        protected void Page_Load(object sender, EventArgs e)
        {
            //LbComment.Attributes.Add("onClick", "return false;");
            //LbFeedback.Attributes.Add("onClick", "return false;");
            //LbPhoto.Attributes.Add("onClick", "return false;");
            //LbUpload.Attributes.Add("onClick", "return false;");

            //SetUserBasedRestrictions();
            //SetQuestionTexts();

        }

        private void SetQuestionTexts()
        {
            LabelAwards.Text = comment.FeedbackQuestions.Find(a => a.QuestionId == 1).Question;
            LabelCleanliness.Text = comment.FeedbackQuestions.Find(a => a.QuestionId == 2).Question;
            LabelConditionOfHouse.Text = comment.FeedbackQuestions.Find(a => a.QuestionId == 3).Question;
            LabelResponsivenessOfStudent.Text = comment.FeedbackQuestions.Find(a => a.QuestionId == 4).Question;
            LabelFriendliness.Text = comment.FeedbackQuestions.Find(a => a.QuestionId == 5).Question;
            LabelResponsible.Text = comment.FeedbackQuestions.Find(a => a.QuestionId == 6).Question;
            LabelGoodRoommate.Text = comment.FeedbackQuestions.Find(a => a.QuestionId == 7).Question;
        }

        private void SetUserBasedRestrictions()
        {
            string AccessCode = Utility.GetQueryStringValueByKey(Request, "AccessCode");

            User currentProfileUser = new User();
            if (AccessCode != string.Empty && AccessCode != null)
            {
                try
                {
                    currentProfileUser = User.Select(Guid.Parse(AccessCode));
                }
                catch (Exception ex)
                { user = null; }


                if (user != null)
                {
                    //Check if the user is the same as the logged users id
                    //One cannot rate himself
                    if (currentProfileUser.UserId == user.UserId)
                    {
                        LbFeedback.Visible = false;
                        FeedbackButton.Visible = false;
                    }
                    else
                    {
                        //Hide the comments add section
                    }

                    if (user.RoleId == Constants.USER_ROLE_LANDLORD)
                    {
                        paymentontime.Visible = true;
                    }
                    else if (user.RoleId == Constants.USER_ROLE_STUDENT)
                    {
                        Ratinggoodroommate.Visible = true;
                    }
                    else
                    {
                        paymentontime.Visible = false;
                        Ratinggoodroommate.Visible = false;
                    }
                }
                else
                {
                    paymentontime.Visible = false;
                    Ratinggoodroommate.Visible = false;

                    LbFeedback.Visible = false;
                    FeedbackButton.Visible = false;
                }
            }
        }

        protected void LbUpload_Click(object sender, EventArgs e)
        {
            DissableOptions();
            //DivUpload.Visible = true;
        }

        public void DissableOptions()
        {
            //DivComment.Visible = false;
            //DivFeedback.Visible = false;
            //DivPhoto.Visible = false;
            //DivUpload.Visible = false;
        }

        protected void CommentButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid == true)
            {

                if (CommentMessage.Text.Trim() != "")
                {
                    comment.CommentText = CommentMessage.Text.Trim();
                    comment.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                    comment.ContextTypeId = (int)Enums.ContextType.Student;
                    comment.CommentTypeId = (int)Enums.CommentType.Comment;
                    comment.FilePath = "";

                    comment.RatingValue = 0;
                    save(comment);

                    string AccessCode = Utility.GetQueryStringValueByKey(Request, "AccessCode");
                    Response.Redirect("~/Student/Student_Public_Profile.aspx?AccessCode=" + AccessCode);
                }

            }
        }

        protected void FeedbackButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid == true)
            {
                    comment.CommentText = FeedbackText.Text.Trim();
                    comment.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                    comment.ContextTypeId = (int)Enums.ContextType.Student;
                    comment.CommentTypeId = (int)Enums.CommentType.Feedback;
                    comment.FilePath = "";
                    comment.RatingValue = CalculateReting(comment);

                    save(comment);
                    string AccessCode = Utility.GetQueryStringValueByKey(Request, "AccessCode");
                    Response.Redirect("~/Student/Student_Public_Profile.aspx?AccessCode=" + AccessCode);
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
                    comment.ContextTypeId = (int)Enums.ContextType.Student;
                    comment.CommentTypeId = (int)Enums.CommentType.Photo;
                    comment.FilePath = photo.FilePath;
                    comment.RatingValue = 0;

                    save(comment);
                    string AccessCode = Utility.GetQueryStringValueByKey(Request, "AccessCode");
                    Response.Redirect("~/Student/Student_Public_Profile.aspx?AccessCode=" + AccessCode);
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
                    comment.ContextTypeId = (int)Enums.ContextType.Student;
                    comment.CommentTypeId = (int)Enums.CommentType.Document;
                    comment.FilePath = photo.FilePath;
                    comment.RatingValue = 0;

                    save(comment);
                    string AccessCode = Utility.GetQueryStringValueByKey(Request, "AccessCode");
                    Response.Redirect("~/Student/Student_Public_Profile.aspx?AccessCode=" + AccessCode);
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
                      //  Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Success + "'); window.location = '/Student/Student_Public_Profile.aspx?AccessCode='" + AccessCode + "';}", true);
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

        public decimal CalculateReting(Comment comment)
        {
            comment.FeedbackQuestions = comment.SelectFeedbackQuestions();

            comment.FeedbackQuestions.Find(a => a.QuestionId == 1).RatingValue = ASPxRatingpayment.Value;
            comment.FeedbackQuestions.Find(a => a.QuestionId == 2).RatingValue = ASPxRatingcleanliness.Value;
            comment.FeedbackQuestions.Find(a => a.QuestionId == 3).RatingValue = ASPxRatingcondition.Value;
            comment.FeedbackQuestions.Find(a => a.QuestionId == 4).RatingValue = ASPxRatingresponsiveness.Value;
            comment.FeedbackQuestions.Find(a => a.QuestionId == 5).RatingValue = ASPxRatingfriendliness.Value;
            comment.FeedbackQuestions.Find(a => a.QuestionId == 6).RatingValue = ASPxRatingresponsible.Value;
            comment.FeedbackQuestions.Find(a => a.QuestionId == 7).RatingValue = ASPxRatinggoodroommate.Value;

            decimal ratevalue = 0;

            //Rating system for the Students by other roommates
            ratevalue = comment.CalculateFeedbackByUserRole(user.RoleId == Constants.USER_ROLE_LANDLORD ? Enums.UserRoles.Landlord : Enums.UserRoles.Student);

            //decimal finalrating = ratevalue / 6;

            return ratevalue;
        }
    }
}
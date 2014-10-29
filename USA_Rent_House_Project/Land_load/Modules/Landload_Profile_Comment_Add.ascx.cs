﻿using System;
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

        //private User _user;

        //public User user
        //{
        //    get
        //    {
        //        _user = SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER);
        //        if (_user == null)
        //        {
        //            _user = new User(); // _user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
        //        }
        //        else
        //        {

        //        }
        //        Session[Constants.SESSION_LOGGED_USER] = _user;
        //        return _user;
        //    }
        //    set
        //    {
        //        _user = value;
        //        Session[Constants.SESSION_LOGGED_USER] = _user;
        //    }
        //}

        protected void Page_Load(object sender, EventArgs e)
        {
            LbComment.Attributes.Add("onClick", "return false;");
            LbFeedback.Attributes.Add("onClick", "return false;");
            LbPhoto.Attributes.Add("onClick", "return false;");
            LbUpload.Attributes.Add("onClick", "return false;");


            //string AccessCode = Utility.GetQueryStringValueByKey(Request, "AccessCode");

            //if (AccessCode != null && AccessCode != string.Empty)
            //{
            //    try
            //    {
            //        LoadUserData(Guid.Parse(AccessCode));
            //    }
            //    catch (Exception ex)
            //    {

            //    }
            //}


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
                    comment.CommentText = photo.FileName;
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

                bool IsUpload = photo.ImageResize(DocumentUpload, path, photo);

                if (IsUpload == true)
                {
                    comment.CommentText = photo.FileName;
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

            decimal Ratingpayment = ASPxRatingpayment.Value;
            decimal Ratingcleanliness = ASPxRatingcleanliness.Value;
            decimal Ratingcondition = ASPxRatingcondition.Value;
            decimal Ratingresponsiveness = ASPxRatingresponsiveness.Value;
            decimal Ratingfriendliness = ASPxRatingfriendliness.Value;
            decimal Ratingresponsible = ASPxRatingresponsible.Value;
            decimal Ratinggoodroommate = ASPxRatinggoodroommate.Value;

            decimal totalrating = 0;
            decimal ratevalue = 0;

            //Rating system for the Students by other roommates
            totalrating = Ratingpayment + Ratingcleanliness + Ratingcondition + Ratingresponsiveness + Ratingfriendliness + Ratingresponsible;
            ratevalue = (Ratingpayment * (totalrating * 5 / 100)) + (Ratingcleanliness * (totalrating * 25 / 100)) + (Ratingcondition * (totalrating * 50 / 100)) + (Ratingresponsiveness * (totalrating * 5 / 100)) + (Ratingfriendliness * (totalrating * 5 / 100)) + (Ratingresponsible * (totalrating * 10 / 100));

            decimal finalrating = ratevalue / 6;

            //Rating system for the students by landlord


            //#1 = payment on time (10 houses)
            //#2 – cleanliness throughout stay (10 houses)
            //#3 – condition of house (10 houses)
            //#4 – responsiveness of student (10 houses)
            //#5 – friendliness (10 houses)
            //#6 – responsible (10 houses)

            //Equation

            //(#1 * 5%) + (#2 * 25%) + (#3 * 50%) + (#4 * 5%) + (#5 * 5%) + (#6 * 10%)


            //Rating system for the Students by other roommates

            //#1 = cleanliness throughout stay (10 houses)
            //#2= condition of house (10 houses)
            //#3 responsiveness of student (10 houses)
            //#4= friendliness (10 houses)
            //#5 = responsible (10 houses)
            //#6 = good roommate (10 houses)

            //equation

            //(#1 * 20%) + (#2 * 10%) + (#3 * 10%) +(#4 * 10%) + (#5 * 20%) + (#6 *30)

            //
            //totalrating = Ratingpayment + Ratingcleanliness + Ratingcondition + Ratingresponsiveness + Ratingfriendliness + Ratingresponsible;
            //ratevalue = (Ratingpayment * (totalrating * 5 / 100)) + (Ratingcleanliness * (totalrating * 25 / 100)) + (Ratingcondition * (totalrating * 50 / 100)) + (Ratingresponsiveness * (totalrating * 5 / 100)) + (Ratingfriendliness * (totalrating * 5 / 100)) + (Ratingresponsible * (totalrating * 10 / 100));


            return finalrating;
        }

    }
}


    //    protected void CommentButton_Click(object sender, EventArgs e)
    //    {
    //        if (Page.IsValid == true)
    //        {
    //            try
    //            {
    //                 string AccessCode = Utility.GetQueryStringValueByKey(Request, "AccessCode");

    //                 if (AccessCode != null && AccessCode != string.Empty)
    //                 {

    //                     if (CommentMessage.Text.Trim() != "")
    //                     {
    //                         comment.ContextId = Guid.Parse(AccessCode); //Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
    //                         comment.CommentText = CommentMessage.Text.Trim();
    //                         comment.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
    //                         comment.ContextTypeId = (int)Enums.ContextType.Landlord;
    //                         comment.CommentTypeId = (int)Enums.CommentType.Comment;
    //                         comment.FilePath = "";
    //                         comment.RatingValue = ASPxRating.Value;

    //                         if (comment.Insert(comment))
    //                         {
    //                             DataSet ds;
    //                             ds = new CommentDAO().SelectByContext(2, Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
    //                             ds.Tables[0].PrimaryKey = new DataColumn[] { ds.Tables[0].Columns["CommentId"] };
    //                             Session[Constants.SESSION_HOUSE_COMMENTS] = ds;

    //                             CommentMessage.Text = "";
    //                             Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Success + "'); window.location = '/Land_load/Land_load_Public_Profile.aspx?AccessCode='" + AccessCode + "';}", true);
    //                         }
    //                         else
    //                         {
    //                             Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Unsuccess + "'); }", true);
    //                         }

    //                     }
    //                     else
    //                     {
    //                         Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Unsuccess + "');}", true);
    //                     }
    //                 }
    //            }
    //            catch (Exception ex)
    //            {
    //                Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Unsuccess + "'); }", true);
    //                throw ex;
    //            }
    //        }
    //    }
    //}

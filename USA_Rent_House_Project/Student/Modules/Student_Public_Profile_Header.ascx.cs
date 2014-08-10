using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.UserManagement;

namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Student_Public_Profile_Header : System.Web.UI.UserControl
    {
        User user = new User();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRatings();
            }
        }

        protected void Rating_Changed(object sender, AjaxControlToolkit.RatingEventArgs e)
        { 
            // get the current rating value from user table

            if (Rating.CurrentRating == 1)
            { user.RatingValue = (Decimal)(Convert.ToDouble(user.RatingValue) + (Convert.ToDouble(user.RatingValue) * 0.05)); }
            else if (Rating.CurrentRating == 2)
            { user.RatingValue = (Decimal)(Convert.ToDouble(user.RatingValue) + (Convert.ToDouble(user.RatingValue) * 0.25)); }
            else if (Rating.CurrentRating == 3)
            { user.RatingValue = (Decimal)(Convert.ToDouble(user.RatingValue) + (Convert.ToDouble(user.RatingValue) * 0.50)); }
            else if (Rating.CurrentRating == 4)
            { user.RatingValue = (Decimal)(Convert.ToDouble(user.RatingValue) + (Convert.ToDouble(user.RatingValue) * 0.75)); }
            else if (Rating.CurrentRating == 5)
            { user.RatingValue = (Decimal)(Convert.ToDouble(user.RatingValue) + (Convert.ToDouble(user.RatingValue) * 1)); }

            // todo update user rtings    

            BindRatings();
        }

        public void BindRatings()
        {
            Rating.CurrentRating = Convert.ToInt32(user.RatingValue + 4);
        }
    }
}
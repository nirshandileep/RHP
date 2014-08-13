using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RHP.Common
{
    public class Constants
    {
        public static readonly string CONNECTIONSTRING = "ApplicationServices";

        #region Page Path's

        public static readonly string URL_LOGIN = "~/Login.aspx";

        #endregion

        #region Stored Procedures

        public static readonly string SP_HOUSESELECT = "usp_HouseSelect";

        #endregion

        #region Sessions

        public static readonly string SESSION_SCHOOL_LIST = "SESSION_SCHOOL_LIST";
        public static readonly string SESSION_LANDLOAD_LIST = "SESSION_LANDLOAD_LIST";
        public static readonly string SESSION_STUDENT_LIST = "SESSION_STUDENT_LIST";
        public static readonly string SESSION_LOGGED_USER = "SESSION_LOGGED_USER";
        public static readonly string SESSION_FEATURE_LIST = "SESSION_FEATURE_LIST";
        public static readonly string SESSION_HOUSE_LIST = "SESSION_HOUSE_LIST";
        public static readonly string SESSION_COMMENTS = "SESSION_COMMENTS";
        public static readonly string SESSION_FEATURE_ITEMS_LIST = "SESSION_FEATURE_ITEMS_LIST";


        #endregion

        #region Dropdown values
        public static readonly ListItem[] STUDENT_SEX_LIST = new ListItem[] { new ListItem("--Please Select--", "-1"), new ListItem("Male", "Male"), new ListItem("Female", "Female") };
        public static readonly ListItem[] LANDLOAD_SEX_LIST = new ListItem[] { new ListItem("--Please Select--", "-1"), new ListItem("Male", "Male"), new ListItem("Female", "Female") };
        public static readonly ListItem[] STUDENT_STATUS_LIST = new ListItem[] { new ListItem("--Please Select--", "-1"), new ListItem("Junior", "Junior"), new ListItem("Senior", "Senior") };
        #endregion

        public static readonly string DROPDOWN_EMPTY_ITEM_TEXT = "--Please Select--";
        public static readonly string DROPDOWN_EMPTY_ITEM_VALUE = "-1";

        public static readonly int STUDENT_PROFILE_STARTING_YEAR = 2006;
        public static readonly int STUDENT_PROFILE_NUMBER_OF_YEARS = 12;
        
    }
}

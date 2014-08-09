using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

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
        public static readonly string SESSION_FEATURE_LIST = "SESSION_FEATURE_LIST";
        public static readonly string SESSION_FEATURE_ITEMS_LIST = "SESSION_FEATURE_ITEMS_LIST";

        #endregion
    }
}

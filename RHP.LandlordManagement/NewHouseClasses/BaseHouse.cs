using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using RHP.Common;

namespace RHP.LandlordManagement
{
    public abstract class BaseHouse
    {
        #region Database Fields

        public int BaseHouseId { get; set; }
        public string ContactName { get; set; }
        public int HouseTypeId { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string PhoneNumber { get; set; }
        public string ManagerEmail { get; set; }
        public string AssistantManagerEmail { get; set; }
        public string PropertyManagementCompanyName { get; set; }
        public string WebSiteURL { get; set; }
        public string CreatedBy { get; set; }
        public DateTime CreatedDate { get; set; }
        public string UpdatedBy { get; set; }
        public DateTime UpdatedDate { get; set; }
        public List<BaseHouseRoom> HouseRooms { get; set; }

        #endregion

        #region UI Fields

        public string HousingTypeHeader { get; set; }
        public string LabelRoom { get; set; }

        #endregion
    
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using RHP.Utility;

namespace RHP.LandlordManagement
{
    public class BaseHouseRoom
    {
        public Guid BaseHouseRoomId { get; set; }
        public int BaseHouseId { get; set; }
        public string RoomName { get; set; }
        public string Description { get; set; }
        public string CreatedBy { get; set; }
        public DateTime CreatedDate { get; set; }

        public static BaseHouseRoom Select(Guid baseHouseRoomId)
        {
            return Generic.GetByGUID<BaseHouseRoom>(baseHouseRoomId);
        }
    }
}

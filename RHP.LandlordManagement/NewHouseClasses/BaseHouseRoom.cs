using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RHP.LandlordManagement
{
    public class BaseHouseRoom
    {
        public int BaseHouseRoomId { get; set; }
        public int BaseHouseId { get; set; }
        public string RoomName { get; set; }
        public string Description { get; set; }
        public string CreatedBy { get; set; }
        public DateTime CreatedDate { get; set; }
    }
}

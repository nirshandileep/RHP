using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RHP.LandlordManagement
{
    public class HouseOption : Common.Base
    {
        public Guid HouseOptionId { get; set; }
        public Guid HouseId { get; set; }
        public int OptionId { get; set; }
        public string OptionValue { get; set; }
    }
}

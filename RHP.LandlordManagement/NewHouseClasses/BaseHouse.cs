using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using RHP.Common;

namespace RHP.LandlordManagement
{
    public abstract class BaseHouse : Base 
    {
        public string HousingTypeHeader { get; set; }
        public string LabelRoom { get; set; }
    }
}

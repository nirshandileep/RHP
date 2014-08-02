using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using RHP.Common;
using RHP.UserManagement;

namespace RHP.LandlordManagement
{
    public class Landlord : Base
    {
        public Guid LandlordId { get; set; }
        public User user { get; set; }
        public string LandlordName { get; set; }
    }
}

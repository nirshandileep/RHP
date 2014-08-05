using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using RHP.Common;

namespace RHP.StudentManagement
{
    public class School : Base
    {
        public Guid SchoolId { get; set; }
        public string Name { get; set; }
        public string StreetAddress { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Zip { get; set; }
        public string ContactNumber { get; set; }
        public string Email { get; set; }
        public string Location { get; set; }
        public string WebsiteURL { get; set; }
    }
}

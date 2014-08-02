using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using RHP.Common;
using RHP.UserManagement;

namespace RHP.StudentManagement
{
    class Student : User
    {
        public Guid StudentId { get; set; }
        public Guid StudentUserId { get; set; }
        public Guid SchoolId { get; set; }
    }
}

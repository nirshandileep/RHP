using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RHP.StudentManagement
{
    public class StudentSearch
    {
        public Guid? StudentId { get; set; }
        public Guid? SchoolId { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string LastName { get; set; }
        public string SchoolName { get; set; }
        public string Zip { get; set; }
        public string Gender { get; set; }
        public string Status { get; set; }



        //@FirstName nvarchar(256) = NULL,
        //@MiddleName nvarchar(256) = NULL,
        //@LastName nvarchar(256) = NULL,
        //@Zip nvarchar(256) = NULL,
        //@Gender nvarchar(10) = NULL,
        //@Status nvarchar(256) = NULL


    }
}

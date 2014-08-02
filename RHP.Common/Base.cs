using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RHP.Common
{
    public class Base
    {
        public bool IsDeleted { get; set; }
        public Guid CreatedBy { get; set; }
        public DateTime CreatedDate { get; set; }
        public Guid UpdatedBy { get; set; }
        public DateTime UpdatedDate { get; set; }
    }
}

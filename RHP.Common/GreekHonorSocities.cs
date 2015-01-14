using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RHP.Common
{
    public class GreekHonorSocities
    {
        public int GreekHonorSocitiesId { get; set; }
        public string GreekHonorSocitiesName { get; set; }
        public string GreekHonorSocitiesCode { get; set; }
        public string Description { get; set; }
        public Guid? CreatedBy { get; set; }
        public DateTime? CreatedDate { get; set; }
        public Guid? UpdatedBy { get; set; }
        public DateTime? UpdatedDate { get; set; }
        public bool IsDeleted { get; set; }
    }
}

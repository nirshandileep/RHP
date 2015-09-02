using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RHP.Survey
{
    public class SurveyEntity
    {
        public int SurveyId { get; set; }

        public string MyUniversity { get; set; }
        public string UniversityName { get; set; }
        public string UniversityAddress { get; set; }
        public string TypeOfResidence { get; set; }
        public string TypeOfResidenceOption { get; set; }
        public string NameOfResidence { get; set; }
        public string AddressOfResidence { get; set; }
        public string Email { get; set; }
    }
}

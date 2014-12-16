using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RHP.Comments
{
    public class FeedbackQuestion
    {
        public int QuestionId { get; set; }
        public string Question { get; set; }
        public decimal QuestionWeight { get; set; }
        public decimal RatingValue { get; set; }
        public bool AutomaticCalculation { get; set; }
    }
}

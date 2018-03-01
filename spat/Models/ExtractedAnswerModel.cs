using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace spat.Models
{
    public class ExtractedAnswerModel
    {
        public struct ExtractedAnswer
        {
            public string Answer { get; set; }
            public string AnswerData { get; set; }

            public ExtractedAnswer(string answer, string answerData)
            {
                Answer = answer;
                AnswerData = answerData;
            }
        }
    }
}
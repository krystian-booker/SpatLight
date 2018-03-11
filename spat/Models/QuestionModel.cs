using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace spat.Models
{
    public class QuestionModel
    {

        public int QuestionId { get; set; }
        public string QuestionText { get; set; }
        public string QuestionDescription { get; set; }
        public int QuestionType { get; set; }

        public QuestionModel()
        {

        }

        public QuestionModel(int questionId, string questionText, string questionDescription, int questionType)
        {
            QuestionId = questionId;
            QuestionText = questionText;
            QuestionDescription = questionDescription;
            QuestionType = questionType;
        }
    }
}
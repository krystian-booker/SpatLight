using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace spat.Models
{
    public class AnswerModel
    {

        public int AnswerId { get; set; }
        public int QuestionId { get; set; }
        public string AnswerText { get; set; }
        public string AnswerDescription { get; set; }
        public string AnswerWeight { get; set; }
        public string AnswerImagePath { get; set; }

        public AnswerModel()
        {

        }

        public AnswerModel(int answerId, int questionId, string answerText, string answerDescription, string answerWeight, string answerImagePath)
        {
            AnswerId = answerId;
            QuestionId = questionId;
            AnswerText = answerText;
            AnswerDescription = answerDescription;
            AnswerWeight = answerWeight;
            AnswerImagePath = answerImagePath;
        }
    }
}
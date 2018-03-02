using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using static spat.Models.ExtractedAnswerModel;

namespace spat.Managers.Interfaces
{
    public interface ISurveyAnswerManager
    {
        List<ExtractedAnswer> GetExtractAnswers(string Answers);
        string GetAnswerMedicalDescription(string AnswerData);
        string GetDiseaseImagePath(string AnswerData);
    }
}
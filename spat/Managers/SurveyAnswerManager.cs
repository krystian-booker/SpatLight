using spat.Managers.Interfaces;
using System.Collections.Generic;
using System.Text.RegularExpressions;
using static spat.Models.ExtractedAnswerModel;

namespace spat.Managers
{
    public class SurveyAnswerManager : ISurveyAnswerManager
    {
        public List<ExtractedAnswer> GetExtractAnswers(string Answers)
        {
            var extractedResponses = new List<ExtractedAnswer>();
            var answers = Regex.Matches(Answers, @"\(([^)]*)\)");
            foreach (Match rawAnswer in answers)
            {
                var cleanedAnswer = CleanRawAnswer(rawAnswer.Value);

                extractedResponses.Add(
                    new ExtractedAnswer
                    {
                        Answer = GetAnswer(cleanedAnswer),
                        AnswerData = GetAnswerData(cleanedAnswer)
                    });
            }
            return extractedResponses;
        }

        public string GetAnswerMedicalDescription(string AnswerData)
        {
            var descriptionAndImage = GetAnswerData(AnswerData);
            return GetAnswer(descriptionAndImage);
        }

        public string GetDiseaseImagePath(string AnswerData)
        {
            var descriptionAndImage = GetAnswerData(AnswerData);
            return GetAnswerData(descriptionAndImage);
        }

        private string CleanRawAnswer(string rawAnswer)
        {
            var result = rawAnswer.Replace("(", string.Empty);
            return result.Replace(")", string.Empty);
        }

        private string GetAnswer(string cleanedAnswer)
        {
            return cleanedAnswer.Split(',')[0];
        }

        private string GetAnswerData(string cleanedAnswer)
        {
            return cleanedAnswer.Substring(cleanedAnswer.IndexOf(',') + 1);
        }
    }
}
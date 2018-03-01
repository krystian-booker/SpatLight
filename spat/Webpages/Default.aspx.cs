using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace spat
{
    public partial class _Default : Page
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


        protected void Page_Load(object sender, EventArgs e)
        {
            GenerateSurvey();
        }

        public void GenerateSurvey()
        {
            var questions = GetSurveyQuestions();

            foreach (DataRow question in questions.Rows)
            {
                var questionHTML = string.Empty;
                switch ((int)question["Type"])
                {
                    case 0:
                        GenerateRadioQuestion(question);
                        break;
                    case 1:
                        questionHTML = GenerateTextInputQuestion(question);
                        break;
                    case 2:
                        questionHTML = GenerateCheckBoxQuestion(question);
                        break;
                    case 3:
                        questionHTML = GenerateFancyMedicalChart(question);
                        break;
                }
            }
        }

        public void GenerateRadioQuestion(DataRow question)
        {
            var surveyQuestionHeader = new Label();
            surveyQuestionHeader.Text = question["Question"].ToString();

            var surveyQuestion = new RadioButtonList();
            var answers = ExtractAnswers(question["Answer"].ToString());

            foreach (var answer in answers)
                surveyQuestion.Items.Add(answer.Answer);

            surveyBody.Controls.Add(surveyQuestionHeader);
            surveyBody.Controls.Add(surveyQuestion);
        }

        public string GenerateTextInputQuestion(DataRow question)
        {
            return "";
        }

        public string GenerateCheckBoxQuestion(DataRow question)
        {
            return "";
        }

        public string GenerateFancyMedicalChart(DataRow question) //Change this name
        {
            return "";
        }

        public List<ExtractedAnswer> ExtractAnswers(string Answers)
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

        public string CleanRawAnswer(string rawAnswer)
        {
            var result = rawAnswer.Replace("(", string.Empty);
            return result.Replace(")", string.Empty);
        }

        public string GetAnswer(string cleanedAnswer)
        {
            return cleanedAnswer.Split(',')[0];
        }

        public string GetAnswerData(string cleanedAnswer)
        {
            return cleanedAnswer.Substring(cleanedAnswer.IndexOf(',') + 1);
        }

        public DataTable GetSurveyQuestions()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings[1].ConnectionString))
            {
                con.Open();

                SqlCommand com = new SqlCommand("Select * from surveyQuestions");
                com.CommandType = CommandType.Text;
                com.Connection = con;

                using (SqlDataAdapter da = new SqlDataAdapter(com))
                {
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    return dt;
                }
            }
        }
    }
}
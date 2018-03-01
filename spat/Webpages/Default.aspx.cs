using spat.Managers;
using spat.Managers.Interfaces;
using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace spat
{
    public partial class _Default : Page
    {
        private ISurverConnectionManager _surverConnection;
        private ISurveyAnswerManager _surveyAnswerManger;

        protected void Page_Load(object sender, EventArgs e)
        {
            _surverConnection = new SurverConnectionManager();
            _surveyAnswerManger = new SurveyAnswerManager();

            GenerateSurvey();
        }

        public void GenerateSurvey()
        {
            var questions = _surverConnection.GetSurveyQuestions();

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
            var answers = _surveyAnswerManger.ExtractAnswers(question["Answer"].ToString());

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
    }
}
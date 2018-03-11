using spat.Managers;
using spat.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using static spat.Models.ExtractedAnswerModel;

namespace spat
{
    public partial class _Default : Page
    {
        private IServerConnectionManager _serverConnection;
        private Dictionary<int, List<AnswerModel>> idAnswers = new Dictionary<int, List<AnswerModel>>();

        protected void Page_Load(object sender, EventArgs e)
        {
            _serverConnection = new ServerConnectionManager();

            GenerateSurvey();
        }

        public void GenerateSurvey()
        {
            var questionList = _serverConnection.GetSurveyQuestions();

            foreach (var question in questionList)
            {
                var questionHTML = string.Empty;
                switch (question.QuestionType)
                {
                    case 0:
                        GenerateRadioQuestion(question);
                        break;
                    case 2:
                        GenerateCheckBoxQuestion(question);
                        break;
                    case 3:
                        GenerateHomunculusChart(question);
                        break;
                }
            }
        }

        public void GenerateRadioQuestion(QuestionModel question)
        {
            var surveyQuestionHeader = new Label { Text = question.QuestionText };
            var surveyQuestionReason = new LiteralControl(string.Format("<img src=\"/Images/info.png\" height=\"20\" width=\"20\" title=\"{0}\"/>", question.QuestionDescription));

            var surveyQuestion = new RadioButtonList();
            var answers = _serverConnection.GetSurveyAnswers(question.QuestionId);
            idAnswers.Add(question.QuestionId, answers);

            foreach (var answer in answers)
                surveyQuestion.Items.Add(answer.AnswerText);

            surveyBody.Controls.Add(surveyQuestionHeader);
            surveyBody.Controls.Add(surveyQuestionReason);
            surveyBody.Controls.Add(surveyQuestion);
        }

        public void GenerateCheckBoxQuestion(QuestionModel question)
        {
            var surveyQuestionHeader = new Label { Text = question.QuestionText };
            var surveyQuestionReason = new Button { Text = "Question Info", ToolTip = question.QuestionDescription };

            var surveyQuestion = new CheckBoxList();
            var answers = _serverConnection.GetSurveyAnswers(question.QuestionId);
            idAnswers.Add(question.QuestionId, answers);

            foreach (var answer in answers)
            {
                surveyQuestion.Items.Add(string.Format("{0} <img src=\"/Images/info.png\" height=\"20\" width=\"20\" title=\"{1}\"/><br/><img src=\"{2}\" height=\"217\" width=\"400\"/><br>", answer.AnswerText, answer.AnswerDescription, answer.AnswerImagePath));
            }

            surveyBody.Controls.Add(surveyQuestionHeader);
            surveyBody.Controls.Add(surveyQuestionReason);
            surveyBody.Controls.Add(surveyQuestion);
        }

        public void GenerateHomunculusChart(QuestionModel question)
        {
            var surveyQuestionHeader = new Label { Text = question.QuestionText  };
            var surveyQuestionReason = new Button { Text = "Question Info", ToolTip = question.QuestionDescription };

            var surveyQuestion = new Image { ImageUrl = "~/Images/chart.png" };

            surveyBody.Controls.Add(surveyQuestionHeader);
            surveyBody.Controls.Add(surveyQuestionReason);
            surveyBody.Controls.Add(new LiteralControl("<br/>"));
            surveyBody.Controls.Add(surveyQuestion);
            surveyBody.Controls.Add(new LiteralControl("<br/>"));
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var test = JointsSelected.Value;
        }
    }
}
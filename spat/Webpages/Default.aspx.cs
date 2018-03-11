using spat.Managers;
using spat.Managers.Interfaces;
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
        private ISurveyAnswerManager _surveyAnswerManger;
        private Dictionary<int, List<ExtractedAnswer>> idAnswers = new Dictionary<int, List<ExtractedAnswer>>();

        protected void Page_Load(object sender, EventArgs e)
        {
            _serverConnection = new ServerConnectionManager();
            _surveyAnswerManger = new SurveyAnswerManager();

            GenerateSurvey();
        }

        public void GenerateSurvey()
        {
            var questions = _serverConnection.GetSurveyQuestions();

            foreach (DataRow question in questions.Rows)
            {
                var questionHTML = string.Empty;
                switch ((int)question["Type"])
                {
                    case 0:
                        GenerateRadioQuestion(question);
                        break;
                    case 1:
                        GenerateTextInputQuestion(question);
                        break;
                    case 2:
                        GenerateCheckBoxQuestion(question);
                        break;
                    case 3:
                        GenerateFancyMedicalChart(question);
                        break;
                }
            }
        }

        public void GenerateRadioQuestion(DataRow question)
        {
            var surveyQuestionHeader = new Label { Text = question["Question"].ToString() };
            var surveyQuestionReason = new Button { Text = "Question Info", ToolTip = question["QuestionDescription"].ToString() };

            var surveyQuestion = new RadioButtonList();
            var answers = _surveyAnswerManger.GetExtractAnswers(question["Answer"].ToString());
            idAnswers.Add((int)question["Id"], answers);

            foreach (var answer in answers)
                surveyQuestion.Items.Add(answer.Answer);

            surveyBody.Controls.Add(surveyQuestionHeader);
            surveyBody.Controls.Add(surveyQuestionReason);
            surveyBody.Controls.Add(surveyQuestion);
        }

        public void GenerateTextInputQuestion(DataRow question)
        {
            var surveyQuestionHeader = new Label { Text = question["Question"].ToString() };
            var surveyQuestionReason = new Button { Text = "Question Info", ToolTip = question["QuestionDescription"].ToString() };
            var surveyQuestion = new TextBox();

            surveyBody.Controls.Add(surveyQuestionHeader);
            surveyBody.Controls.Add(surveyQuestionReason);
            surveyBody.Controls.Add(new LiteralControl("<br/>"));
            surveyBody.Controls.Add(surveyQuestion);
            surveyBody.Controls.Add(new LiteralControl("<br/>"));
        }

        public void GenerateCheckBoxQuestion(DataRow question)
        {
            var surveyQuestionHeader = new Label { Text = question["Question"].ToString() };
            var surveyQuestionReason = new Button { Text = "Question Info", ToolTip = question["QuestionDescription"].ToString() };

            var surveyQuestion = new CheckBoxList();
            var answers = _surveyAnswerManger.GetExtractAnswers(question["Answer"].ToString());
            idAnswers.Add((int)question["Id"], answers);

            foreach (var answer in answers)
            {
                var medicalDescription = _surveyAnswerManger.GetAnswerMedicalDescription(answer.AnswerData);
                var diseaseImagePath = _surveyAnswerManger.GetDiseaseImagePath(answer.AnswerData);
                surveyQuestion.Items.Add(string.Format("{0} <img src=\"/Images/info.png\" height=\"20\" width=\"20\" title=\"{1}\"/><br/><img src=\"{2}\" height=\"217\" width=\"400\"/><br>", answer.Answer, medicalDescription, diseaseImagePath));
            }

            surveyBody.Controls.Add(surveyQuestionHeader);
            surveyBody.Controls.Add(surveyQuestionReason);
            surveyBody.Controls.Add(surveyQuestion);
        }

        public void GenerateFancyMedicalChart(DataRow question) //Change this name
        {
            var surveyQuestionHeader = new Label { Text = question["Question"].ToString() };
            var surveyQuestionReason = new Button { Text = "Question Info", ToolTip = question["QuestionDescription"].ToString() };

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
using spat.Managers;
using spat.Models;
using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace spat
{
    public partial class _Default : Page
    {
        private IServerConnectionManager _serverConnection;

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
                        GererateNewRadioQuestion(question);
                        break;
                    case 2:
                        GenerateCheckBoxQuestion(question);
                        break;
                    case 3:
                        //GenerateHomunculusChart(question);
                        break;
                }
            }
        }

        public void GererateNewRadioQuestion(QuestionModel question)
        {
            var previousQuestionId = question.QuestionId;
            var nextQuestionId = question.QuestionId;
            previousQuestionId--;
            nextQuestionId++;

            var surveyAnswerList = GenerateRadioButtonList(question.QuestionId);

            var htmlObjectList = new List<object>
            {
                //Question
                new LiteralControl(string.Format("<section class=\"content-section\" class=\"questionTypeTwo\" id=\"question{0}\">", question.QuestionId)),
                new LiteralControl("<div class=\"container text-center\">"),
                new LiteralControl("<div class=\"row\">"),
                new LiteralControl("<div class=\"col-lg-10 mx-auto\">"),
                new LiteralControl(string.Format("<h2>{0}</h2>", question.QuestionText)),
                new LiteralControl("<p class=\"lead mb-2\">"),
                new LiteralControl(string.Format("<a href=\"\" data-toggle=\"modal\" data-target=\"#whyAsking{0}\">Why are we asking this?</a>", question.QuestionId)),
                new LiteralControl("</p>"),
                new LiteralControl("<p class=\"lead m-5\">Please select from the list which best describes you<br>"),
                new LiteralControl("<div class=\"info mb-4\" align=\"center\">"),
                surveyAnswerList,
                new LiteralControl("</div>"),
                new LiteralControl("</p>"),
                new LiteralControl(string.Format("<a class=\"btn btn-dark btn-xl js-scroll-trigger\" href=\"#question{0}\" style=\"margin: 5px;\">Previous</a>", previousQuestionId)),
                new LiteralControl(string.Format("<a class=\"btn btn-dark btn-xl js-scroll-trigger\" href=\"#question{0}\" onclick=\"visible(question{0})\">&nbsp;&nbsp;&nbsp; Next &nbsp;&nbsp;&nbsp;</a>", nextQuestionId)),
                new LiteralControl("</div>"),
                new LiteralControl("</div>"),
                new LiteralControl("</div>"),

                //Popup
                new LiteralControl(string.Format("<div id=\"whyAsking{0}\" class=\"modal fade\" role=\"dialog\">", question.QuestionId)),
                new LiteralControl("<div class=\"modal-dialog\">"),
                new LiteralControl("<div class=\"modal-content\">"),
                new LiteralControl("<div class=\"modal-header\">"),
                new LiteralControl("<h4 class=\"modal-title\">Why are we asking this?</h4>"),
                new LiteralControl("<button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>"),
                new LiteralControl("</div>"),
                new LiteralControl("<div class=\"modal-body\">"),
                new LiteralControl(string.Format("<p class=\"insideModal\">{0}</p>", question.QuestionDescription)),
                new LiteralControl("</div>"),
                new LiteralControl("<div class=\"modal-footer\">"),
                new LiteralControl("<button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Close</button>"),
                new LiteralControl("</div>"),
                new LiteralControl("</div>"),
                new LiteralControl("</div>"),
                new LiteralControl("</div>"),
                new LiteralControl("</section>")
            };
            PlaceUIObjects(htmlObjectList);
        }

        public void GenerateCheckBoxQuestion(QuestionModel question)
        {
            var surveyQuestionHeader = new Label { Text = question.QuestionText };
            var surveyQuestionReason = new Button { Text = "Question Info", ToolTip = question.QuestionDescription };

            var surveyQuestion = new CheckBoxList();
            var answers = _serverConnection.GetSurveyAnswers(question.QuestionId);

            foreach (var answer in answers)
            {
                surveyQuestion.Items.Add(string.Format("{0} <img src=\"/Images/info.png\" height=\"20\" width=\"20\" title=\"{1}\"/><br/><img src=\"{2}\" height=\"217\" width=\"400\"/><br>", answer.AnswerText, answer.AnswerDescription, answer.AnswerImagePath));
            }

            //surveyBody.Controls.Add(surveyQuestionHeader);
            //surveyBody.Controls.Add(surveyQuestionReason);
            //surveyBody.Controls.Add(surveyQuestion);
        }

        public RadioButtonList GenerateRadioButtonList(int QuestionId)
        {
            var surveyAnswerList = new RadioButtonList();
            var answers = _serverConnection.GetSurveyAnswers(QuestionId);

            foreach (var answer in answers)
                surveyAnswerList.Items.Add(answer.AnswerText);

            return surveyAnswerList;
        }

        public void PlaceUIObjects(List<object> UiObjects)
        {
            foreach (var control in UiObjects)
                allQuestions.Controls.Add((Control)control);
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    var test = JointsSelected.Value;
        //}
    }
}
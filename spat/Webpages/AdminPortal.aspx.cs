using spat.Managers;
using spat.Models;
using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace spat.Webpages
{
    public partial class Login : Page
    {
        private IServerConnectionManager _serverConnection;
        private bool HomunculusAdded;

        protected void Page_Load(object sender, EventArgs e)
        {
            _serverConnection = new ServerConnectionManager();
            tbUserName.Focus();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            lblError.Text = string.Empty;

            var username = tbUserName.Text;
            var password = tbPassword.Text;

            var result = ValidInput(username);
            result &= ValidInput(password);

            if (result)
            {
                CheckLogin(username, password);
            }
            else
            {
                DisplayError("Invalid input");
            }
        }

        private void CheckLogin(string username, string password)
        {
            var loginSuccesful = _serverConnection.ValidateLoginCredentials(username, password);
            if (loginSuccesful.Rows.Count == 1)
            {
                GenerateAdminPortal();
            }
            else
                DisplayError("Wrong username or password");
        }

        private void DisplayError(string error)
        {
            lblError.Text = error;
        }

        private bool ValidInput(string input)
        {
            return !(input.IndexOfAny(new char[] { '*', '&', '#', ';', '-', '%', '/', '\'', '!', '@', '$', '(', ')', '=' }) != -1);
        }

        private void GenerateAdminPortal()
        {
            signIn.Visible = false;
            adminPortalForm.Visible = true;

            var surveyQuestions = _serverConnection.GetSurveyQuestions();

            foreach (var question in surveyQuestions)
            {
                adminPortalForm.Controls.Add(new LiteralControl("<div class=\"question\">"));
                adminPortalForm.Controls.Add(new LiteralControl("<div class=\"row\">"));
                adminPortalForm.Controls.Add(new LiteralControl("<div class=\"col-lg-12\">"));
                GenerateAdminPortalHeader(question);
                adminPortalForm.Controls.Add(new LiteralControl("</div>"));
                adminPortalForm.Controls.Add(new LiteralControl("</div>"));
                adminPortalForm.Controls.Add(new LiteralControl("<div class=\"row\">"));
                adminPortalForm.Controls.Add(new LiteralControl("<div class=\"col-lg-12\">"));
                GenerateQuestionEditor(question);
                adminPortalForm.Controls.Add(new LiteralControl("</div>"));
                adminPortalForm.Controls.Add(new LiteralControl("</div>"));
                adminPortalForm.Controls.Add(new LiteralControl("<div class=\"row\">"));
                adminPortalForm.Controls.Add(new LiteralControl("<div class=\"col-lg-12\">"));
                GenerateQuestionDescriptionEditor(question);
                adminPortalForm.Controls.Add(new LiteralControl("</div>"));
                adminPortalForm.Controls.Add(new LiteralControl("</div>"));
                adminPortalForm.Controls.Add(new LiteralControl("<div class=\"row\">"));
                adminPortalForm.Controls.Add(new LiteralControl("<div class=\"col-lg-12\">"));

                var answerLabel = new Label { Text = "Answers" };
                adminPortalForm.Controls.Add(new LiteralControl("<div class=\"lbl-qa\">"));
                adminPortalForm.Controls.Add(answerLabel);
                adminPortalForm.Controls.Add(new LiteralControl("</div>"));
                adminPortalForm.Controls.Add(new LiteralControl("</div>"));
                adminPortalForm.Controls.Add(new LiteralControl("</div>"));
                adminPortalForm.Controls.Add(new LiteralControl("<div class=\"row\">"));

                var answers = _serverConnection.GetSurveyAnswers(question.QuestionId);

                foreach (var answer in answers)
                {
                    switch (question.QuestionType)
                    {
                        case 0:
                            var surveyAnswerType0 = new TextBox { Text = answer.AnswerText, TextMode = TextBoxMode.MultiLine, CssClass = "answer-input" };
                            var surveyAnswerWeightLabel = new Label { Text = "Weight" };
                            var surveyAnswerWeightType0 = new TextBox { Text = answer.AnswerWeight, TextMode = TextBoxMode.SingleLine, CssClass = "answer-weight" };
                            var answerDelete = new Button { Text = "Delete", CommandName = "DeleteAnswer()", CssClass = "btn-delete" };
                            adminPortalForm.Controls.Add(new LiteralControl("<div class=\"col-xs-12 col-sm-6 col-md-4 col-lg-3\">"));
                            adminPortalForm.Controls.Add(new LiteralControl("<div class=\"answer-box\">"));
                            adminPortalForm.Controls.Add(surveyAnswerType0);
                            adminPortalForm.Controls.Add(new LiteralControl("<div class=\"row\">"));
                            adminPortalForm.Controls.Add(new LiteralControl("<div class=\"col-lg-9 lbl-weight\">"));
                            adminPortalForm.Controls.Add(surveyAnswerWeightLabel);
                            adminPortalForm.Controls.Add(new LiteralControl("</div>"));
                            adminPortalForm.Controls.Add(new LiteralControl("<div class=\"col-lg-3 weight-wrapper\">"));
                            adminPortalForm.Controls.Add(surveyAnswerWeightType0);
                            adminPortalForm.Controls.Add(new LiteralControl("</div>"));
                            adminPortalForm.Controls.Add(new LiteralControl("</div>"));
                            adminPortalForm.Controls.Add(answerDelete);
                            adminPortalForm.Controls.Add(new LiteralControl("</div>"));
                            adminPortalForm.Controls.Add(new LiteralControl("</div>"));
                            break;
                        case 1:
                            //GenerateTextInputQuestion(question);
                            break;
                        case 2:
                            //GenerateCheckBoxQuestion(question);
                            break;
                        case 3:
                            if (HomunculusAdded) continue;
                            var surveyAnswerType3 = new Label { Text = "Homunculus chart can't be modified" };
                            adminPortalForm.Controls.Add(surveyAnswerType3);
                            adminPortalForm.Controls.Add(new LiteralControl("<br/>"));
                            HomunculusAdded = true;
                            break;
                        default:
                            break;
                    }


                }
                var answerAdd = new Button { Text = "Add", CommandName = "AddAnswer()", CssClass = "btn-add" };
                var saveChanges = new Button { Text = "Save Changes", CommandName = "SaveChanges()", CssClass = "btn-save" };

                adminPortalForm.Controls.Add(new LiteralControl("<div class=\"col-xs-12 col-sm-6 col-md-4 col-lg-3\">"));
                adminPortalForm.Controls.Add(new LiteralControl("<div class=\"answer-box add-box\">"));
                adminPortalForm.Controls.Add(answerAdd);
                adminPortalForm.Controls.Add(new LiteralControl("</div>"));
                adminPortalForm.Controls.Add(new LiteralControl("</div>"));
                adminPortalForm.Controls.Add(new LiteralControl("</div>"));

                adminPortalForm.Controls.Add(new LiteralControl("<div class=\"row save-area\">"));
                adminPortalForm.Controls.Add(new LiteralControl("<div class=\"col-lg-12\">"));
                adminPortalForm.Controls.Add(saveChanges);
                adminPortalForm.Controls.Add(new LiteralControl("</div>"));
                adminPortalForm.Controls.Add(new LiteralControl("</div>"));
                adminPortalForm.Controls.Add(new LiteralControl("</div>"));
            }
        }

        private void GenerateAdminPortalHeader(QuestionModel question)
        {
            var questionIdLabel = new Label { Text = string.Format("Question {0} ", question.QuestionId) };

            var questionLabel = new Label { Text = "Question" };

            adminPortalForm.Controls.Add(new LiteralControl("<div class=\"question-header\">"));
            adminPortalForm.Controls.Add(questionIdLabel);
            adminPortalForm.Controls.Add(new LiteralControl("</div>"));
            adminPortalForm.Controls.Add(new LiteralControl("<div class=\"lbl-qa\">"));
            adminPortalForm.Controls.Add(questionLabel);
            adminPortalForm.Controls.Add(new LiteralControl("</div>"));
        }

        private void GenerateQuestionEditor(QuestionModel question)
        {
            var surveyQuestion = new TextBox { Text = question.QuestionText, TextMode = TextBoxMode.MultiLine, CssClass = "question-input" };
            adminPortalForm.Controls.Add(surveyQuestion);
        }

        private void GenerateQuestionDescriptionEditor(QuestionModel question)
        {
            var surveyQuestionDescription = new TextBox { Text = question.QuestionDescription, TextMode = TextBoxMode.MultiLine, CssClass = "question-input" };

            var questionDescriptionLabel = new Label { Text = "Question Description" };

            adminPortalForm.Controls.Add(new LiteralControl("<div class=\"lbl-qa\">"));
            adminPortalForm.Controls.Add(questionDescriptionLabel);
            adminPortalForm.Controls.Add(new LiteralControl("</div>"));
            adminPortalForm.Controls.Add(surveyQuestionDescription);
        }

        private void DeleteAnswer()
        {

        }

        private void AddAnswer()
        {

        }

        private void SaveChanges()
        {

        }
    }
}
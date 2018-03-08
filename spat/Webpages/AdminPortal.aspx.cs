using spat.Managers;
using spat.Managers.Interfaces;
using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace spat.Webpages
{
    public partial class Login : Page
    {
        private ISurverConnectionManager _surverConnection;
        private ISurveyAnswerManager _surveyAnswerManger;
        private bool HomunculusAdded;

        protected void Page_Load(object sender, EventArgs e)
        {
            _surverConnection = new SurverConnectionManager();
            _surveyAnswerManger = new SurveyAnswerManager();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            lblError.Text = string.Empty;

            var username = tbUserName.Text;
            var password = tbPassword.Text;

            var result = ValidInput(username);
            result &= ValidInput(password);

            if(result)
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
            var loginSuccesful = _surverConnection.ValidateLoginCredentials(username, password);
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
            return !(input.IndexOfAny(new char[] {'*','&','#',';','-','%','/','\'','!','@','$','(',')','='}) != -1);
        }

        private void GenerateAdminPortal()
        {
            signIn.Visible = false;
            adminPortalForm.Visible = true;

            var surveyQuestions = _surverConnection.GetSurveyQuestions();

            foreach (DataRow question in surveyQuestions.Rows)
            {
                GenerateAdminPortalHeader(question);
                GenerateQuestionEditor(question);


                var answerLabel = new Label { Text = "Answers:" };
                answerLabel.Font.Bold = true;
                adminPortalForm.Controls.Add(answerLabel);
                adminPortalForm.Controls.Add(new LiteralControl("<br/>"));

                var answers = _surveyAnswerManger.GetExtractAnswers(question["Answer"].ToString());
                foreach (var answer in answers)
                {
                    switch ((int)question["Type"])
                    {
                        case 0:
                            var surveyAnswerType0 = new TextBox { Text = answer.Answer, TextMode = TextBoxMode.MultiLine, Width = 500, Height = 30 };
                            var answerDelete = new Button { Text = "Delete", CommandName= "DeleteAnswer()" };
                            adminPortalForm.Controls.Add(surveyAnswerType0);
                            adminPortalForm.Controls.Add(answerDelete);
                            adminPortalForm.Controls.Add(new LiteralControl("<br/>"));
                            break;
                        case 1:
                            //GenerateTextInputQuestion(question);
                            break;
                        case 2:
                            //GenerateCheckBoxQuestion(question);
                            break;
                        case 3:
                            if (HomunculusAdded) continue;
                            var surveyAnswerType3 = new Label { Text = "Homunculus chart can't be modified"};
                            adminPortalForm.Controls.Add(surveyAnswerType3);
                            adminPortalForm.Controls.Add(new LiteralControl("<br/>"));
                            HomunculusAdded = true;
                            break;
                        default:
                            break;
                    }


                }

                adminPortalForm.Controls.Add(new LiteralControl("<br/>"));
            }
        }

        private void GenerateAdminPortalHeader(DataRow question)
        {
            var questionIdLabel = new Label { Text = string.Format("Question {0}: ", question["Id"].ToString()) };
            questionIdLabel.Font.Bold = true;

            var questionLabel = new Label { Text = "Question:" };
            questionLabel.Font.Bold = true;

            adminPortalForm.Controls.Add(questionIdLabel);
            adminPortalForm.Controls.Add(new LiteralControl("<br/>"));
            adminPortalForm.Controls.Add(questionLabel);
            adminPortalForm.Controls.Add(new LiteralControl("<br/>"));
        }

        private void GenerateQuestionEditor(DataRow question)
        {
            var surveyQuestion = new TextBox { Text = question["Question"].ToString(), TextMode = TextBoxMode.MultiLine, Width=500, Height= 30 };
            adminPortalForm.Controls.Add(surveyQuestion);
            adminPortalForm.Controls.Add(new LiteralControl("<br/>"));
        }

        private void DeleteAnswer()
        {

        }
    }
}
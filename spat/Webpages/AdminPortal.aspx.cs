using spat.Managers;
using spat.Models;
using System;
using System.Collections.Generic;
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

        protected void Login_Click(object sender, EventArgs e)
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
            manage.Attributes.Clear();
            manage.HRef = "#";
            stats.Attributes.Clear();
            stats.HRef = "AdminStatistics";
            login.InnerText = "Logout";
            login.HRef = "AdminPortal";

            signIn.Visible = false;
            QuestionHeader.Visible = true;
            Questions.Visible = true;

            var surveyQuestions = _serverConnection.GetSurveyQuestions();

            //Question 1
            Question1Text.Text = surveyQuestions[0].QuestionText;
            Question1Description.Text = surveyQuestions[0].QuestionDescription;

            var answers = _serverConnection.GetSurveyAnswers(surveyQuestions[0].QuestionId);
            Question1Answer1.Text = answers[0].AnswerText;
            Question1Weight1.Text = answers[0].AnswerWeight;
            Question1Answer2.Text = answers[1].AnswerText;
            Question1Weight2.Text = answers[1].AnswerWeight;

            //Question 2
            Question2Text.Text = surveyQuestions[1].QuestionText;
            Question2Description.Text = surveyQuestions[1].QuestionDescription;

            answers = _serverConnection.GetSurveyAnswers(surveyQuestions[1].QuestionId);
            Question2Answer1.Text = answers[0].AnswerText;
            Question2Weight1.Text = answers[0].AnswerWeight;
            Question2Answer2.Text = answers[1].AnswerText;
            Question2Weight2.Text = answers[1].AnswerWeight;

            //Question 3
            Question3Text.Text = surveyQuestions[2].QuestionText;
            Question3Description.Text = surveyQuestions[2].QuestionDescription;

            answers = _serverConnection.GetSurveyAnswers(surveyQuestions[2].QuestionId);
            Question3Answer1.Text = answers[0].AnswerText;
            Question3Weight1.Text = answers[0].AnswerWeight;
            Question3Answer2.Text = answers[1].AnswerText;
            Question3Weight2.Text = answers[1].AnswerWeight;

            //Question 5
            Question5Text.Text = surveyQuestions[4].QuestionText;
            Question5Description.Text = surveyQuestions[4].QuestionDescription;

            answers = _serverConnection.GetSurveyAnswers(surveyQuestions[4].QuestionId);
            Question5Answer1.Text = answers[0].AnswerText;
            Question5Weight1.Text = answers[0].AnswerWeight;
            Question5Answer2.Text = answers[1].AnswerText;
            Question5Weight2.Text = answers[1].AnswerWeight;

            //Question 6
            Question6Text.Text = surveyQuestions[5].QuestionText;
            Question6Description.Text = surveyQuestions[5].QuestionDescription;

            answers = _serverConnection.GetSurveyAnswers(surveyQuestions[5].QuestionId);
            Question6Answer1.Text = answers[0].AnswerText;
            Question6Weight1.Text = answers[0].AnswerWeight;
            Question6Answer2.Text = answers[1].AnswerText;
            Question6Weight2.Text = answers[1].AnswerWeight;

            //Question 7
            Question7Text.Text = surveyQuestions[6].QuestionText;
            Question7Description.Text = surveyQuestions[6].QuestionDescription;

            answers = _serverConnection.GetSurveyAnswers(surveyQuestions[6].QuestionId);
            Question7Answer1.Text = answers[0].AnswerText;
            Question7Weight1.Text = answers[0].AnswerWeight;
            Question7Answer2.Text = answers[1].AnswerText;
            Question7Weight2.Text = answers[1].AnswerWeight;

            //Question 8
            Question8Text.Text = surveyQuestions[7].QuestionText;
            Question8Description.Text = surveyQuestions[7].QuestionDescription;

            answers = _serverConnection.GetSurveyAnswers(surveyQuestions[7].QuestionId);
            Question8Answer1.Text = answers[0].AnswerText;
            Question8Weight1.Text = answers[0].AnswerWeight;
            Question8Answer2.Text = answers[1].AnswerText;
            Question8Weight2.Text = answers[1].AnswerWeight;

            //Question 9
            Question9Text.Text = surveyQuestions[8].QuestionText;
            Question9Description.Text = surveyQuestions[8].QuestionDescription;

            answers = _serverConnection.GetSurveyAnswers(surveyQuestions[8].QuestionId);
            Question9Answer1.Text = answers[0].AnswerText;
            Question9Weight1.Text = answers[0].AnswerWeight;
            Question9Answer2.Text = answers[1].AnswerText;
            Question9Weight2.Text = answers[1].AnswerWeight;

            //Question 10
            Question10Text.Text = surveyQuestions[9].QuestionText;
            Question10Description.Text = surveyQuestions[9].QuestionDescription;

            answers = _serverConnection.GetSurveyAnswers(surveyQuestions[9].QuestionId);
            Question10Answer1.Text = answers[0].AnswerText;
            Question10Weight1.Text = answers[0].AnswerWeight;
            Question10Answer1Description.Text = answers[0].AnswerDescription;

            Question10Answer2.Text = answers[1].AnswerText;
            Question10Weight2.Text = answers[1].AnswerWeight;
            Question10Answer2Description.Text = answers[1].AnswerDescription;

            Question10Answer3.Text = answers[2].AnswerText;
            Question10Weight3.Text = answers[2].AnswerWeight;
            Question10Answer3Description.Text = answers[2].AnswerDescription;

            Question10Answer4.Text = answers[3].AnswerText;
            Question10Weight4.Text = answers[3].AnswerWeight;
            Question10Answer4Description.Text = answers[3].AnswerDescription;


            //Question 11
            Question11Text.Text = surveyQuestions[10].QuestionText;
            Question11Description.Text = surveyQuestions[10].QuestionDescription;

            answers = _serverConnection.GetSurveyAnswers(surveyQuestions[10].QuestionId);
            Question11Answer1.Text = answers[0].AnswerText;
            Question11Weight1.Text = answers[0].AnswerWeight;
            Question11Answer2.Text = answers[1].AnswerText;
            Question11Weight2.Text = answers[1].AnswerWeight;

            //Question 12
            Question12Text.Text = surveyQuestions[11].QuestionText;
            Question12Description.Text = surveyQuestions[11].QuestionDescription;

            answers = _serverConnection.GetSurveyAnswers(surveyQuestions[11].QuestionId);
            Question12Answer1.Text = answers[0].AnswerText;
            Question12Weight1.Text = answers[0].AnswerWeight;
            Question12Answer2.Text = answers[1].AnswerText;
            Question12Weight2.Text = answers[1].AnswerWeight;

            //Question 13
            Question13Text.Text = surveyQuestions[12].QuestionText;
            Question13Description.Text = surveyQuestions[12].QuestionDescription;

            answers = _serverConnection.GetSurveyAnswers(surveyQuestions[12].QuestionId);
            Question13Answer1.Text = answers[0].AnswerText;
            Question13Weight1.Text = answers[0].AnswerWeight;
            Question13Answer1Description.Text = answers[0].AnswerDescription;

            Question13Answer2.Text = answers[1].AnswerText;
            Question13Weight2.Text = answers[1].AnswerWeight;
            Question13Answer2Description.Text = answers[1].AnswerDescription;

            Question13Answer3.Text = answers[2].AnswerText;
            Question13Weight3.Text = answers[2].AnswerWeight;
            Question13Answer3Description.Text = answers[2].AnswerDescription;

            Question13Answer4.Text = answers[3].AnswerText;
            Question13Weight4.Text = answers[3].AnswerWeight;
            Question13Answer4Description.Text = answers[3].AnswerDescription;

            Question13Answer5.Text = answers[4].AnswerText;
            Question13Weight5.Text = answers[4].AnswerWeight;
            Question13Answer5Description.Text = answers[4].AnswerDescription;

            Question13Answer6.Text = answers[5].AnswerText;
            Question13Weight6.Text = answers[5].AnswerWeight;
            Question13Answer6Description.Text = answers[5].AnswerDescription;

            Question13Answer7.Text = answers[6].AnswerText;
            Question13Weight7.Text = answers[6].AnswerWeight;
            Question13Answer7Description.Text = answers[6].AnswerDescription;
        }

        protected void SaveChanges(object sender, EventArgs e)
        {
            var questionList = new List<QuestionModel>
            {
                new QuestionModel
                {
                    QuestionId = 1,
                    QuestionDescription = Question1Text.Text,
                    QuestionText = Question1Description.Text
                },
                new QuestionModel
                {
                    QuestionId = 2,
                    QuestionDescription = Question2Text.Text,
                    QuestionText = Question2Description.Text
                },
                new QuestionModel
                {
                    QuestionId = 3,
                    QuestionDescription = Question3Text.Text,
                    QuestionText = Question3Description.Text
                },
                new QuestionModel
                {
                    QuestionId = 5,
                    QuestionDescription = Question5Text.Text,
                    QuestionText = Question5Description.Text
                },
                new QuestionModel
                {
                    QuestionId = 6,
                    QuestionDescription = Question6Text.Text,
                    QuestionText = Question6Description.Text
                },
                new QuestionModel
                {
                    QuestionId = 7,
                    QuestionDescription = Question7Text.Text,
                    QuestionText = Question7Description.Text
                },
                new QuestionModel
                {
                    QuestionId = 8,
                    QuestionDescription = Question8Text.Text,
                    QuestionText = Question8Description.Text
                },
                new QuestionModel
                {
                    QuestionId = 9,
                    QuestionDescription = Question9Text.Text,
                    QuestionText = Question9Description.Text
                },
                new QuestionModel
                {
                    QuestionId = 10,
                    QuestionDescription = Question10Text.Text,
                    QuestionText = Question10Description.Text
                },
                new QuestionModel
                {
                    QuestionId = 11,
                    QuestionDescription = Question11Text.Text,
                    QuestionText = Question11Description.Text
                },
                new QuestionModel
                {
                    QuestionId = 12,
                    QuestionDescription = Question12Text.Text,
                    QuestionText = Question12Description.Text
                },
                new QuestionModel
                {
                    QuestionId = 13,
                    QuestionDescription = Question13Text.Text,
                    QuestionText = Question13Description.Text
                },
            };

            var answerList = new List<AnswerModel>()
            {
                new AnswerModel
                {
                    AnswerId = 1,
                    AnswerText =  Question1Answer1.Text,
                    AnswerWeight = Question1Weight1.Text
                },
                new AnswerModel
                {
                    AnswerId = 2,
                    AnswerText =  Question1Answer2.Text,
                    AnswerWeight = Question1Weight2.Text
                },
                new AnswerModel
                {
                    AnswerId = 3,
                    AnswerText =  Question2Answer1.Text,
                    AnswerWeight = Question2Weight1.Text
                },
                new AnswerModel
                {
                    AnswerId = 4,
                    AnswerText =  Question2Answer2.Text,
                    AnswerWeight = Question2Weight2.Text
                },
                new AnswerModel
                {
                    AnswerId = 5,
                    AnswerText =  Question3Answer1.Text,
                    AnswerWeight = Question3Weight1.Text
                },
                new AnswerModel
                {
                    AnswerId = 6,
                    AnswerText =  Question3Answer2.Text,
                    AnswerWeight = Question3Weight2.Text
                },
                new AnswerModel
                {
                    AnswerId = 7,
                    AnswerText =  Question5Answer1.Text,
                    AnswerWeight = Question5Weight1.Text
                },
                new AnswerModel
                {
                    AnswerId = 8,
                    AnswerText =  Question5Answer2.Text,
                    AnswerWeight = Question5Weight2.Text
                },
                new AnswerModel
                {
                    AnswerId = 9,
                    AnswerText =  Question6Answer1.Text,
                    AnswerWeight = Question6Weight1.Text
                },
                new AnswerModel
                {
                    AnswerId = 10,
                    AnswerText =  Question6Answer2.Text,
                    AnswerWeight = Question6Weight2.Text
                },
                new AnswerModel
                {
                    AnswerId = 11,
                    AnswerText =  Question7Answer1.Text,
                    AnswerWeight = Question7Weight1.Text
                },
                new AnswerModel
                {
                    AnswerId = 12,
                    AnswerText =  Question7Answer2.Text,
                    AnswerWeight = Question7Weight2.Text
                },
                new AnswerModel
                {
                    AnswerId = 13,
                    AnswerText =  Question8Answer1.Text,
                    AnswerWeight = Question8Weight1.Text
                },
                new AnswerModel
                {
                    AnswerId = 14,
                    AnswerText =  Question8Answer2.Text,
                    AnswerWeight = Question8Weight2.Text
                },
                new AnswerModel
                {
                    AnswerId = 15,
                    AnswerText =  Question9Answer1.Text,
                    AnswerWeight = Question9Weight1.Text
                },
                new AnswerModel
                {
                    AnswerId = 16,
                    AnswerText =  Question9Answer2.Text,
                    AnswerWeight = Question9Weight2.Text
                },
                new AnswerModel
                {
                    AnswerId = 17,
                    AnswerText =  Question10Answer1.Text,
                    AnswerWeight = Question10Weight1.Text,
                    AnswerDescription = Question10Answer1Description.Text
                },
                new AnswerModel
                {
                    AnswerId = 18,
                    AnswerText =  Question10Answer2.Text,
                    AnswerWeight = Question10Weight2.Text,
                    AnswerDescription = Question10Answer2Description.Text
                },
                new AnswerModel
                {
                    AnswerId = 19,
                    AnswerText =  Question10Answer3.Text,
                    AnswerWeight = Question10Weight3.Text,
                    AnswerDescription = Question10Answer3Description.Text
                },
                new AnswerModel
                {
                    AnswerId = 20,
                    AnswerText =  Question10Answer4.Text,
                    AnswerWeight = Question10Weight4.Text,
                    AnswerDescription = Question10Answer4Description.Text
                },
                new AnswerModel
                {
                    AnswerId = 21,
                    AnswerText =  Question10Answer5.Text,
                    AnswerWeight = Question10Weight5.Text,
                    AnswerDescription = Question10Answer4Description.Text
                },
                new AnswerModel
                {
                    AnswerId = 22,
                    AnswerText =  Question11Answer1.Text,
                    AnswerWeight = Question11Weight1.Text,
                },
                new AnswerModel
                {
                    AnswerId = 23,
                    AnswerText =  Question11Answer2.Text,
                    AnswerWeight = Question11Weight2.Text,
                },
                new AnswerModel
                {
                    AnswerId = 24,
                    AnswerText =  Question12Answer1.Text,
                    AnswerWeight = Question12Weight1.Text,
                },
                new AnswerModel
                {
                    AnswerId = 25,
                    AnswerText =  Question12Answer2.Text,
                    AnswerWeight = Question12Weight2.Text,
                },
                new AnswerModel
                {
                    AnswerId = 26,
                    AnswerText =  Question13Answer1.Text,
                    AnswerWeight = Question13Weight1.Text,
                    AnswerDescription = Question13Answer1Description.Text
                },
                new AnswerModel
                {
                    AnswerId = 27,
                    AnswerText =  Question13Answer2.Text,
                    AnswerWeight = Question13Weight2.Text,
                    AnswerDescription = Question13Answer2Description.Text
                },
                new AnswerModel
                {
                    AnswerId = 28,
                    AnswerText =  Question13Answer3.Text,
                    AnswerWeight = Question13Weight3.Text,
                    AnswerDescription = Question13Answer3Description.Text
                },
                new AnswerModel
                {
                    AnswerId = 29,
                    AnswerText =  Question13Answer4.Text,
                    AnswerWeight = Question13Weight4.Text,
                    AnswerDescription = Question13Answer4Description.Text
                },
                new AnswerModel
                {
                    AnswerId = 30,
                    AnswerText =  Question13Answer5.Text,
                    AnswerWeight = Question13Weight5.Text,
                    AnswerDescription = Question13Answer5Description.Text
                },
                new AnswerModel
                {
                    AnswerId = 31,
                    AnswerText =  Question13Answer6.Text,
                    AnswerWeight = Question13Weight6.Text,
                    AnswerDescription = Question13Answer6Description.Text
                },
                new AnswerModel
                {
                    AnswerId = 32,
                    AnswerText =  Question13Answer7.Text,
                    AnswerWeight = Question13Weight7.Text,
                    AnswerDescription = Question13Answer7Description.Text
                },
            };
            _serverConnection.SaveSurveyQuestions(questionList, answerList);
        }
    }
}
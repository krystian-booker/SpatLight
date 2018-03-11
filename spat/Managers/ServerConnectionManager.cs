using spat.Models;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace spat.Managers
{
    public class ServerConnectionManager : IServerConnectionManager
    {
        #region Public

        public List<QuestionModel> GetSurveyQuestions()
        {
            var questionRaw = GetSurveyQuestionsRaw();
            var questionList = new List<QuestionModel>();

            foreach (DataRow question in questionRaw.Rows)
            {
                questionList.Add(new QuestionModel
                {
                    QuestionId = (int)question["QuestionId"],
                    QuestionText = question["QuestionText"].ToString(),
                    QuestionDescription = question["QuestionDescription"].ToString(),
                    QuestionType = (int)question["QuestionType"]
                });
            }

            return questionList;
        }

        public List<AnswerModel> GetSurveyAnswers(int QuestionId)
        {
            var answersRaw = GetSurveyAnswersRaw(QuestionId);
            var answerList = new List<AnswerModel>();

            foreach (DataRow answer in answersRaw.Rows)
            {
                answerList.Add(new AnswerModel
                {
                    AnswerId = (int)answer["AnswerId"],
                    QuestionId = (int)answer["QuestionId"],
                    AnswerText = answer["AnswerText"].ToString(),
                    AnswerDescription = answer["AnswerDescription"].ToString(),
                    AnswerWeight = answer["AnswerWeight"].ToString(),
                    AnswerImagePath = answer["AnswerImagePath"].ToString()
                });
            }

            return answerList;
        }

        #endregion Public

        #region Private

        private DataTable GetSurveyQuestionsRaw()
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings[1].ConnectionString))
            {

                connection.Open();
                var sqlCommand = new SqlCommand("Select * from surveyQuestions")
                {
                    CommandType = CommandType.Text,
                    Connection = connection
                };

                using (SqlDataAdapter dataAdapter = new SqlDataAdapter(sqlCommand))
                {
                    var dataTable = new DataTable();
                    dataAdapter.Fill(dataTable);
                    return dataTable;
                }
            }
        }

        private DataTable GetSurveyAnswersRaw(int questionId)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings[1].ConnectionString))
            {
                con.Open();

                SqlCommand com = new SqlCommand("Select * from Answers where QuestionId = @questonId");
                com.Parameters.AddWithValue("@questonId", questionId);
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

        private DataTable ValidateLoginCredentials(string username, string password)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings[1].ConnectionString))
            {
                con.Open();

                SqlCommand com = new SqlCommand("select 1 from Admin where id = @username and Password = @password");
                com.Parameters.AddWithValue("@username", username);
                com.Parameters.AddWithValue("@password", password);
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

        #endregion Private
    }
}
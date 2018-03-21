using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace spat.Managers
{
    public class SurverConnectionManager : ISurverConnectionManager
    {
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
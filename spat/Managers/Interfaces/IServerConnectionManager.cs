using System.Data;

namespace spat.Managers
{
    public interface IServerConnectionManager
    {
        DataTable GetSurveyQuestions();
        DataTable ValidateLoginCredentials(string username, string password);
    }
}
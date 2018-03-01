using System.Data;

namespace spat.Managers
{
    public interface ISurverConnectionManager
    {
        DataTable GetSurveyQuestions();
    }
}
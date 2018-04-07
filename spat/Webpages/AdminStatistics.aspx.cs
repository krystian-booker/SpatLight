using Newtonsoft.Json;
using spat.Managers;
using spat.Models;
using System;
using System.Collections.Generic;

namespace spat.Webpages
{
    public partial class AdminStatistics : System.Web.UI.Page
    {
        private IServerConnectionManager _serverConnection;

        protected void Page_Load(object sender, EventArgs e)
        {
            _serverConnection = new ServerConnectionManager();
            var stats = _serverConnection.GetAnswerStats();

            var data = JsonConvert.SerializeObject(stats);
            chartData.Value = data;
        }
    }
}
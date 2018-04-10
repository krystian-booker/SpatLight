<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminStatistics.aspx.cs" Inherits="spat.Webpages.AdminStatistics" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>SpAT LIGHT - Administration</title>
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="../../Content/admin.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 575px;
            height: 335px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">

        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-expand-md navbar-light" id="mainNav">
            <div class="container">
                SpAT LIGHT Administration
      <button class="navbar-toggler navbar-toggler-right no-border" type="button" data-toggle="collapse" data-target="#navbarResponsive"
          aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <i class="fa fa-bars"></i>
      </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav navbar-right ml-auto">
                        <li class="nav-item">
                            <a href="AdminPortal">Manage Questions</a>
                        </li>
                        <li class="nav-item">
                            <a href="#">Statistics</a>
                        </li>

                        <li class="nav-item">
                            <a href="AdminPortal">Logout</a>
                        </li>
                     </ul>
                </div>
            </div>
        </nav>

        <!-- Login Form -->
        <div class="text-center">
            <div class="container">
                <div class="row">
                    <div class="login-form mx-auto text-center">
                        <div class="row stats">
                            <h1>Statistics</h1>
                            <ul class="navbar-nav navbar-right ml-auto">
                                <li class="nav-item">
                                    <h2>Question one</h2>
                                    <h6>What is your gender?</h6>
                                    <canvas id="QuestionOne" width="800" height="400"></canvas>
                                </li>
                                <li class="nav-item">
                                    <h2>Question two</h2>
                                    <h6>At what age did your symptoms begin?</h6>
                                    <canvas id="QuestionTwo" width="800" height="400"></canvas>
                                </li>
                                <li class="nav-item">
                                    <h2>Question three</h2>
                                    <h6>Do you smoke, or have you ever been a smoker?</h6>
                                    <canvas id="QuestionThree" width="800" height="400"></canvas>
                                </li>
                                <li class="nav-item">
                                    <h2>Question five</h2>
                                    <h6>Duration of joint symptoms?</h6>
                                    <canvas id="QuestionFive" width="800" height="400"></canvas>
                                </li>
                                <li class="nav-item">
                                    <h2>Question six</h2>
                                    <h6>Do you have morning stiffness for longer than 1 hour?</h6>
                                    <canvas id="QuestionSix" width="800" height="400"></canvas>
                                </li>
                                <li class="nav-item">
                                    <h2>Question seven</h2>
                                    <h6>Is pain and stiffness improved or worsened with activity?</h6>
                                    <canvas id="QuestionSeven" width="800" height="400"></canvas>
                                </li>
                                <li class="nav-item">
                                    <h2>Question eight</h2>
                                    <h6>Is your pain relieved with hot showers/baths or heating pads?</h6>
                                    <canvas id="QuestionEight" width="800" height="400"></canvas>
                                </li>
                                <li class="nav-item">
                                    <h2>Question nine</h2>
                                    <h6>Do you have relief with Advil, Ibuprofen, Aleve, Naproxen or other NSAIDs?</h6>
                                    <canvas id="QuestionNine" width="800" height="400"></canvas>
                                </li>
                                <li class="nav-item">
                                    <h2>Question ten</h2>
                                    <h6>Have you ever had any of the following symptoms?</h6>
                                    <canvas id="QuestionTen" width="800" height="400"></canvas>
                                </li>
                                <li class="nav-item">
                                    <h2>Question eleven</h2>
                                    <h6>1 month prior to the onset of your symptoms, did you have an episode of urethritis, cervicitis, or infections diarrhea?</h6>
                                    <canvas id="QuestionEleven" width="800" height="400"></canvas>
                                </li>
                                <li class="nav-item">
                                    <h2>Question twelve</h2>
                                    <h6>Do you have a history of inflammatory bowel disease (Crohn’s Disease or Ulcerative Colitis) diagnosed by a gastroenterologist? OR have you had chronic diarrhea (longer than 3 weeks) associated with blood and/or unintended weight loss?</h6>
                                    <canvas id="QuestionTwelve" width="800" height="400"></canvas>
                                </li>
                                <li class="nav-item">
                                    <h2>Question thirteen</h2>
                                    <h6>Do you have a family history of any of the following?</h6>
                                    <canvas id="QuestionThirteen" width="800" height="400"></canvas>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <asp:HiddenField ID="chartData" runat="server" />
        <script src="../vendor/jquery/jquery.min.js"></script>
        <script src="../Scripts/bootstrap.min.js"></script>
        <script src="../Scripts/CustomJS/admin.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.js"></script>
        <script src="../Scripts/CustomJS/Charting.js"></script>
    </form>
</body>
</html>

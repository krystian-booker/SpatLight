<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminStatistics.aspx.cs" Inherits="spat.Webpages.AdminStatistics" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SpAT LIGHT - Administration</title>
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="../../Content/admin.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 575px;
            height: 335px;
        }

        .auto-style2 {
            width: 571px;
            height: 337px;
        }
    </style>
</head>
<body>

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
                    <li class="nav-item dropdown">Manage
             <div class="dropdown-content">
                 <a href="#">Questions</a>
                 <a href="#">Resources</a>
                 <a href="#">Password</a>
             </div>
                    </li>
                    <li class="nav-item">
                        <a href="#">Statistics</a>
                    </li>
                    <li class="nav-item" hidden="yup">
                        <a>Logout</a>
                    </li>
            </div>
        </div>
    </nav>

    <!-- Login Form -->
    <div class="text-center">
        <div class="container">
            <div class="row">
                <div class="login-form mx-auto">
                    <div class="row">
                        <ul class="navbar-nav navbar-right ml-auto">
                            <li class="nav-item">
                                <h1>Statistics</h1>
                            </li>
                            <li class="nav-item">
                                <img class="auto-style1" src="../Images/q1.PNG" />
                                <ul>
                                    <li>Men: 4.5</li>
                                    <li>Female: 2.5</li>
                                </ul>
                                <br />
                            </li>
                            <li class="nav-item">
                                <img class="auto-style1" src="../Images/q3.PNG" />
                                <ul>
                                    <li>Yes: 44</li>
                                    <li>No: 45</li>
                                </ul>
                                <br />
                            </li>
                            <li class="nav-item">
                                <img class="auto-style1" src="../Images/q4.PNG" />
                                <ul>
                                    <li>Less than 3 months: 15</li>
                                    <li>More than 3 months: 45</li>
                                </ul>
                                <br />
                            </li>
                            <li class="nav-item">
                                <img class="auto-style1" src="../Images/q5.PNG" />
                                <ul>
                                    <li>Yes: 33</li>
                                    <li>No: 45</li>
                                </ul>
                                <br />
                            </li>
                            <li class="nav-item">
                                <img class="auto-style1" src="../Images/q6.PNG" />
                                <ul>
                                    <li>Improved: 52</li>
                                    <li>Worse: 45</li>
                                </ul>
                                <br />
                            </li>
                            <li class="nav-item">
                                <img class="auto-style1" src="../Images/q7.PNG" />
                                <ul>
                                    <li>Yes: 20</li>
                                    <li>No: 45</li>
                                </ul>
                                <br />
                            </li>
                            <li class="nav-item">
                                <img class="auto-style1" src="../Images/q8.PNG" />
                                <ul>
                                    <li>Yes: 44</li>
                                    <li>No: 45</li>
                                </ul>
                                <br />
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/CustomJS/admin.js"></script>
</body>
</html>

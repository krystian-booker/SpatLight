<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPortal.aspx.cs" Inherits="spat.Webpages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SpAT LIGHT - Administration</title>
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="../../Content/admin.css" rel="stylesheet" />
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
                    <li class="nav-item">
                        <a href="AdminStatistics">Statistics</a>
                    </li>
                    <li class="nav-item" hidden="yup">
                        <a>Logout</a>
                    </li>
            </div>

        </div>
    </nav>

    <!-- Login Form -->
    <form id="adminPortal" runat="server">
        <div class="text-center">
            <div class="container">
                <div class="row">
                    <div class="login-form mx-auto">
                        <div class="row">
                            <div runat="server" id="signIn" visible="true">
                            <h5>Login</h5>
                                <asp:Label class="lbl-input" ID="lblUserName" runat="server" Text="Username"></asp:Label><br />
                                <asp:TextBox class="txt-input" ID="tbUserName" runat="server"></asp:TextBox><br />
                                <asp:Label class="lbl-input" ID="lblPassword" runat="server" Text="Password"></asp:Label><br />
                                <asp:TextBox class="txt-input" ID="tbPassword" runat="server" type="password" TabIndex="1"></asp:TextBox><br />
                                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="Login_Click" TabIndex="2" class="btn btn-basic btn-login" /><br />
                                <asp:Label class="lbl-input" ID="lblError" runat="server" ForeColor="#FF4136" Font-Bold="False"></asp:Label>
                            </div>
                            <div runat="server" id="QuestionHeader" visible="false">
                                <h2>Manage Survey Questions</h2>

                                <!-- Questions -->
                                <div runat="server" id="Questions" visible="false">

                                    <div id="Question1">
                                        <div class="question">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="question-header">
                                                        <label>Question 1</label>
                                                    </div>
                                                    <div class="lbl-qa">
                                                        <asp:Label runat="server">Question</asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <asp:TextBox runat="server" ID="Question1Text" CssClass="question-input" TextMode="MultiLine"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <asp:TextBox runat="server" ID="Question1Description" CssClass="question-input" TextMode="MultiLine"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="lbl-qa">
                                                        <asp:Label runat="server">Answers</asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <!-- Answers -->
                                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-6">
                                                    <div class="answer-box">
                                                        <asp:Label runat="server" Text="Answer text" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question1Answer1" TextMode="MultiLine" CssClass="answer-input"></asp:TextBox>
                                                        <asp:Label runat="server" Text="Weight" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question1Weight1" TextMode="MultiLine" CssClass="answer-input" />
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-6">
                                                    <div class="answer-box">
                                                        <asp:Label runat="server" Text="Answer text" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question1Answer2" TextMode="MultiLine" CssClass="answer-input"></asp:TextBox>
                                                        <asp:Label runat="server" Text="Weight" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question1Weight2" TextMode="MultiLine" CssClass="answer-input" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row save-area">
                                                <div class="col-lg-12">
                                                    <asp:Button runat="server" Text="Save changes" CssClass="btn-save" OnClick="SaveChanges" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div id="Question2">
                                        <div class="question">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="question-header">
                                                        <label>Question 2</label>
                                                    </div>
                                                    <div class="lbl-qa">
                                                        <asp:Label runat="server">Question</asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <asp:TextBox runat="server" ID="Question2Text" CssClass="question-input" TextMode="MultiLine"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <asp:TextBox runat="server" ID="Question2Description" CssClass="question-input" TextMode="MultiLine"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="lbl-qa">
                                                        <asp:Label runat="server">Answers</asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <!-- Answers -->
                                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-6">
                                                    <div class="answer-box">
                                                        <asp:Label runat="server" Text="Answer text" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question2Answer1" TextMode="MultiLine" CssClass="answer-input"></asp:TextBox>
                                                        <asp:Label runat="server" Text="Weight" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question2Weight1" TextMode="MultiLine" CssClass="answer-input" />
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-6">
                                                    <div class="answer-box">
                                                        <asp:Label runat="server" Text="Answer text" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question2Answer2" TextMode="MultiLine" CssClass="answer-input"></asp:TextBox>
                                                        <asp:Label runat="server" Text="Weight" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question2Weight2" TextMode="MultiLine" CssClass="answer-input" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row save-area">
                                                <div class="col-lg-12">
                                                    <asp:Button runat="server" Text="Save changes" CssClass="btn-save" OnClick="SaveChanges" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div id="Question3">
                                        <div class="question">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="question-header">
                                                        <label>Question 3</label>
                                                    </div>
                                                    <div class="lbl-qa">
                                                        <asp:Label runat="server">Question</asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <asp:TextBox runat="server" ID="Question3Text" CssClass="question-input" TextMode="MultiLine"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <asp:TextBox runat="server" ID="Question3Description" CssClass="question-input" TextMode="MultiLine"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="lbl-qa">
                                                        <asp:Label runat="server">Answers</asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <!-- Answers -->
                                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-6">
                                                    <div class="answer-box">
                                                        <asp:Label runat="server" Text="Answer text" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question3Answer1" TextMode="MultiLine" CssClass="answer-input"></asp:TextBox>
                                                        <asp:Label runat="server" Text="Weight" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question3Weight1" TextMode="MultiLine" CssClass="answer-input" />
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-6">
                                                    <div class="answer-box">
                                                        <asp:Label runat="server" Text="Answer text" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question3Answer2" TextMode="MultiLine" CssClass="answer-input"></asp:TextBox>
                                                        <asp:Label runat="server" Text="Weight" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question3Weight2" TextMode="MultiLine" CssClass="answer-input" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row save-area">
                                                <div class="col-lg-12">
                                                    <asp:Button runat="server" Text="Save changes" CssClass="btn-save" OnClick="SaveChanges" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div id="Question4">
                                        <div class="question">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="question-header">
                                                        <label>Question 4</label>
                                                    </div>
                                                    <div class="lbl-qa">
                                                        <asp:Label runat="server">The homunculus chart can not be modified.</asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div id="Question5">
                                        <div class="question">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="question-header">
                                                        <label>Question 5</label>
                                                    </div>
                                                    <div class="lbl-qa">
                                                        <asp:Label runat="server">Question</asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <asp:TextBox runat="server" ID="Question5Text" CssClass="question-input" TextMode="MultiLine"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <asp:TextBox runat="server" ID="Question5Description" CssClass="question-input" TextMode="MultiLine"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="lbl-qa">
                                                        <asp:Label runat="server">Answers</asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <!-- Answers -->
                                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-6">
                                                    <div class="answer-box">
                                                        <asp:Label runat="server" Text="Answer text" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question5Answer1" TextMode="MultiLine" CssClass="answer-input"></asp:TextBox>
                                                        <asp:Label runat="server" Text="Weight" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question5Weight1" TextMode="MultiLine" CssClass="answer-input" />
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-6">
                                                    <div class="answer-box">
                                                        <asp:Label runat="server" Text="Answer text" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question5Answer2" TextMode="MultiLine" CssClass="answer-input"></asp:TextBox>
                                                        <asp:Label runat="server" Text="Weight" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question5Weight2" TextMode="MultiLine" CssClass="answer-input" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row save-area">
                                                <div class="col-lg-12">
                                                    <asp:Button runat="server" Text="Save changes" CssClass="btn-save" OnClick="SaveChanges" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div id="Question6">
                                        <div class="question">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="question-header">
                                                        <label>Question 6</label>
                                                    </div>
                                                    <div class="lbl-qa">
                                                        <asp:Label runat="server">Question</asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <asp:TextBox runat="server" ID="Question6Text" CssClass="question-input" TextMode="MultiLine"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <asp:TextBox runat="server" ID="Question6Description" CssClass="question-input" TextMode="MultiLine"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="lbl-qa">
                                                        <asp:Label runat="server">Answers</asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <!-- Answers -->
                                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-6">
                                                    <div class="answer-box">
                                                        <asp:Label runat="server" Text="Answer text" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question6Answer1" TextMode="MultiLine" CssClass="answer-input"></asp:TextBox>
                                                        <asp:Label runat="server" Text="Weight" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question6Weight1" TextMode="MultiLine" CssClass="answer-input" />
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-6">
                                                    <div class="answer-box">
                                                        <asp:Label runat="server" Text="Answer text" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question6Answer2" TextMode="MultiLine" CssClass="answer-input"></asp:TextBox>
                                                        <asp:Label runat="server" Text="Weight" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question6Weight2" TextMode="MultiLine" CssClass="answer-input" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row save-area">
                                                <div class="col-lg-12">
                                                    <asp:Button runat="server" Text="Save changes" CssClass="btn-save" OnClick="SaveChanges" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div id="Question7">
                                        <div class="question">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="question-header">
                                                        <label>Question 7</label>
                                                    </div>
                                                    <div class="lbl-qa">
                                                        <asp:Label runat="server">Question</asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <asp:TextBox runat="server" ID="Question7Text" CssClass="question-input" TextMode="MultiLine"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <asp:TextBox runat="server" ID="Question7Description" CssClass="question-input" TextMode="MultiLine"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="lbl-qa">
                                                        <asp:Label runat="server">Answers</asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <!-- Answers -->
                                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-6">
                                                    <div class="answer-box">
                                                        <asp:Label runat="server" Text="Answer text" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question7Answer1" TextMode="MultiLine" CssClass="answer-input"></asp:TextBox>
                                                        <asp:Label runat="server" Text="Weight" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question7Weight1" TextMode="MultiLine" CssClass="answer-input" />
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-6">
                                                    <div class="answer-box">
                                                        <asp:Label runat="server" Text="Answer text" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question7Answer2" TextMode="MultiLine" CssClass="answer-input"></asp:TextBox>
                                                        <asp:Label runat="server" Text="Weight" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question7Weight2" TextMode="MultiLine" CssClass="answer-input" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row save-area">
                                                <div class="col-lg-12">
                                                    <asp:Button runat="server" Text="Save changes" CssClass="btn-save" OnClick="SaveChanges" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div id="Question8">
                                        <div class="question">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="question-header">
                                                        <label>Question 8</label>
                                                    </div>
                                                    <div class="lbl-qa">
                                                        <asp:Label runat="server">Question</asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <asp:TextBox runat="server" ID="Question8Text" CssClass="question-input" TextMode="MultiLine"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <asp:TextBox runat="server" ID="Question8Description" CssClass="question-input" TextMode="MultiLine"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="lbl-qa">
                                                        <asp:Label runat="server">Answers</asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <!-- Answers -->
                                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-6">
                                                    <div class="answer-box">
                                                        <asp:Label runat="server" Text="Answer text" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question8Answer1" TextMode="MultiLine" CssClass="answer-input"></asp:TextBox>
                                                        <asp:Label runat="server" Text="Weight" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question8Weight1" TextMode="MultiLine" CssClass="answer-input" />
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-6">
                                                    <div class="answer-box">
                                                        <asp:Label runat="server" Text="Answer text" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question8Answer2" TextMode="MultiLine" CssClass="answer-input"></asp:TextBox>
                                                        <asp:Label runat="server" Text="Weight" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question8Weight2" TextMode="MultiLine" CssClass="answer-input" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row save-area">
                                                <div class="col-lg-12">
                                                    <asp:Button runat="server" Text="Save changes" CssClass="btn-save" OnClick="SaveChanges" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div id="Question9">
                                        <div class="question">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="question-header">
                                                        <label>Question 9</label>
                                                    </div>
                                                    <div class="lbl-qa">
                                                        <asp:Label runat="server">Question</asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <asp:TextBox runat="server" ID="Question9Text" CssClass="question-input" TextMode="MultiLine"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <asp:TextBox runat="server" ID="Question9Description" CssClass="question-input" TextMode="MultiLine"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="lbl-qa">
                                                        <asp:Label runat="server">Answers</asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <!-- Answers -->
                                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-6">
                                                    <div class="answer-box">
                                                        <asp:Label runat="server" Text="Answer text" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question9Answer1" TextMode="MultiLine" CssClass="answer-input"></asp:TextBox>
                                                        <asp:Label runat="server" Text="Weight" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question9Weight1" TextMode="MultiLine" CssClass="answer-input" />
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-6">
                                                    <div class="answer-box">
                                                        <asp:Label runat="server" Text="Answer text" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question9Answer2" TextMode="MultiLine" CssClass="answer-input"></asp:TextBox>
                                                        <asp:Label runat="server" Text="Weight" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question9Weight2" TextMode="MultiLine" CssClass="answer-input" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row save-area">
                                                <div class="col-lg-12">
                                                    <asp:Button runat="server" Text="Save changes" CssClass="btn-save" OnClick="SaveChanges" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div id="Question10">
                                        <div class="question">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="question-header">
                                                        <label>Question 10</label>
                                                    </div>
                                                    <div class="lbl-qa">
                                                        <asp:Label runat="server">Question</asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <asp:TextBox runat="server" ID="Question10Text" CssClass="question-input" TextMode="MultiLine"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <asp:TextBox runat="server" ID="Question10Description" CssClass="question-input" TextMode="MultiLine"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="lbl-qa">
                                                        <asp:Label runat="server">Answers</asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <!-- Answers -->
                                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-6">
                                                    <div class="answer-box">
                                                        <asp:Label runat="server" Text="Answer text" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question10Answer1" TextMode="MultiLine" CssClass="answer-input"></asp:TextBox>
                                                        <asp:Label runat="server" Text="Weight" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question10Weight1" TextMode="MultiLine" CssClass="answer-input" />
                                                        <asp:Label runat="server" Text="Description" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question10Answer1Description" TextMode="MultiLine" CssClass="answer-input" />
                                                        <asp:Label runat="server" Text="Image" />
                                                        <br />
                                                        <asp:Button runat="server" ID="Question10Answer1Image" Text="Upload image" />
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-6">
                                                    <div class="answer-box">
                                                        <asp:Label runat="server" Text="Answer text" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question10Answer2" TextMode="MultiLine" CssClass="answer-input"></asp:TextBox>
                                                        <asp:Label runat="server" Text="Weight" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question10Weight2" TextMode="MultiLine" CssClass="answer-input" />
                                                        <asp:Label runat="server" Text="Description" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question10Answer2Description" TextMode="MultiLine" CssClass="answer-input" />
                                                        <asp:Label runat="server" Text="Image" />
                                                        <br />
                                                        <asp:Button runat="server" ID="Question10Answer2Image" Text="Upload image" />
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-6">
                                                    <div class="answer-box">
                                                        <asp:Label runat="server" Text="Answer text" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question10Answer3" TextMode="MultiLine" CssClass="answer-input"></asp:TextBox>
                                                        <asp:Label runat="server" Text="Weight" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question10Weight3" TextMode="MultiLine" CssClass="answer-input" />
                                                        <asp:Label runat="server" Text="Description" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question10Answer3Description" TextMode="MultiLine" CssClass="answer-input" />
                                                        <asp:Label runat="server" Text="Image" />
                                                        <br />
                                                        <asp:Button runat="server" ID="Question10Answer3Image" Text="Upload image" />
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-6">
                                                    <div class="answer-box">
                                                        <asp:Label runat="server" Text="Answer text" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question10Answer4" TextMode="MultiLine" CssClass="answer-input"></asp:TextBox>
                                                        <asp:Label runat="server" Text="Weight" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question10Weight4" TextMode="MultiLine" CssClass="answer-input" />
                                                        <asp:Label runat="server" Text="Description" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question10Answer4Description" TextMode="MultiLine" CssClass="answer-input" />
                                                        <asp:Label runat="server" Text="Image" />
                                                        <br />
                                                        <asp:Button runat="server" ID="Question10Answer4Image" Text="Upload image" />
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-6">
                                                    <div class="answer-box">
                                                        <asp:Label runat="server" Text="Answer text" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question10Answer5" TextMode="MultiLine" CssClass="answer-input"></asp:TextBox>
                                                        <asp:Label runat="server" Text="Weight" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question10Weight5" TextMode="MultiLine" CssClass="answer-input" />
                                                        <asp:Label runat="server" Text="Description" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question10Answer5Description" TextMode="MultiLine" CssClass="answer-input" />
                                                        <asp:Label runat="server" Text="Image" />
                                                        <br />
                                                        <asp:Button runat="server" ID="Question10Answer5Image" Text="Upload image" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row save-area">
                                                <div class="col-lg-12">
                                                    <asp:Button runat="server" Text="Save changes" CssClass="btn-save" OnClick="SaveChanges" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div id="Question11">
                                        <div class="question">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="question-header">
                                                        <label>Question 11</label>
                                                    </div>
                                                    <div class="lbl-qa">
                                                        <asp:Label runat="server">Question</asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <asp:TextBox runat="server" ID="Question11Text" CssClass="question-input" TextMode="MultiLine"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <asp:TextBox runat="server" ID="Question11Description" CssClass="question-input" TextMode="MultiLine"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="lbl-qa">
                                                        <asp:Label runat="server">Answers</asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <!-- Answers -->
                                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-6">
                                                    <div class="answer-box">
                                                        <asp:Label runat="server" Text="Answer text" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question11Answer1" TextMode="MultiLine" CssClass="answer-input"></asp:TextBox>
                                                        <asp:Label runat="server" Text="Weight" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question11Weight1" TextMode="MultiLine" CssClass="answer-input" />
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-6">
                                                    <div class="answer-box">
                                                        <asp:Label runat="server" Text="Answer text" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question11Answer2" TextMode="MultiLine" CssClass="answer-input"></asp:TextBox>
                                                        <asp:Label runat="server" Text="Weight" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question11Weight2" TextMode="MultiLine" CssClass="answer-input" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row save-area">
                                                <div class="col-lg-12">
                                                    <asp:Button runat="server" Text="Save changes" CssClass="btn-save" OnClick="SaveChanges" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div id="Question12">
                                        <div class="question">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="question-header">
                                                        <label>Question 12</label>
                                                    </div>
                                                    <div class="lbl-qa">
                                                        <asp:Label runat="server">Question</asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <asp:TextBox runat="server" ID="Question12Text" CssClass="question-input" TextMode="MultiLine"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <asp:TextBox runat="server" ID="Question12Description" CssClass="question-input" TextMode="MultiLine"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="lbl-qa">
                                                        <asp:Label runat="server">Answers</asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <!-- Answers -->
                                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-6">
                                                    <div class="answer-box">
                                                        <asp:Label runat="server" Text="Answer text" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question12Answer1" TextMode="MultiLine" CssClass="answer-input"></asp:TextBox>
                                                        <asp:Label runat="server" Text="Weight" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question12Weight1" TextMode="MultiLine" CssClass="answer-input" />
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-6">
                                                    <div class="answer-box">
                                                        <asp:Label runat="server" Text="Answer text" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question12Answer2" TextMode="MultiLine" CssClass="answer-input"></asp:TextBox>
                                                        <asp:Label runat="server" Text="Weight" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question12Weight2" TextMode="MultiLine" CssClass="answer-input" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row save-area">
                                                <div class="col-lg-12">
                                                    <asp:Button runat="server" Text="Save changes" CssClass="btn-save" OnClick="SaveChanges" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div id="Question13">
                                        <div class="question">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="question-header">
                                                        <label>Question 13</label>
                                                    </div>
                                                    <div class="lbl-qa">
                                                        <asp:Label runat="server">Question</asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <asp:TextBox runat="server" ID="Question13Text" CssClass="question-input" TextMode="MultiLine"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <asp:TextBox runat="server" ID="Question13Description" CssClass="question-input" TextMode="MultiLine"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="lbl-qa">
                                                        <asp:Label runat="server">Answers</asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <!-- Answers -->
                                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-6">
                                                    <div class="answer-box">
                                                        <asp:Label runat="server" Text="Answer text" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question13Answer1" TextMode="MultiLine" CssClass="answer-input"></asp:TextBox>
                                                        <asp:Label runat="server" Text="Weight" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question13Weight1" TextMode="MultiLine" CssClass="answer-input" />
                                                        <asp:Label runat="server" Text="Description" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question13Answer1Description" TextMode="MultiLine" CssClass="answer-input" />
                                                        <asp:Label runat="server" Text="Image" />
                                                        <br />
                                                        <asp:Button runat="server" ID="Question13Answer1Image" Text="Upload image" />
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-6">
                                                    <div class="answer-box">
                                                        <asp:Label runat="server" Text="Answer text" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question13Answer2" TextMode="MultiLine" CssClass="answer-input"></asp:TextBox>
                                                        <asp:Label runat="server" Text="Weight" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question13Weight2" TextMode="MultiLine" CssClass="answer-input" />
                                                        <asp:Label runat="server" Text="Description" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question13Answer2Description" TextMode="MultiLine" CssClass="answer-input" />
                                                        <asp:Label runat="server" Text="Image" />
                                                        <br />
                                                        <asp:Button runat="server" ID="Question13Answer2Image" Text="Upload image" />
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-6">
                                                    <div class="answer-box">
                                                        <asp:Label runat="server" Text="Answer text" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question13Answer3" TextMode="MultiLine" CssClass="answer-input"></asp:TextBox>
                                                        <asp:Label runat="server" Text="Weight" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question13Weight3" TextMode="MultiLine" CssClass="answer-input" />
                                                        <asp:Label runat="server" Text="Description" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question13Answer3Description" TextMode="MultiLine" CssClass="answer-input" />
                                                        <asp:Label runat="server" Text="Image" />
                                                        <br />
                                                        <asp:Button runat="server" ID="Question13Answer3Image" Text="Upload image" />
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-6">
                                                    <div class="answer-box">
                                                        <asp:Label runat="server" Text="Answer text" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question13Answer4" TextMode="MultiLine" CssClass="answer-input"></asp:TextBox>
                                                        <asp:Label runat="server" Text="Weight" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question13Weight4" TextMode="MultiLine" CssClass="answer-input" />
                                                        <asp:Label runat="server" Text="Description" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question13Answer4Description" TextMode="MultiLine" CssClass="answer-input" />
                                                        <asp:Label runat="server" Text="Image" />
                                                        <br />
                                                        <asp:Button runat="server" ID="Question13Answer4Image" Text="Upload image" />
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-6">
                                                    <div class="answer-box">
                                                        <asp:Label runat="server" Text="Answer text" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question13Answer5" TextMode="MultiLine" CssClass="answer-input"></asp:TextBox>
                                                        <asp:Label runat="server" Text="Weight" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question13Weight5" TextMode="MultiLine" CssClass="answer-input" />
                                                        <asp:Label runat="server" Text="Description" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question13Answer5Description" TextMode="MultiLine" CssClass="answer-input" />
                                                        <asp:Label runat="server" Text="Image" />
                                                        <br />
                                                        <asp:Button runat="server" ID="Question13Answer5Image" Text="Upload image" />
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-6">
                                                    <div class="answer-box">
                                                        <asp:Label runat="server" Text="Answer text" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question13Answer6" TextMode="MultiLine" CssClass="answer-input"></asp:TextBox>
                                                        <asp:Label runat="server" Text="Weight" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question13Weight6" TextMode="MultiLine" CssClass="answer-input" />
                                                        <asp:Label runat="server" Text="Description" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question13Answer6Description" TextMode="MultiLine" CssClass="answer-input" />
                                                        <asp:Label runat="server" Text="Image" />
                                                        <br />
                                                        <asp:Button runat="server" ID="Question13Answer6Image" Text="Upload image" />
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-6">
                                                    <div class="answer-box">
                                                        <asp:Label runat="server" Text="Answer text" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question13Answer7" TextMode="MultiLine" CssClass="answer-input"></asp:TextBox>
                                                        <asp:Label runat="server" Text="Weight" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question13Weight7" TextMode="MultiLine" CssClass="answer-input" />
                                                        <asp:Label runat="server" Text="Description" />
                                                        <br />
                                                        <asp:TextBox runat="server" ID="Question13Answer7Description" TextMode="MultiLine" CssClass="answer-input" />
                                                        <asp:Label runat="server" Text="Image" />
                                                        <br />
                                                        <asp:Button runat="server" ID="Question13Answer7Image" Text="Upload image" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row save-area">
                                                <div class="col-lg-12">
                                                    <asp:Button runat="server" Text="Save changes" CssClass="btn-save" OnClick="SaveChanges" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </form>


    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/CustomJS/admin.js"></script>
</body>
</html>

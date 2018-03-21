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
                    <li class="nav-item dropdown">Manage
             <div class="dropdown-content">
                 <a href="#">Questions</a>
                 <a href="#">Resources</a>
                 <a href="#">Password</a>
             </div>
                    </li>
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
    <div class="text-center">
        <div class="container">
            <div class="row">
                <div class="login-form mx-auto">
                    <div class="row">
                        <form id="adminPortal" runat="server">
                            <div runat="server" id="signIn" visible="true">
                                <h5>Login</h5>
                                <asp:Label class="lbl-input" ID="lblUserName" runat="server" Text="Username"></asp:Label><br />
                                <asp:TextBox class="txt-input" ID="tbUserName" runat="server"></asp:TextBox><br />
                                <asp:Label class="lbl-input" ID="lblPassword" runat="server" Text="Password"></asp:Label><br />
                                <asp:TextBox class="txt-input" ID="tbPassword" runat="server" type="password" TabIndex="1"></asp:TextBox><br />
                                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" TabIndex="2" class="btn btn-basic btn-login" /><br />
                                <asp:Label class="lbl-input" ID="lblError" runat="server" ForeColor="#FF4136" Font-Bold="False"></asp:Label>
                            </div>
                            <div runat="server" id="adminPortalForm" visible="false">
                                <h2>Manage Survey Questions</h2>
                            </div>
                        </form>
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
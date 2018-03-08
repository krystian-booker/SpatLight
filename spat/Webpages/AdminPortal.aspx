<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPortal.aspx.cs" Inherits="spat.Webpages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="adminPortal" runat="server">
        <div runat="server" id="signIn" visible="true">
            <asp:Label ID="lblUserName" runat="server" Text="User name: "></asp:Label><br />
            <asp:TextBox ID="tbUserName" runat="server"></asp:TextBox><br />
            <asp:Label ID="lblPassword" runat="server" Text="Password: "></asp:Label><br />
            <asp:TextBox ID="tbPassword" runat="server" type="password" TabIndex="1"></asp:TextBox><br />
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" TabIndex="2" /><br />
            <asp:Label ID="lblError" runat="server" ForeColor="Red" Font-Bold="False"></asp:Label>
        </div>
        <div runat="server" id="adminPortalForm" visible="false">
            <h1>Alter survey questions: </h1>
        </div>
    </form>
</body>
</html>

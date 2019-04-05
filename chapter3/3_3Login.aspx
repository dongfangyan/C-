<%@ Page Language="C#" AutoEventWireup="true" CodeFile="3_3Login.aspx.cs" Inherits="_3_3Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>登录页面</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblUserName" runat="server" Text="用户名："></asp:Label>
        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox><br />
        <asp:Label ID="lblPassword" runat="server" Text="密码："></asp:Label>
        &nbsp;&nbsp; &nbsp;<asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="登录" Width="106px" 
            onclick="Button1_Click" />
        <br />
        <br />
        <asp:Label ID="lblMessage" runat="server"></asp:Label></div>
    </form>
</body>
</html>

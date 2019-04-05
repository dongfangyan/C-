<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Adminlogin.aspx.cs" Inherits="admin_Adminlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
      <div class="loginDiv">
    
        <br />
       <h2 >管理员登录</h2> <br />
    
        <asp:Label ID="lblusername" runat="server" Text="用户名:" ForeColor="White" Width="70px"></asp:Label>
        <asp:TextBox ID="txtusername" runat="server" Width="120px"></asp:TextBox>
        <br />
        <asp:Label ID="lblpassword" runat="server" Text="密    码 ：" ForeColor="White" Width="70px"></asp:Label>
        <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="120px"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnlogin" runat="server" Text="登录" onclick="btnlogin_Click" />
&nbsp;&nbsp;&nbsp;<asp:Button ID="btnlogout" runat="server" Text="退出" onclick="btnbtnlogout_Click" />
    
        <br />
        <asp:Label ID="loginmessage" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>

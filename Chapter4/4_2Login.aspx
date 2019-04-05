<%@ Page Language="C#" AutoEventWireup="true" CodeFile="4_2Login.aspx.cs" Inherits="_4_2Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 31%;
            height: 131px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2" style="text-align: center">
                    登录网站</td>
            </tr>
            <tr>
                <td>
                    用户名：</td>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    密码：</td>
                <td>
                    <asp:TextBox ID="txtPassWord" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnLogin" runat="server" onclick="btnLogin_Click" 
                        style="height: 21px" Text="登录" />
&nbsp;
                    <asp:Button ID="Button1" runat="server" PostBackUrl="~/6_2Welcome.aspx" 
                        Text="跨页提交" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

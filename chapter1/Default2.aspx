<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="border-right: thistle thin solid; border-top: thistle thin solid; border-left: thistle thin solid; border-bottom: thistle thin solid; height: 150px; width: 200px;">
            <tr>
                <td align="center" colspan="2">
                    第一个ASP.NET网页</td>
            </tr>
            <tr>
                <td style="width: 74px; height: 22px;" align="right">
                    <asp:Label ID="lbluser" runat="server" Text="用户名："></asp:Label>
                    <asp:TextBox ID="txtuser" runat="server"></asp:TextBox></td>
                <td style="width: 100px; height: 22px;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 74px" align="right">
                    <asp:Button ID="btnshow" runat="server" Text="显示信息" Width="67px" 
                        onclick="btnshow_Click1" /></td>
                <td style="width: 100px" align="center">
                    <asp:Button ID="btnclear" runat="server" Text="清除信息" 
                        onclick="btnclear_Click1" /></td>
            </tr>
            <tr>
                <td align="left" colspan="2">
                    &nbsp;<asp:Label ID="lblmessage" runat="server"></asp:Label></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

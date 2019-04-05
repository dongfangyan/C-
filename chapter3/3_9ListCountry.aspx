<%@ Page Language="C#" AutoEventWireup="true" CodeFile="3_9ListCountry.aspx.cs" Inherits="_3_9ListCountry" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>列表显示国家信息</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:BulletedList ID="blstNation" runat="server" BulletImageUrl="~/image/jx02.gif"
            BulletStyle="CustomImage" DisplayMode="HyperLink">
            <asp:ListItem Value="1.htm">中国</asp:ListItem>
        </asp:BulletedList>
    </div>
    </form>
</body>
</html>


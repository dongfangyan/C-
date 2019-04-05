<%@ Page Language="C#" AutoEventWireup="true" CodeFile="3_4DataBind.aspx.cs" Inherits="_3_4DataBind" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>数据绑定——显示当前时间</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <asp:Label ID="lblDateTime" runat="server" Text="<%#DateTime.Now%>"></asp:Label>
    </div>
    </form>
</body>
</html>

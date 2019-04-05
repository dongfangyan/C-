<%@ Page Language="C#" AutoEventWireup="true" CodeFile="3_5DataBindByFunction.aspx.cs" Inherits="_3_5DataBindByFunction" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>数据绑定——绑定到方法</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="txtInputNumber" runat="server" AutoPostBack="True">1</asp:TextBox><br />
        <br />
        <asp:Label ID="lblMessage" runat="server" Text="<%# EvenOrOdd(txtInputNumber.Text) %>"></asp:Label>
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="3_11CreateTable.aspx.cs" Inherits="_3_11CreateTable" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>创建表格</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <asp:Label ID="Label1" runat="server" Text="输入表格行数："></asp:Label>&nbsp;
        <asp:TextBox ID="txtRows" runat="server" Width="87px"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="输入表格列数："></asp:Label>
        <asp:TextBox ID="txtColumns" runat="server" Width="96px"></asp:TextBox>
        <asp:Button ID="btnCreate" runat="server" Text="创建表格" 
            onclick="btnCreate_Click" />
        <br />
        <br />
        <div style="text-align: center">
            &nbsp;</div>
    </div>
    </form>
</body>
</html>


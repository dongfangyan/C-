<%@ Page Language="C#" AutoEventWireup="true" CodeFile="5_10DataReader.aspx.cs" Inherits="_5_10DataReader" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:Label ID="lblmessage" runat="server" Visible="False" Width="91px"></asp:Label><br />
        <br />
        <br />
         <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" Caption="产品种类详细信息">
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#EFF3FB" />
            <EditRowStyle BackColor="#2461BF" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <br />
        <br />
        <asp:Button ID="chkcategories" runat="server" Text="查看种类详细信息" 
            onclick="chkcategories_Click" />
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="3_7_2SalaryQuestionnaire.aspx.cs" Inherits="_3_7_2SalaryQuestionnaire" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>工资调查问卷_2</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <asp:Label ID="lblInformation" runat="server" Text="你的工资收入是："></asp:Label>
        <asp:RadioButtonList ID="radlSalary" runat="server" AutoPostBack="True" 
            RepeatDirection="Horizontal" 
            onselectedindexchanged="radlSalary_SelectedIndexChanged">
            <asp:ListItem>2000以下</asp:ListItem>
            <asp:ListItem>2000-5000</asp:ListItem>
            <asp:ListItem>5000-8000</asp:ListItem>
            <asp:ListItem>80000-10000</asp:ListItem>
            <asp:ListItem>10000以上</asp:ListItem>
        </asp:RadioButtonList></div>
        <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
    </div>
    </form>
</body>
</html>

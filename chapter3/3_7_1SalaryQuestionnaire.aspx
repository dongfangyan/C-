<%@ Page Language="C#" AutoEventWireup="true" CodeFile="3_7_1SalaryQuestionnaire.aspx.cs" Inherits="_3_7_1SalaryQuestionnaire" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>工资调查问卷_1</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblInformation" runat="server" Text="你的工资收入情况："></asp:Label><br />
        <asp:RadioButton ID="radSalary1" runat="server" AutoPostBack="True" 
            Text="2000以下" GroupName="SalaryOption" 
            oncheckedchanged="radSalary_CheckedChanged" />
        <asp:RadioButton ID="radSalary2" runat="server" AutoPostBack="True" 
            Text="2000-5000" GroupName="SalaryOption" 
            oncheckedchanged="radSalary_CheckedChanged" />
        <asp:RadioButton ID="radSalary3" runat="server" AutoPostBack="True" 
            Text="5000-8000" GroupName="SalaryOption" 
            oncheckedchanged="radSalary_CheckedChanged" />
        <asp:RadioButton ID="radSalary4" runat="server" AutoPostBack="True" 
            Text="8000-10000" GroupName="SalaryOption" 
            oncheckedchanged="radSalary_CheckedChanged" />
        <asp:RadioButton ID="radSalary5" runat="server" AutoPostBack="True" 
            Text="10000以上" GroupName="SalaryOption" 
            oncheckedchanged="radSalary_CheckedChanged" />
        <br />
        <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
    </div>
    </form>
</body>
</html>


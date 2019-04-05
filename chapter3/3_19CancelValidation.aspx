<%@ Page Language="C#" AutoEventWireup="true" CodeFile="3_19CancelValidation.aspx.cs" Inherits="_3_19CancelValidation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <div style="text-align: left">
        <br />
        <asp:Label ID="Label1" runat="server" Text="用户名："></asp:Label>&nbsp; &nbsp;<asp:TextBox
            ID="txtUserName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName"
            Display="None" ErrorMessage="请输入用户名！" ForeColor="Red"></asp:RequiredFieldValidator>&nbsp;<br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="密码："></asp:Label>
         &nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword"
            Display="None" ErrorMessage="请输入密码！" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="确认密码："></asp:Label>&nbsp; 
        <asp:TextBox ID="txtConfirmPwd" runat="server" TextMode="Password"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword"
            ControlToValidate="txtConfirmPwd" Display="None" 
             ErrorMessage="确认密码要与第一次输入的密码一致！" ForeColor="Red"></asp:CompareValidator><br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Email:"></asp:Label>
        &nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
            Display="None" ErrorMessage="请按正确的格式输入Email!" 
             ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
             ForeColor="Red"></asp:RegularExpressionValidator><br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="年龄："></asp:Label>
         &nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge"
            Display="None" ErrorMessage="年龄在20-30之间！" MaximumValue="30" 
             MinimumValue="20" ForeColor="Red"></asp:RangeValidator><br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Button ID="btnSubmit" runat="server" Text="提交" />
        <asp:Button ID="btnCancel" runat="server" CausesValidation="False" Text="取消" 
             onclick="btnCancel_Click" />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
             HeaderText="注册页面错误信息" ForeColor="Red" />
    
    </div>
    </form>
</body>
</html>


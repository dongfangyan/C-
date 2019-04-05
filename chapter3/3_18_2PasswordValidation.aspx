<%@ Page Language="C#" AutoEventWireup="true" CodeFile="3_18_2PasswordValidation.aspx.cs" Inherits="_3_18_2PasswordValidation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>服务器端验证</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="请输入密码："></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator1" runat="server" 
                ControlToValidate="txtPassword" Display="Dynamic" 
            ErrorMessage="密码长度大于等于6，且必须包含大小写字母、数字、特殊字符！" ForeColor="Red" 
            onservervalidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            <asp:Button ID="Button1" runat="server" Text="提交" />
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="3_17MonthValidation.aspx.cs" Inherits="_3_17MonthValidation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>RequiredFieldValidator控件的应用</title>
</head>
<body>
    <form id="form1" runat="server">
   <div>
        <asp:DropDownList ID="ddlMonth" runat="server">
            <asp:ListItem>请选择月份</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
        </asp:DropDownList>
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlMonth" InitialValue="请选择月份"  ForeColor="Red" Display="Dynamic">请选择正确的月份！</asp:RequiredFieldValidator>
        <asp:Button ID="Button1" runat="server" Text="验证" /></div>
    </form>
</body>
</html>


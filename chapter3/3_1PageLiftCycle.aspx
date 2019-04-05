<%@ Page Language="C#" AutoEventWireup="true" CodeFile="3_1PageLiftCycle.aspx.cs" Inherits="_3_1PageLiftCycle" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="txtinput" runat="server" ontextchanged="txtinput_TextChanged"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnsubmit" runat="server" Text="确定" onclick="btnsubmit_Click" />
    
    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
    
    </div>
    </form>
</body>
</html>

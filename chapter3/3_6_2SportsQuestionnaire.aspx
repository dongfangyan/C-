<%@ Page Language="C#" AutoEventWireup="true" CodeFile="3_6_2SportsQuestionnaire.aspx.cs" Inherits="_3_6_2_SportsQuestionnaire" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>运动项目调查问卷_2</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:CheckBox ID="chkSport1" runat="server" AutoPostBack="True" Text="篮球" 
            oncheckedchanged="chkSport_CheckedChanged" />
        <asp:CheckBox ID="chkSport2" runat="server" AutoPostBack="True" Text="爬山" 
            oncheckedchanged="chkSport_CheckedChanged" />
        <asp:CheckBox ID="chkSport3" runat="server" AutoPostBack="True" Text="乒乓球" 
            oncheckedchanged="chkSport_CheckedChanged" />
        <asp:CheckBox ID="chkSport4" runat="server" AutoPostBack="True" Text="跑步" 
            oncheckedchanged="chkSport_CheckedChanged" />
        <asp:CheckBox ID="chkSport5" runat="server" AutoPostBack="True" Text="羽毛球" 
            oncheckedchanged="chkSport_CheckedChanged" />
        <br />
        <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
    </div>
    </form>
</body>
</html>

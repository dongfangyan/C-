<%@ Page Language="C#" AutoEventWireup="true" CodeFile="3_6_3SportsQuestionnaire.aspx.cs" Inherits="_3_6_3SportsQuestionnaire" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>运动项目调查问卷_3</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <asp:CheckBoxList ID="chklstSports" runat="server" AutoPostBack="True" 
            RepeatDirection="Horizontal" 
            onselectedindexchanged="chklstSports_SelectedIndexChanged">
        </asp:CheckBoxList>
        <br />
        <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
    </div>
    </form>
</body>
</html>


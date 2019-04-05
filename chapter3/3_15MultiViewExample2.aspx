<%@ Page Language="C#" AutoEventWireup="true" CodeFile="3_15MultiViewExample2.aspx.cs" Inherits="_3_15MultiViewExample2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>MultiView控件导航按钮应用</title>
</head>
<body>
    <form id="form1" runat="server">
     <div>
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                这是第一步。<br />
                <asp:Button ID="Button1" runat="server" CommandName="NextView" Text="NextView" />
                <asp:Button ID="Button2" runat="server" CommandArgument="3" CommandName="SwitchViewByIndex"
                    Text="LastView" /></asp:View>
            <asp:View ID="View2" runat="server">
                这是第二步。<br />
                <asp:Button ID="Button3" runat="server" CommandArgument="0" CommandName="SwitchViewByIndex"
                    Text="FirstView" />
                <asp:Button ID="Button4" runat="server" CommandName="PrevView" Text="PrevView" />
                <asp:Button ID="Button5" runat="server" CommandName="NextView" Text="NextView" />
                <asp:Button ID="Button6" runat="server" CommandArgument="2" CommandName="SwitchViewByIndex"
                    Text="LastView"  /></asp:View>
            <asp:View ID="View3" runat="server">
                这是最后一步。<br />
                <asp:Button ID="Button7" runat="server" CommandArgument="0" CommandName="SwitchViewByIndex"
                    Text="FirstView" />
                <asp:Button ID="Button8" runat="server" CommandName="PrevView" Text="PrevView" />
            </asp:View>
        </asp:MultiView></div>
    </form>
</body>
</html>


<%@ Page Language="C#" AutoEventWireup="true" CodeFile="3_14MultiViewExample1.aspx.cs" Inherits="_3_14MultiViewExample1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>MultiView控件应用</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    </div>
        <div style="text-align: center">
            <div style="text-align: center">
                <table id="TABLE1" runat="server" style="width: 258px; height: 1px; border-top-width: thin; border-left-width: thin; border-left-color: black; border-bottom-width: thin; border-bottom-color: black; border-top-color: black; border-right-width: thin; border-right-color: black;">
                    <tr>
                        <td style="width: 118px; height: 16px">
                            <asp:LinkButton ID="lbtnFinance" runat="server" CommandArgument="0" 
                                oncommand="ViewChangeCommand">财经</asp:LinkButton>
                        </td>
                        <td style="width: 139px; height: 16px">
                            <asp:LinkButton ID="lbtnTechnology" runat="server" CommandArgument="1" 
                                oncommand="ViewChangeCommand">科技</asp:LinkButton></td>
                        <td style="width: 192px; height: 16px">
                            <asp:LinkButton ID="lbtnNews" runat="server" CommandArgument="2" 
                                oncommand="ViewChangeCommand">新闻</asp:LinkButton></td>
                    </tr>
                    <tr>
                        <td colspan="3" rowspan="1" style="height: 79px">
                            <asp:MultiView ID="MultiView1" runat="server">
                                <asp:View ID="View1" runat="server">
                                    这是网站的财经频道。</asp:View>
                                <asp:View ID="View2" runat="server">
                                    这是网站的科技频道。</asp:View>
                                <asp:View ID="View3" runat="server">
                                    这是网站的新闻频道。</asp:View>
                            </asp:MultiView>&nbsp;
                        </td>
                    </tr>
                   
                </table>
            </div>
        </div>
    </form>
</body>
</html>


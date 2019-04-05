<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 99%;
            height: 267px;
        }
        .style2
        {
            height: 41px;
        }
        .style3
        {
            font-family: 宋体, Arial, Helvetica, sans-serif;
            font-size: x-large;
        }
        .style4
        {
            width: 341px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2" colspan="2" style="background-color: #C0C0C0">
                    <asp:LoginView ID="LoginView1" runat="server">
                        <AnonymousTemplate>
                            游客，您好！|&nbsp;<asp:LoginStatus ID="LoginStatus1" runat="server" />
                        </AnonymousTemplate>
                        <LoggedInTemplate>
                            <asp:LoginName ID="LoginName1" runat="server" FormatString="{0}，您好！" />
                            |<asp:LoginStatus ID="LoginStatus2" runat="server" />|<asp:HyperLink 
                                ID="HyperLink1" runat="server" NavigateUrl="~/CustomPages/Changepwd.aspx">修改密码</asp:HyperLink>
                        </LoggedInTemplate>
                        <RoleGroups>
                            <asp:RoleGroup Roles="Admin">
                                <ContentTemplate>
                                    <asp:LoginName ID="LoginName2" runat="server" FormatString="{0}，你好！" />
                                    |<asp:HyperLink ID="HyperLink2" runat="server" 
                                        NavigateUrl="~/CustomPages/Changepwd.aspx">修改密码</asp:HyperLink>
                                    |<asp:HyperLink ID="HyperLink3" runat="server" 
                                        NavigateUrl="~/AdminPages/Usermanage.aspx">管理用户</asp:HyperLink>
                                    |
                                </ContentTemplate>
                            </asp:RoleGroup>
                        </RoleGroups>
                    </asp:LoginView>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1">
                    </asp:TreeView>
                    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
                </td>
                <td class="style3">
                    欢迎光临本网站！</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

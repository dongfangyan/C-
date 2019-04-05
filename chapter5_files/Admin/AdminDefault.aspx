<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminDefault.aspx.cs" Inherits="AdminDefault" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link href="StyleSheet.css" rel="Stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="top">     
        <br />
        <br />
        管理员后台页面</div>
    <div id="content">
    <div id="left">
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
        <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" 
            ShowLines="True">
        </asp:TreeView>
        </div>
    <div id="right">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:newsConnectionString %>" 
            SelectCommand="SELECT top 20 [fileid], [filename], [filecontent], [publisher], [typeid], [publishdate] FROM [files]">
        </asp:SqlDataSource>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
            HorizontalAlign="Center" Width="500px">
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl='<%# "~/Admin/readfiles_details.aspx?fileid="+Eval("fileid") %>' 
                    Text='<%# Eval("filename") %>'></asp:HyperLink>
            </ItemTemplate>
        </asp:DataList>
        <div align="right">
            <asp:Button ID="btnmore" runat="server" Text="更多" /></div>
        </div>
    </div>
    <div id="bottom"></div>

    </form>
</body>
</html>

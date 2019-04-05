<%@ Page Language="C#" AutoEventWireup="true" CodeFile="filesearch.aspx.cs" Inherits="filesearch" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="Dropsearch" runat="server">
            <asp:ListItem>按标题搜索</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="txtsearch" runat="server" Width="355px"></asp:TextBox>
        <asp:Button ID="btnsearch" runat="server" onclick="btnsearch_Click" Text="搜索" />
        <br />
        <asp:Label ID="lblmessage" runat="server"></asp:Label>
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="1">
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" 
    NavigateUrl='<%# "~/readfiles_details_1.aspx?fileid=" + Eval("fileID") %>' 
    Text='<%# Eval("filename") %>'></asp:HyperLink>
            </ItemTemplate>
        </asp:DataList>
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>

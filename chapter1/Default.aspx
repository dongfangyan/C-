<%@ Page Title="主页" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        欢迎使用 ASP.NET!
    </h2>
        <table style="border-right: thistle thin solid; border-top: thistle thin solid; border-left: thistle thin solid; border-bottom: thistle thin solid; height: 150px; width: 200px;" 
        align="left">
            <tr>
                <td align="center" colspan="2">
                    第一个ASP.NET网页</td>
            </tr>
            <tr>
                <td style="width: 74px; height: 22px;" align="right">
                    <asp:Label ID="lbluser" runat="server" Text="用户名："></asp:Label></td>
                <td style="width: 100px; height: 22px;">
                    <asp:TextBox ID="txtuser" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 74px" align="right">
                    <asp:Button ID="btnshow" runat="server" Text="显示信息" Width="67px" 
                        onclick="btnshow_Click1" /></td>
                <td style="width: 100px" align="center">
                    <asp:Button ID="btnclear" runat="server" Text="清除信息" 
                        onclick="btnclear_Click1" /></td>
            </tr>
            <tr>
                <td align="left" colspan="2">
                    &nbsp;<asp:Label ID="lblmessage" runat="server"></asp:Label></td>
            </tr>
        </table>
    <asp:ImageMap ID="ImageMap1" runat="server">
    </asp:ImageMap>
    </asp:Content>

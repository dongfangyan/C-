<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.master" AutoEventWireup="true" CodeFile="userlogin.aspx.cs" Inherits="userlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="loginDiv">
    
        <br />
        <br />
       <h2 >用户登录</h2> <br />
        <br />
    
        <asp:Label ID="lblusername" runat="server" Text="用户名:" ForeColor="White" Width="70px"></asp:Label>
        <asp:TextBox ID="txtUserName" runat="server" Width="120px"></asp:TextBox>
        <br />
        <asp:Label ID="lblpassword" runat="server" Text="密    码 ：" ForeColor="White" Width="70px"></asp:Label>
        <asp:TextBox ID="txtPassWord" runat="server" TextMode="Password" Width="120px"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnlogin" runat="server" Text="登录" onclick="btnlogin_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btncancle" runat="server" Text="取消" onclick="btncancle_Click" />
    
        <br />
        <asp:Label ID="loginmessage" runat="server"></asp:Label>
    
    </div>
</asp:Content>


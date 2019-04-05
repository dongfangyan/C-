<%@ Page Title="" Language="C#" MasterPageFile="~/ForumMaster.Master" AutoEventWireup="true" CodeBehind="ForumPage.aspx.cs" Inherits="chapter2.ForumPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblSubjectInfo" runat="server"   Text="<%#GetSubjectInfo() %>" ></asp:Label> 
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/2_3DefaultContentMaster.Master" AutoEventWireup="true" CodeBehind="2_3DefaultContentPage.aspx.cs" Inherits="chapter2._2_3DefaultContentPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <asp:Label ID="label1" Text="这是内容页面Content1中的内容。" runat="server" />
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/SonMaster.master" AutoEventWireup="true" CodeBehind="NestMasterPage.aspx.cs" Inherits="chapter2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <asp:Label ID="lblSubjectInfo" runat="server"   Text="<%#GetSubjectInfo() %>" ></asp:Label> 
</asp:Content>

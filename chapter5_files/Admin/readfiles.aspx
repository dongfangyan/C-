<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="readfiles.aspx.cs" Inherits="Admin_readfiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:newsConnectionString %>" 
            SelectCommand="SELECT [fileid], [filename], [filecontent], [publisher], [typeid], [publishdate] FROM [files]">
        </asp:SqlDataSource>
    
        <br />
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
            Width="500px" HorizontalAlign="Center">
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl='<%# "~/admin/readfiles_details.aspx?fileid="+Eval("fileid") %>' 
                    Text='<%# Eval("filename") %>'></asp:HyperLink>
            </ItemTemplate>
        </asp:DataList>
    
    </div>
</asp:Content>


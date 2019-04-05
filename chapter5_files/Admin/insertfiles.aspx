<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="insertfiles.aspx.cs" Inherits="Admin_insertfiles" %>

<%@ Register Assembly="CuteEditor" Namespace="CuteEditor" TagPrefix="CE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    
        <table align="center" class="style1" style="width: 750px">
            <tr>
                <td width="100">
                    文件名</td>
                <td class="style2" height="30">
                    <asp:TextBox ID="txtfilename" runat="server" Width="600px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    发布者</td>
                <td class="style2" height="30">
                    <asp:TextBox ID="txtpublisher" runat="server" Width="600px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    文件类型</td>
                <td class="style2" height="30">
                    <asp:DropDownList ID="drpfiletype" runat="server" DataSourceID="SqlDataSource1" 
                        DataTextField="typename" DataValueField="typeid" Height="28px" Width="250px">
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:newsConnectionString %>" 
                        SelectCommand="SELECT * FROM [type]"></asp:SqlDataSource>
                    <asp:Button ID="btninsert" runat="server" onclick="btninsert_Click" 
                        Text="插入文件" />
                </td>
            </tr>
            <tr>
                <td>
                    文件内容</td>
                <td class="style2">
                <div>
                    <CE:Editor ID="fileeditor" runat="server" Height="700px" Width="650px">
                    </CE:Editor>
                   </div>
                </td>
            </tr>
            
        </table>
    
    </div>
</asp:Content>


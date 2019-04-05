<%@ Page Language="C#" AutoEventWireup="true" CodeFile="insertfiles.aspx.cs" Inherits="insertfiles" %>

<%@ Register assembly="CuteEditor" namespace="CuteEditor" tagprefix="CE" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 442px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1" style="width: 800px">
            <tr>
                <td width="60">
                    文件名</td>
                <td class="style2" height="30">
                    <asp:TextBox ID="txtfilename" runat="server" Width="674px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    发布者</td>
                <td class="style2" height="30">
                    <asp:TextBox ID="txtpublisher" runat="server" Width="671px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    文件类型</td>
                <td class="style2" height="30">
                    <asp:DropDownList ID="drpfiletype" runat="server" DataSourceID="SqlDataSource1" 
                        DataTextField="typename" DataValueField="typeid" Height="16px" Width="242px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:newsConnectionString %>" 
                        SelectCommand="SELECT * FROM [type]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    文件内容</td>
                <td class="style2">
                    <CE:Editor ID="fileeditor" runat="server" Height="400px" Width="700px">
                    </CE:Editor>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2" height="40">
                    <asp:Button ID="btninsert" runat="server" onclick="btninsert_Click" Text="插入" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

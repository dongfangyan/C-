<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
            font-size :13px;
            line-height:28px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:newsConnectionString %>" 
            SelectCommand="SELECT [fileid], [filename], [filecontent], [publisher], [typeid], [publishdate] FROM [files]">
        </asp:SqlDataSource>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="fileid" DataSourceID="SqlDataSource1" AllowSorting="True" 
        Width="669px" AllowPaging="True" HorizontalAlign="Center">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="filename" HeaderText="filename" 
                SortExpression="filename" />
            <asp:BoundField DataField="publisher" HeaderText="publisher" 
                SortExpression="publisher" />
            <asp:BoundField DataField="publishdate" HeaderText="publishdate" 
                SortExpression="publishdate" DataFormatString="{0:d}" HtmlEncode="False" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:newsConnectionString %>" 
        SelectCommand="SELECT [fileid], [filename], [filecontent], [publisher], [publishdate], [typeid] FROM [files] WHERE ([fileid] = @fileid)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="fileid" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="fileid" 
        DataSourceID="SqlDataSource2" HorizontalAlign="Center">
        <ItemTemplate>
            <br />
<br />
            <table class="style1">
                <tr>
                    <td align="center" width="800px">
                        <asp:Label ID="filenameLabel" runat="server" Font-Bold="True" 
                            Font-Size="Larger" Text='<%# Eval("filename") %>' />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td align="center" width="800px">
                        <asp:Label ID="publisherLabel" runat="server" Text='<%# Eval("publisher") %>' 
                            Font-Size="Small" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="publishdateLabel" runat="server" 
                            Text='<%# Eval("publishdate") %>' Font-Size="Small" />
                    </td>
                </tr>
                <tr>
                    <td width="800px">
                        <br />
                        <asp:Label ID="filecontentLabel" runat="server" 
                            Text='<%# Eval("filecontent") %>' CssClass="style2" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    </form>
</body>
</html>

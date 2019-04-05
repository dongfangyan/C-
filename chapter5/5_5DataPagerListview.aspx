<%@ Page Language="C#" AutoEventWireup="true" CodeFile="5_5DataPagerListview.aspx.cs" Inherits="_5_5DataPagerListview" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
            SelectCommand="SELECT [ProductID], [ProductName], [UnitPrice] FROM [Products]">
        </asp:SqlDataSource>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="ProductID" 
            DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ProductNameLabel" runat="server" 
                            Text='<%# Eval("ProductName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color:#008A8C;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                    </td>
                    <td>
                        <asp:Label ID="ProductIDLabel1" runat="server" 
                            Text='<%# Eval("ProductID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ProductNameTextBox" runat="server" 
                            Text='<%# Bind("ProductName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="UnitPriceTextBox" runat="server" 
                            Text='<%# Bind("UnitPrice") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" 
                    style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>
                            未返回数据。</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:TextBox ID="ProductNameTextBox" runat="server" 
                            Text='<%# Bind("ProductName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="UnitPriceTextBox" runat="server" 
                            Text='<%# Bind("UnitPrice") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color:#DCDCDC;color: #000000;">
                    <td>
                        <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ProductNameLabel" runat="server" 
                            Text='<%# Eval("ProductName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table ID="itemPlaceholderContainer" runat="server" border="1" 
                                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <th runat="server">
                                        ProductID</th>
                                    <th runat="server">
                                        ProductName</th>
                                    <th runat="server">
                                        UnitPrice</th>
                                </tr>
                                <tr ID="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" 
                            style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                        </td>
                    </tr>
                </table>
                <asp:DataPager ID ="datapager1" PageSize ="8" runat ="server" >
    <Fields >
       <asp:NextPreviousPagerField ShowFirstPageButton ="true" ShowPreviousPageButton ="true" ShowNextPageButton ="false" ShowLastPageButton ="false" />
       <asp:NumericPagerField />
       <asp:NextPreviousPagerField ShowFirstPageButton ="false" ShowPreviousPageButton ="false" ShowNextPageButton ="true" ShowLastPageButton ="true" />
    </Fields>
 </asp:DataPager>

            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                    <td>
                        <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ProductNameLabel" runat="server" 
                            Text='<%# Eval("ProductName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
    
    </div>
    </form>
</body>
</html>

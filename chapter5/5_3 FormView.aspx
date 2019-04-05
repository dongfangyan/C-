<%@ Page Language="C#" AutoEventWireup="true" CodeFile="5_3 FormView.aspx.cs" Inherits="_5_3_FormView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
            SelectCommand="SELECT [CategoryID], [CategoryName], [Description] FROM [Categories]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
            SelectCommand="SELECT [ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice] FROM [Products] WHERE ([CategoryID] = @CategoryID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="CategoryID" PropertyName="SelectedValue"
                    Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            Caption="产品种类" DataKeyNames="CategoryID" DataSourceID="SqlDataSource1" PageSize="4"
            Width="567px">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="CategoryID" HeaderText="种类ID" InsertVisible="False" ReadOnly="True"
                    SortExpression="CategoryID" />
                <asp:BoundField DataField="CategoryName" HeaderText="种类名称" SortExpression="CategoryName" />
                <asp:BoundField DataField="Description" HeaderText="描述" SortExpression="Description" />
            </Columns>
            <RowStyle BackColor="#C0FFC0" />
            <HeaderStyle BackColor="#FFFFC0" />
            <AlternatingRowStyle BackColor="#FFFFC0" />
        </asp:GridView>
        <br />
        <br />
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" Caption="产品详细信息表"
            CellPadding="4" DataKeyNames="ProductID" DataSourceID="SqlDataSource2" ForeColor="#333333"
            Width="491px">
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <EditItemTemplate>
                ProductID:
                <asp:Label ID="ProductIDLabel1" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label><br />
                ProductName:
                <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>'>
                </asp:TextBox><br />
                SupplierID:
                <asp:TextBox ID="SupplierIDTextBox" runat="server" Text='<%# Bind("SupplierID") %>'>
                </asp:TextBox><br />
                CategoryID:
                <asp:TextBox ID="CategoryIDTextBox" runat="server" Text='<%# Bind("CategoryID") %>'>
                </asp:TextBox><br />
                QuantityPerUnit:
                <asp:TextBox ID="QuantityPerUnitTextBox" runat="server" Text='<%# Bind("QuantityPerUnit") %>'>
                </asp:TextBox><br />
                UnitPrice:
                <asp:TextBox ID="UnitPriceTextBox" runat="server" Text='<%# Bind("UnitPrice") %>'>
                </asp:TextBox><br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                    Text="更新">
                </asp:LinkButton>
                <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="取消">
                </asp:LinkButton>
            </EditItemTemplate>
            <RowStyle BackColor="#EFF3FB" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <InsertItemTemplate>
                ProductName:
                <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>'>
                </asp:TextBox><br />
                SupplierID:
                <asp:TextBox ID="SupplierIDTextBox" runat="server" Text='<%# Bind("SupplierID") %>'>
                </asp:TextBox><br />
                CategoryID:
                <asp:TextBox ID="CategoryIDTextBox" runat="server" Text='<%# Bind("CategoryID") %>'>
                </asp:TextBox><br />
                QuantityPerUnit:
                <asp:TextBox ID="QuantityPerUnitTextBox" runat="server" Text='<%# Bind("QuantityPerUnit") %>'>
                </asp:TextBox><br />
                UnitPrice:
                <asp:TextBox ID="UnitPriceTextBox" runat="server" Text='<%# Bind("UnitPrice") %>'>
                </asp:TextBox><br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                    Text="插入">
                </asp:LinkButton>
                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="取消">
                </asp:LinkButton>
            </InsertItemTemplate>
            <ItemTemplate>
                <br />
                <table border="1" style="border-right: #006600 thin solid; border-top: #006600 thin solid;
                    border-left: #006600 thin solid; border-bottom: #006600 thin solid">
                    <tr>
                        <td style="width: 185px; height: 23px">
                            产品ID</td>
                        <td style="width: 100px; height: 23px">
                <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label></td>
                        <td style="width: 186px; height: 23px">
                            产品名称</td>
                        <td style="width: 100px; height: 23px">
                <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 185px">
                            供应商ID</td>
                        <td style="width: 100px">
                <asp:Label ID="SupplierIDLabel" runat="server" Text='<%# Bind("SupplierID") %>'></asp:Label>
                        </td>
                        <td style="width: 186px">
                            种类ID</td>
                        <td style="width: 100px">
                <asp:Label ID="CategoryIDLabel" runat="server" Text='<%# Bind("CategoryID") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 185px">
                            每箱数量</td>
                        <td style="width: 100px">
                <asp:Label ID="QuantityPerUnitLabel" runat="server" Text='<%# Bind("QuantityPerUnit") %>'></asp:Label></td>
                        <td style="width: 186px">
                            单价</td>
                        <td style="width: 100px">
                <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Bind("UnitPrice") %>'></asp:Label></td>
                    </tr>
                </table>
            </ItemTemplate>
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        </asp:FormView>
    </div>
    </form>
</body>
</html>

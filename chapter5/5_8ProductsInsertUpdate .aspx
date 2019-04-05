<%@ Page Language="C#" AutoEventWireup="true" CodeFile="5_8ProductsInsertUpdate .aspx.cs" Inherits="_5_8ProductsInsertUpdate_" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
            ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" DeleteCommand="DELETE FROM [Categories] WHERE [CategoryID] = @original_CategoryID AND [CategoryName] = @original_CategoryName"
            InsertCommand="INSERT INTO [Categories] ([CategoryName]) VALUES (@CategoryName)"
            OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [CategoryID], [CategoryName] FROM [Categories] ORDER BY [CategoryID]"
            UpdateCommand="UPDATE [Categories] SET [CategoryName] = @CategoryName WHERE [CategoryID] = @original_CategoryID AND [CategoryName] = @original_CategoryName">
            <DeleteParameters>
                <asp:Parameter Name="original_CategoryID" Type="Int32" />
                <asp:Parameter Name="original_CategoryName" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="CategoryName" Type="String" />
                <asp:Parameter Name="original_CategoryID" Type="Int32" />
                <asp:Parameter Name="original_CategoryName" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="CategoryName" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"
            ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
            DeleteCommand="DELETE FROM [Categories] WHERE [CategoryID] = @original_CategoryID "
            InsertCommand="INSERT INTO [Categories] ([CategoryName], [Description]) VALUES (@CategoryName, @Description)"
            OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [CategoryID], [CategoryName], [Description] FROM [Categories] WHERE ([CategoryID] = @CategoryID)"
            UpdateCommand="UPDATE [Categories] SET [CategoryName] = @CategoryName, [Description] = @Description WHERE [CategoryID] = @original_CategoryID " ConflictDetection="CompareAllValues">
            <DeleteParameters>
                <asp:Parameter Name="original_CategoryID" Type="Int32" />
                <asp:Parameter Name="original_CategoryName" Type="String" />
                <asp:Parameter Name="original_Description" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="CategoryName" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="original_CategoryID" Type="Int32" />
                <asp:Parameter Name="original_CategoryName" Type="String" />
                <asp:Parameter Name="original_Description" Type="String" />
            </UpdateParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="CategoryID" PropertyName="SelectedValue"
                    Type="Int32" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="CategoryName" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues"
            ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = @original_ProductID AND [ProductName] = @original_ProductName AND [SupplierID] = @original_SupplierID AND [CategoryID] = @original_CategoryID AND [QuantityPerUnit] = @original_QuantityPerUnit AND [UnitPrice] = @original_UnitPrice AND [UnitsInStock] = @original_UnitsInStock"
            InsertCommand="INSERT INTO [Products] ([ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (@ProductName, @SupplierID, @CategoryID, @QuantityPerUnit, @UnitPrice, @UnitsInStock)"
            OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock] FROM [Products] WHERE ([CategoryID] = @CategoryID)"
            UpdateCommand="UPDATE [Products] SET [ProductName] = @ProductName, [SupplierID] = @SupplierID, [CategoryID] = @CategoryID, [QuantityPerUnit] = @QuantityPerUnit, [UnitPrice] = @UnitPrice, [UnitsInStock] = @UnitsInStock WHERE [ProductID] = @original_ProductID AND [ProductName] = @original_ProductName AND [SupplierID] = @original_SupplierID AND [CategoryID] = @original_CategoryID AND [QuantityPerUnit] = @original_QuantityPerUnit AND [UnitPrice] = @original_UnitPrice AND [UnitsInStock] = @original_UnitsInStock">
            <DeleteParameters>
                <asp:Parameter Name="original_ProductID" Type="Int32" />
                <asp:Parameter Name="original_ProductName" Type="String" />
                <asp:Parameter Name="original_SupplierID" Type="Int32" />
                <asp:Parameter Name="original_CategoryID" Type="Int32" />
                <asp:Parameter Name="original_QuantityPerUnit" Type="String" />
                <asp:Parameter Name="original_UnitPrice" Type="Decimal" />
                <asp:Parameter Name="original_UnitsInStock" Type="Int16" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="SupplierID" Type="Int32" />
                <asp:Parameter Name="CategoryID" Type="Int32" />
                <asp:Parameter Name="QuantityPerUnit" Type="String" />
                <asp:Parameter Name="UnitPrice" Type="Decimal" />
                <asp:Parameter Name="UnitsInStock" Type="Int16" />
                <asp:Parameter Name="original_ProductID" Type="Int32" />
                <asp:Parameter Name="original_ProductName" Type="String" />
                <asp:Parameter Name="original_SupplierID" Type="Int32" />
                <asp:Parameter Name="original_CategoryID" Type="Int32" />
                <asp:Parameter Name="original_QuantityPerUnit" Type="String" />
                <asp:Parameter Name="original_UnitPrice" Type="Decimal" />
                <asp:Parameter Name="original_UnitsInStock" Type="Int16" />
            </UpdateParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="CategoryID" PropertyName="SelectedValue"
                    Type="Int32" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="SupplierID" Type="Int32" />
                <asp:Parameter Name="CategoryID" Type="Int32" />
                <asp:Parameter Name="QuantityPerUnit" Type="String" />
                <asp:Parameter Name="UnitPrice" Type="Decimal" />
                <asp:Parameter Name="UnitsInStock" Type="Int16" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
            SelectCommand="SELECT [SupplierID], [CompanyName] FROM [Suppliers] ORDER BY [SupplierID]">
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateSelectButton="True"
            BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px"
            Caption="产品种类" CellPadding="4" DataKeyNames="CategoryID" DataSourceID="SqlDataSource1"
            PageSize="4" Width="567px">
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        </asp:GridView>
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False"
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px"
            CellPadding="4" DataSourceID="SqlDataSource2" Height="50px"
            Width="251px" DataKeyNames="CategoryID" 
            onitemdeleted="DetailsView1_ItemDeleted" 
            oniteminserted="DetailsView1_ItemInserted" 
            onitemupdated="DetailsView1_ItemUpdated">
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <Fields>
                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" InsertVisible="False"
                    ReadOnly="True" SortExpression="CategoryID" />
                <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        </asp:DetailsView>
        &nbsp;&nbsp;<br />
        <br />
        &nbsp;
        <br />
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" Caption="产品详细信息表"
            CellPadding="4" DataKeyNames="ProductID" DataSourceID="SqlDataSource3" ForeColor="#333333"
            Width="491px">
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <EditItemTemplate>
                ProductID: &nbsp;&nbsp;
                <asp:Label ID="ProductIDLabel1" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label><br />
                ProductName: &nbsp;&nbsp;
                <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>'>
                </asp:TextBox><br />
                SupplierID: &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource4"
                    DataTextField="CompanyName" DataValueField="SupplierID" SelectedValue='<%# Bind("SupplierID") %>'
                    Width="158px">
                </asp:DropDownList><br />
                CategoryID: &nbsp; &nbsp; &nbsp;
                <asp:TextBox ID="CategoryIDTextBox" runat="server" Text='<%# Bind("CategoryID") %>'>
                </asp:TextBox><br />
                QuantityPerUnit:
                <asp:TextBox ID="QuantityPerUnitTextBox" runat="server" Text='<%# Bind("QuantityPerUnit") %>'>
                </asp:TextBox><br />
                UnitPrice: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:TextBox ID="UnitPriceTextBox" runat="server" Text='<%# Bind("UnitPrice") %>'>
                </asp:TextBox><br />
                UnitsInStock: &nbsp;&nbsp; &nbsp;<asp:TextBox ID="UnitsInStockTextBox" runat="server" Text='<%# Bind("UnitsInStock") %>'>
                </asp:TextBox><br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                    Text="更新">
                </asp:LinkButton>
                <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="取消">
                </asp:LinkButton>
            </EditItemTemplate>
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <InsertItemTemplate>
                ProductName: &nbsp;&nbsp; &nbsp;<asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>'>
                </asp:TextBox><br />
                SupplierID: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:DropDownList ID="DropDownList2"
                    runat="server" DataSourceID="SqlDataSource4" DataTextField="CompanyName" DataValueField="SupplierID"
                    SelectedValue='<%# Bind("SupplierID") %>' Width="152px">
                </asp:DropDownList><br />
                CategoryID: &nbsp; &nbsp; &nbsp; &nbsp;<asp:TextBox ID="CategoryIDTextBox" runat="server" Text='<%# Bind("CategoryID") %>'>
                </asp:TextBox><br />
                QuantityPerUnit: &nbsp;<asp:TextBox ID="QuantityPerUnitTextBox" runat="server" Text='<%# Bind("QuantityPerUnit") %>'>
                </asp:TextBox><br />
                UnitPrice: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:TextBox ID="UnitPriceTextBox" runat="server" Text='<%# Bind("UnitPrice") %>'>
                </asp:TextBox><br />
                UnitsInStock: &nbsp; &nbsp;&nbsp;
                <asp:TextBox ID="UnitsInStockTextBox" runat="server" Text='<%# Bind("UnitsInStock") %>'>
                </asp:TextBox><br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                    Text="插入">
                </asp:LinkButton>
                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="取消">
                </asp:LinkButton>
            </InsertItemTemplate>
            <ItemTemplate>
                &nbsp;&nbsp;
                <table border="2">
                    <tr>
                        <td style="width: 100px">
                            种类ID</td>
                        <td style="width: 100px">
                            <asp:Label ID="CategoryIDLabel" runat="server" Text='<%# Bind("CategoryID") %>'></asp:Label></td>
                        <td style="width: 100px">
                            包装规格数量</td>
                        <td style="width: 100px">
                            <asp:Label ID="QuantityPerUnitLabel" runat="server" Text='<%# Bind("QuantityPerUnit") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            产品ID</td>
                        <td style="width: 100px">
                            <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label></td>
                        <td style="width: 100px">
                            单价</td>
                        <td style="width: 100px">
                            <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Bind("UnitPrice") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            产品名称</td>
                        <td style="width: 100px">
                            <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>'></asp:Label></td>
                        <td style="width: 100px">
                            股票价格</td>
                        <td style="width: 100px">
                            <asp:Label ID="UnitsInStockLabel" runat="server" Text='<%# Bind("UnitsInStock") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            供应商ID</td>
                        <td style="width: 100px">
                            <asp:Label ID="SupplierIDLabel" runat="server" Text='<%# Bind("SupplierID") %>'></asp:Label></td>
                        <td colspan="2">
                            &nbsp;&nbsp;
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                                Text="编辑"></asp:LinkButton>
                            &nbsp; &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False"
                                CommandName="Delete" Text="删除"></asp:LinkButton>
                            &nbsp;
                            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                                Text="新建"></asp:LinkButton></td>
                    </tr>
                </table>
            </ItemTemplate>
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerSettings FirstPageText="第一页" LastPageText="最后一页" Mode="NextPreviousFirstLast"
                NextPageText="下一页" PreviousPageText="上一页" />
        </asp:FormView>
    </div>
    </form>
</body>
</html>

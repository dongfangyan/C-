<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Sitemember.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="members_Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
       
        .main
       {  width: 950px;
           margin: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class ="main" align="left">
   <asp:Image ID="Image1" runat="server" ImageUrl="~/images/我的购物车.jpg" />
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                    CellPadding="4" DataKeyNames="ProductID" 
        DataSourceID="SqlDataSource1" ForeColor="#333333" 
        Style="border-right: lightgrey thin solid; border-top: lightgrey thin solid;
                    border-left: lightgrey thin solid; border-bottom: lightgrey thin solid" 
        Width="900px" 
        OnRowDataBound="GridView1_RowDataBound">
                    <Columns>
                        <asp:TemplateField HeaderText="商品编号" SortExpression="ProductID">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="productid" runat="server" Text='<%# Bind("ProductID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="ProductName" HeaderText="商品名称" SortExpression="ProductName" />
                        <asp:BoundField DataField="ProductTypeName" HeaderText="商品种类" SortExpression="ProductTypeName" />
                        <asp:TemplateField HeaderText="商品数量" SortExpression="Num">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Num") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                &nbsp;<table>
                                    <tr>
                                        <td style="width: 44px">
                                            <asp:TextBox ID="num" runat="server" Text='<%# Bind("Num") %>' Width="40px"></asp:TextBox></td>
                                        <td style="width: 51px">
                                            <asp:Button ID="btnedit" runat="server" Text="修改" OnClick="btnedit_Click" /></td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="单价" SortExpression="Price">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="price" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="商品总额" SortExpression="TotalMoney">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("TotalMoney") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="totalmoney" runat="server" Text='<%# Bind("TotalMoney") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="删除" ShowHeader="False">
                            <ItemTemplate>
                                &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="False"
                                    CommandName="Delete" ImageUrl="~/images/删除.bmp" OnClientClick='return confirm("确定要删除该商品?")' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
                    ConnectionString="<%$ ConnectionStrings:ShoppingWebDBConnectionString %>" DeleteCommand="DELETE FROM [TempOrderInfo] WHERE [ProductID] = @original_ProductID "
                    InsertCommand="INSERT INTO [TempOrderInfo] ([ProductID], [UserName], [ProductName], [ProductTypeName], [Num], [Price], [TotalMoney]) VALUES (@ProductID, @UserName, @ProductName, @ProductTypeName, @Num, @Price, @TotalMoney)"
                    OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [TempOrderInfo] WHERE ([UserName] = @UserName)"
                    UpdateCommand="UPDATE [TempOrderInfo] SET [UserName] = @UserName, [ProductName] = @ProductName, [ProductTypeName] = @ProductTypeName, [Num] = @Num, [Price] = @Price, [TotalMoney] = @TotalMoney WHERE [ProductID] = @original_ProductID [TotalMoney] = @original_TotalMoney">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ProductID" Type="String" />
                        <asp:Parameter Name="original_UserName" Type="String" />
                        <asp:Parameter Name="original_ProductName" Type="String" />
                        <asp:Parameter Name="original_ProductTypeName" Type="String" />
                        <asp:Parameter Name="original_Num" Type="Int32" />
                        <asp:Parameter Name="original_Price" Type="Decimal" />
                        <asp:Parameter Name="original_TotalMoney" Type="Decimal" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="ProductName" Type="String" />
                        <asp:Parameter Name="ProductTypeName" Type="String" />
                        <asp:Parameter Name="Num" Type="Int32" />
                        <asp:Parameter Name="Price" Type="Decimal" />
                        <asp:Parameter Name="TotalMoney" Type="Decimal" />
                        <asp:Parameter Name="original_ProductID" Type="String" />
                        <asp:Parameter Name="original_UserName" Type="String" />
                        <asp:Parameter Name="original_ProductName" Type="String" />
                        <asp:Parameter Name="original_ProductTypeName" Type="String" />
                        <asp:Parameter Name="original_Num" Type="Int32" />
                        <asp:Parameter Name="original_Price" Type="Decimal" />
                        <asp:Parameter Name="original_TotalMoney" Type="Decimal" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ProductID" Type="String" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="ProductName" Type="String" />
                        <asp:Parameter Name="ProductTypeName" Type="String" />
                        <asp:Parameter Name="Num" Type="Int32" />
                        <asp:Parameter Name="Price" Type="Decimal" />
                        <asp:Parameter Name="TotalMoney" Type="Decimal" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="UserName" SessionField="UserName" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                 <asp:Label ID="lblusername" runat="server" Width="136px"></asp:Label>
                </div>
             <div align="center">
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton 
                        ID="btnclear" runat="server" ImageUrl="~/images/clearcar.jpg" 
                        onclick="btnclear_Click1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/total.jpg" />
&nbsp;
                  <asp:Label ID="lblmoney" runat="server" Width="72px"></asp:Label>
                  </div>

                   <br />   <br />
 
             <div align="center"  >
                   <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/images/继续购物.jpg" NavigateUrl="~/Default.aspx"></asp:HyperLink>
                   &nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/images/去收银台.jpg" NavigateUrl="~/members/Order.aspx"></asp:HyperLink>
                    <asp:TextBox ID="TextBox4" runat="server" ForeColor="Green" Height="96px" ReadOnly="True"
                                TextMode="MultiLine" Width="750px">温馨提示：
1.如果您想修改已购买的某商品的数量，请在相应行的商品数量列中输入您想购物的数量，然后单击“修改”按钮即可。
2.如果您还想挑选其它商品，请点击“继续选购”找你喜欢的商品。
3.如果您已经挑选完商品，请点击“去收银台”进入提交订单并填写收货信息! 
4.如果您不想要已购买的所有商品，只要单击“清空购物车”即可。</asp:TextBox>

</div>
 
</asp:Content>


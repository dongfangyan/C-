<%@ Page Title="" Language="C#" MasterPageFile="~/Master/siteAdmin.master" AutoEventWireup="true" CodeFile="ProductManage.aspx.cs" Inherits="admin_ProductManage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
                    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource4"
                    ForeColor="#333333" PageSize="5" Width="800px">
                    <FooterStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID">
                            <ItemStyle Width="20px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Name" HeaderText="商品名称" SortExpression="Name">
                            <ItemStyle Width="90px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ProductTypeID" HeaderText="类别" SortExpression="ProductTypeID">
                            <ItemStyle Width="80px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Description" HeaderText="商品描述" SortExpression="Description">
                            <ItemStyle Width="300px" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="进货时间" SortExpression="PublicTime">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("publicTime") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("publicTime", "{0:d}") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Width="90px" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="InPrice" HeaderText="原价" SortExpression="InPrice">
                            <ItemStyle Width="60px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="OutPrice" HeaderText="现价" SortExpression="OutPrice">
                            <ItemStyle Width="60px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="IsSpecial" HeaderText="特价" SortExpression="IsSpecial">
                            <ItemStyle Width="40px" />
                        </asp:BoundField>
                        <asp:CommandField HeaderText="修改" ShowSelectButton="True">
                            <ItemStyle Width="80px" />
                        </asp:CommandField>
                    </Columns>
                    <RowStyle BackColor="#EFF3FB" />
                    <EditRowStyle BackColor="#2461BF" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <PagerStyle BackColor="#339966" ForeColor="White" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView><br />
                <br />
                <hr style="color: #008000" />
               
                <br />
                <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="0" DataKeyNames="ID"
                    DataSourceID="SqlDataSource1" Width="780px" 
                    OnItemDeleted="FormView1_ItemDeleted" OnItemInserted="FormView1_ItemInserted" 
                    OnItemUpdated="FormView1_ItemUpdated">
                    <EditItemTemplate>
                        <table style="width: 800px; height: 184px">
                            <tr>
                                <td style="width: 80px">
                                    <asp:Label ID="Label2" runat="server" Text="商品编号：" Width="80px"></asp:Label></td>
                                <td style="width: 200px;">
                                    <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>'></asp:Label></td>
                                <td style="width: 50px; height: 38px;">
                                </td>
                                <td style="width: 80px">
                                    <asp:Label ID="Label3" runat="server" Text="商品名称：" Width="80px"></asp:Label></td>
                                <td style="width: 300px">
                                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' Width="300px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 80px;">
                                    <asp:Label ID="Label4" runat="server" Text="商品类别：" Width="112px"></asp:Label></td>
                                <td style="width: 200px;">
                                    <asp:TextBox ID="ProductTypeIDTextBox" runat="server" Text='<%# Bind("ProductTypeID") %>'
                                        Width="200px"></asp:TextBox></td>
                                <td style="width: 50px; height: 38px">
                                </td>
                                <td rowspan="2" style="width: 80px;">
                                    <asp:Label ID="Label5" runat="server" Text="商品描述：" Width="80px"></asp:Label></td>
                                <td rowspan="2" style="width: 300px;">
                                    <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>'
                                        TextMode="MultiLine" Width="300px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 80px">
                                    <asp:Label ID="Label6" runat="server" Text="供应商："></asp:Label></td>
                                <td style="width: 200px;">
                                    <asp:TextBox ID="SuppliersTextBox" runat="server" Text='<%# Bind("Suppliers") %>'
                                        Width="200px"></asp:TextBox></td>
                                <td style="width: 50px; height: 38px;">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 80px">
                                    <asp:Label ID="Label8" runat="server" Text="原价："></asp:Label></td>
                                <td style="width: 200px">
                                    <asp:TextBox ID="InPriceTextBox" runat="server" Text='<%# Bind("InPrice") %>' Width="200px"></asp:TextBox></td>
                                <td style="width: 50px; height: 38px;">
                                </td>
                                <td style="width: 80px">
                                    <asp:Label ID="Label7" runat="server" Text="进货时间" Width="80px"></asp:Label></td>
                                <td style="width: 300px">
                                    <asp:TextBox ID="InTimeTextBox" runat="server" Text='<%# Bind("publicTime") %>' Width="300px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 80px">
                                    <asp:Label ID="lblpricenew" runat="server" Text="现价："></asp:Label></td>
                                <td style="width: 200px">
                                    <asp:TextBox ID="OutPriceTextBox" runat="server" Text='<%# Bind("OutPrice") %>' Width="200px"></asp:TextBox></td>
                                <td style="width: 50px; height: 38px;">
                                </td>
                                <td style="width: 80px">
                                    <asp:Label ID="Label10" runat="server" Text="图片：" Width="80px"></asp:Label></td>
                                <td style="width: 300px">
                                    <asp:TextBox ID="PictureIDTextBox" runat="server" Text='<%# Bind("Picture") %>' Width="300px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 80px;">
                                    <asp:Label ID="Label12" runat="server" Height="16px" Text="是否特价商品：" Width="112px"></asp:Label></td>
                                <td style="width: 200px;">
                                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" DataSourceID="SqlDataSource6"
                                        DataTextField="IsSpecial" DataValueField="IsSpecial" RepeatDirection="Horizontal"
                                        SelectedValue='<%# Bind("IsSpecial") %>'>
                                    </asp:RadioButtonList></td>
                                <td style="width: 50px; height: 38px">
                                </td>
                                <td style="width: 80px;">
                                </td>
                                <td style="width: 300px;">
                                </td>
                            </tr>
                           
                            <tr>
                                <td style="width: 80px;">
                                </td>
                                <td style="width: 200px;">
                                    &nbsp;
                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                                        Text="更新"></asp:LinkButton></td>
                                <td style="width: 50px; height: 38px">
                                </td>
                                <td style="width: 80px;">
                                    <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                                        Text="取消"></asp:LinkButton></td>
                                <td style="width: 300px;">
                                </td>
                            </tr>
                        </table>
                        <br />
                        &nbsp;
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <br />
                        <table style="width: 544px; height: 184px">
                            <tr>
                                <td style="width: 80px">
                                    <asp:Label ID="Label2" runat="server" Text="商品编号：" Width="80px"></asp:Label></td>
                                <td style="width: 100px;">
                                    <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' Width="200px"></asp:TextBox></td>
                                <td style="width: 50px;">
                                </td>
                                <td style="width: 3067px">
                                    <asp:Label ID="Label3" runat="server" Text="商品名称：" Width="80px"></asp:Label></td>
                                <td style="width: 100px">
                                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' Width="300px"></asp:TextBox></td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 80px;">
                                    <asp:Label ID="Label4" runat="server" Text="商品类别：" Width="81px"></asp:Label></td>
                                <td style="width: 100px; height: 38px">
                                    <asp:TextBox ID="ProductTypeIDTextBox" runat="server" Text='<%# Bind("ProductTypeID") %>'
                                        Width="200px"></asp:TextBox></td>
                                <td style="width: 50px;">
                                </td>
                                <td rowspan="2" style="width: 3067px;">
                                    <asp:Label ID="Label5" runat="server" Text="商品描述：" Width="80px"></asp:Label></td>
                                <td rowspan="2" style="width: 100px;">
                                    <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>'
                                        TextMode="MultiLine" Width="300px"></asp:TextBox></td>
                                <td style="width: 100px; height: 38px">
                                </td>
                                <td style="width: 100px; height: 38px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 80px">
                                    <asp:Label ID="Label6" runat="server" Text="供应商："></asp:Label></td>
                                <td style="width: 100px;">
                                    <asp:TextBox ID="SuppliersTextBox" runat="server" Text='<%# Bind("Suppliers") %>'
                                        Width="200px"></asp:TextBox></td>
                                <td style="width: 50px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 80px">
                                    <asp:Label ID="Label8" runat="server" Text="原价："></asp:Label></td>
                                <td style="width: 100px">
                                    <asp:TextBox ID="InPriceTextBox" runat="server" Text='<%# Bind("InPrice") %>' Width="200px"></asp:TextBox></td>
                                <td style="width: 50px">
                                </td>
                                <td style="width: 3067px">
                                    <asp:Label ID="Label7" runat="server" Text="进货时间" Width="80px"></asp:Label></td>
                                <td style="width: 100px">
                                    <asp:TextBox ID="InTimeTextBox" runat="server" Text='<%# Bind("publicTime") %>' Width="300px"></asp:TextBox></td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 80px">
                                    <asp:Label ID="lblpricenew" runat="server" Text="现价："></asp:Label></td>
                                <td style="width: 100px">
                                    <asp:TextBox ID="OutPriceTextBox" runat="server" Text='<%# Bind("OutPrice") %>' Width="200px"></asp:TextBox></td>
                                <td style="width: 50px">
                                </td>
                                <td style="width: 3067px">
                                    <asp:Label ID="Label10" runat="server" Text="图片编号：" Width="80px"></asp:Label></td>
                                <td style="width: 100px">
                                    <asp:TextBox ID="PictureIDTextBox" runat="server" Text='<%# Bind("Picture") %>' Width="300px"></asp:TextBox></td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 80px;">
                                    <asp:Label ID="Label12" runat="server" Height="16px" Text="是否特价商品：" Width="112px"></asp:Label></td>
                                <td style="width: 100px; height: 47px">
                                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" DataSourceID="SqlDataSource6"
                                        DataTextField="IsSpecial" DataValueField="IsSpecial" RepeatDirection="Horizontal"
                                        SelectedValue='<%# Bind("IsSpecial") %>'>
                                    </asp:RadioButtonList></td>
                                <td style="width: 50px;">
                                </td>
                                <td style="width: 3067px; height: 47px">
                                </td>
                                <td style="width: 100px; height: 47px">
                                </td>
                                <td style="width: 100px; height: 47px">
                                </td>
                                <td style="width: 100px; height: 47px">
                                </td>
                            </tr>
                          
                            <tr>
                                <td style="width: 80px;">
                                </td>
                                <td style="width: 100px; height: 21px">
                                    &nbsp;
                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                                        Text="插入"></asp:LinkButton></td>
                                <td style="width: 50px;">
                                </td>
                                <td style="width: 3067px; height: 21px">
                                    <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                                        Text="取消"></asp:LinkButton></td>
                                <td style="width: 100px; height: 21px">
                                </td>
                                <td style="width: 100px; height: 21px">
                                </td>
                                <td style="width: 100px; height: 21px">
                                </td>
                            </tr>
                        </table>
                        <br />
                        &nbsp;
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <table style="height: 184px" width="800">
                            <tr>
                                <td style="width: 200px; border-right: #339966 1px solid; border-top: #339966 1px solid;
                                    border-left: #339966 1px solid; border-bottom: #339966 1px solid; height: 38px;">
                                    <asp:Label ID="Label2" runat="server" Text="商品编号：" Width="80px"></asp:Label></td>
                                <td style="width: 200px; border-right: #339966 1px solid; border-top: #339966 1px solid;
                                    border-left: #339966 1px solid; border-bottom: #339966 1px solid; height: 38px;">
                                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>'></asp:Label></td>
                                <td style="width: 50px;">
                                </td>
                                <td style="width: 80px; border-right: #339966 1px solid; border-top: #339966 1px solid;
                                    border-left: #339966 1px solid; border-bottom: #339966 1px solid; height: 21px;">
                                    <asp:Label ID="Label3" runat="server" Text="商品名称：" Width="80px"></asp:Label></td>
                                <td style="width: 80px; border-right: #339966 1px solid; border-top: #339966 1px solid;
                                    border-left: #339966 1px solid; border-bottom: #339966 1px solid; height: 21px;">
                                    <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' Width="300px"></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 200px; height: 38px; border-right: #339966 1px solid; border-top: #339966 1px solid;
                                    border-left: #339966 1px solid; border-bottom: #339966 1px solid;">
                                    <asp:Label ID="Label4" runat="server" Text="商品类别：" Width="85px"></asp:Label></td>
                                <td style="width: 200px; height: 38px; border-right: #339966 1px solid; border-top: #339966 1px solid;
                                    border-left: #339966 1px solid; border-bottom: #339966 1px solid;">
                                    <asp:Label ID="ProductTypeIDLabel" runat="server" Text='<%# Bind("ProductTypeID") %>'
                                        Width="200px"></asp:Label></td>
                                <td style="width: 50px;">
                                </td>
                                <td rowspan="2" style="width: 80px; height: 21px; border-right: #339966 1px solid;
                                    border-top: #339966 1px solid; border-left: #339966 1px solid; border-bottom: #339966 1px solid;">
                                    <asp:Label ID="Label5" runat="server" Text="商品描述："></asp:Label></td>
                                <td rowspan="2" style="width: 80px; height: 21px; border-right: #339966 1px solid;
                                    border-top: #339966 1px solid; border-left: #339966 1px solid; border-bottom: #339966 1px solid;">
                                    <asp:Label ID="DescriptionLabel" runat="server" Height="29px" Text='<%# Bind("Description") %>'
                                        Width="300px"></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 200px; border-right: #339966 1px solid; border-top: #339966 1px solid;
                                    border-left: #339966 1px solid; border-bottom: #339966 1px solid; height: 38px;">
                                    <asp:Label ID="Label6" runat="server" Text="供应商："></asp:Label></td>
                                <td style="width: 200px; border-right: #339966 1px solid; border-top: #339966 1px solid;
                                    border-left: #339966 1px solid; border-bottom: #339966 1px solid; height: 38px;">
                                    <asp:Label ID="SuppliersLabel" runat="server" Text='<%# Bind("Suppliers") %>' Width="200px"></asp:Label></td>
                                <td style="width: 50px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 200px; border-right: #339966 1px solid; border-top: #339966 1px solid;
                                    border-left: #339966 1px solid; border-bottom: #339966 1px solid; height: 38px;">
                                    <asp:Label ID="Label8" runat="server" Text="原价："></asp:Label></td>
                                <td style="width: 200px; border-right: #339966 1px solid; border-top: #339966 1px solid;
                                    border-left: #339966 1px solid; border-bottom: #339966 1px solid; height: 38px;">
                                    <asp:Label ID="InPriceLabel" runat="server" Text='<%# Bind("InPrice") %>' Width="200px"></asp:Label></td>
                                <td style="width: 50px">
                                </td>
                                <td style="width: 80px; border-right: #339966 1px solid; border-top: #339966 1px solid;
                                    border-left: #339966 1px solid; border-bottom: #339966 1px solid; height: 21px;">
                                    <asp:Label ID="Label7" runat="server" Text="进货时间"></asp:Label></td>
                                <td style="width: 80px; border-right: #339966 1px solid; border-top: #339966 1px solid;
                                    border-left: #339966 1px solid; border-bottom: #339966 1px solid; height: 21px;">
                                    <asp:Label ID="publicTimeLabel" runat="server" Text='<%# Bind("publicTime") %>' Width="300px"></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 200px; border-right: #339966 1px solid; border-top: #339966 1px solid;
                                    border-left: #339966 1px solid; border-bottom: #339966 1px solid; height: 38px;">
                                    <asp:Label ID="lblpricenew" runat="server" Text="现价："></asp:Label></td>
                                <td style="width: 200px; border-right: #339966 1px solid; border-top: #339966 1px solid;
                                    border-left: #339966 1px solid; border-bottom: #339966 1px solid; height: 38px;">
                                    <asp:Label ID="OutPriceLabel" runat="server" Text='<%# Bind("OutPrice") %>' Width="154px"></asp:Label></td>
                                <td style="width: 50px">
                                </td>
                                <td style="width: 80px; border-right: #339966 1px solid; border-top: #339966 1px solid;
                                    border-left: #339966 1px solid; border-bottom: #339966 1px solid; height: 21px;">
                                    <asp:Label ID="Label10" runat="server" Text="图片："></asp:Label></td>
                                <td style="width: 80px; border-right: #339966 1px solid; border-top: #339966 1px solid;
                                    border-left: #339966 1px solid; border-bottom: #339966 1px solid; height: 21px;">
                                    <asp:Label ID="PictureLabel" runat="server" Text='<%# Bind("Picture") %>' Width="300px"></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 200px; height: 38px; border-top-width: 1px; border-left-width: 1px;
                                    border-left-color: #339966; border-bottom-width: 1px; border-bottom-color: #339966;
                                    border-top-color: #339966; border-right-width: 1px; border-right-color: #339966;">
                                    <asp:Label ID="Label12" runat="server" Height="16px" Text="是否特价商品：" Width="112px"></asp:Label></td>
                                <td style="width: 200px; height: 38px; border-top-width: 1px; border-left-width: 1px;
                                    border-left-color: #339966; border-bottom-width: 1px; border-bottom-color: #339966;
                                    border-top-color: #339966; border-right-width: 1px; border-right-color: #339966;">
                                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" DataSourceID="SqlDataSource6"
                                        DataTextField="IsSpecial" DataValueField="IsSpecial" Enabled="False" RepeatDirection="Horizontal"
                                        SelectedValue='<%# Bind("IsSpecial") %>'>
                                    </asp:RadioButtonList></td>
                                <td style="width: 50px;">
                                </td>
                                <td style="width: 80px; height: 21px">
                                </td>
                                <td style="width: 100px; height: 47px">
                                </td>
                            </tr>
                          
                            <tr>
                                <td style="height: 47px" colspan="5">
                                    &nbsp;
                                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                                        CommandName="Edit" Text="编辑"></asp:LinkButton>
                                    &nbsp; &nbsp; &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                                        CommandName="Delete" OnClientClick="return confirm(&quot;确定删除吗？&quot;)" 
                                        Text="删除" Width="56px"></asp:LinkButton>
                                    &nbsp;&nbsp;
                                    <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                                        CommandName="New" Text="新建"></asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                        <br />
                        &nbsp;&nbsp;
                    </ItemTemplate>
                </asp:FormView>
         
          
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
                    ConnectionString="<%$ ConnectionStrings:ShoppingWebDBConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [ID] = @original_ID AND [Name] = @original_Name AND [ProductTypeID] = @original_ProductTypeID AND [Description] = @original_Description AND [Suppliers] = @original_Suppliers AND [publicTime] = @original_publicTime AND [InPrice] = @original_InPrice AND [OutPrice] = @original_OutPrice AND [Picture] = @original_Picture AND [IsSpecial] = @original_IsSpecial"
                    InsertCommand="INSERT INTO [Products] ([ID], [Name], [ProductTypeID], [Description], [Suppliers], [publicTime], [InPrice], [OutPrice], [Picture],  [IsSpecial]) VALUES (@ID, @Name, @ProductTypeID, @Description, @Suppliers, @publicTime, @InPrice, @OutPrice, @Picture, @IsSpecial)"
                    OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Products] WHERE ([ID] = @ID)"
                    UpdateCommand="UPDATE [Products] SET [Name] = @Name, [ProductTypeID] = @ProductTypeID, [Description] = @Description, [Suppliers] = @Suppliers, [publicTime] = @publicTime, [InPrice] = @InPrice, [OutPrice] = @OutPrice, [Picture] = @Picture, [IsSpecial] = @IsSpecial WHERE [ID] = @original_ID AND [Name] = @original_Name AND [ProductTypeID] = @original_ProductTypeID AND [Description] = @original_Description AND [Suppliers] = @original_Suppliers AND [publicTime] = @original_publicTime AND [InPrice] = @original_InPrice AND [OutPrice] = @original_OutPrice AND [Picture] = @original_Picture AND [IsSpecial] = @original_IsSpecial">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ID" Type="String" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_ProductTypeID" Type="String" />
                        <asp:Parameter Name="original_Description" Type="String" />
                        <asp:Parameter Name="original_Suppliers" Type="String" />
                        <asp:Parameter Name="original_publicTime" Type="DateTime" />
                        <asp:Parameter Name="original_InPrice" Type="Decimal" />
                        <asp:Parameter Name="original_OutPrice" Type="Decimal" />
                        <asp:Parameter Name="original_Picture" Type="String" />
                        <asp:Parameter Name="original_IsSpecial" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="ProductTypeID" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Suppliers" Type="String" />
                        <asp:Parameter Name="publicTime" Type="DateTime" />
                        <asp:Parameter Name="InPrice" Type="Decimal" />
                        <asp:Parameter Name="OutPrice" Type="Decimal" />
                        <asp:Parameter Name="Picture" Type="String" />
                        <asp:Parameter Name="IsSpecial" Type="String" />
                        <asp:Parameter Name="original_ID" Type="String" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_ProductTypeID" Type="String" />
                        <asp:Parameter Name="original_Description" Type="String" />
                        <asp:Parameter Name="original_Suppliers" Type="String" />
                        <asp:Parameter Name="original_publicTime" Type="DateTime" />
                        <asp:Parameter Name="original_InPrice" Type="Decimal" />
                        <asp:Parameter Name="original_OutPrice" Type="Decimal" />
                        <asp:Parameter Name="original_Picture" Type="String" />
                        <asp:Parameter Name="original_IsSpecial" Type="String" />
                    </UpdateParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="ID" PropertyName="SelectedValue"
                            Type="String" />
                    </SelectParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ID" Type="String" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="ProductTypeID" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Suppliers" Type="String" />
                        <asp:Parameter Name="publicTime" Type="DateTime" />
                        <asp:Parameter Name="InPrice" Type="Decimal" />
                        <asp:Parameter Name="OutPrice" Type="Decimal" />
                        <asp:Parameter Name="Picture" Type="String" />
                        <asp:Parameter Name="IsSpecial" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingWebDBConnectionString %>"
                    SelectCommand="SELECT DISTINCT [ProductTypeID] FROM [Products]"></asp:SqlDataSource>
                &nbsp;
          
                &nbsp;<asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingWebDBConnectionString %>"
                    SelectCommand="SELECT DISTINCT [IsSpecial] FROM [Products]"></asp:SqlDataSource>
            
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues"
                    ConnectionString="<%$ ConnectionStrings:ShoppingWebDBConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [ID] = @original_ID AND [Name] = @original_Name AND [ProductTypeID] = @original_ProductTypeID AND [Description] = @original_Description AND [Suppliers] = @original_Suppliers AND [publicTime] = @original_publicTime AND [InPrice] = @original_InPrice AND [OutPrice] = @original_OutPrice AND [Picture] = @original_Picture AND [IsSpecial] = @original_IsSpecial"
                    InsertCommand="INSERT INTO [Products] ([ID], [Name], [ProductTypeID], [Description], [Suppliers], [publicTime], [InPrice], [OutPrice], [Picture], [IsSpecial]) VALUES (@ID, @Name, @ProductTypeID, @Description, @Suppliers, @publicTime, @InPrice, @OutPrice, @Picture, @IsSpecial)"
                    OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Products] WHERE ([ID] = @ID)"
                    UpdateCommand="UPDATE [Products] SET [Name] = @Name, [ProductTypeID] = @ProductTypeID, [Description] = @Description, [Suppliers] = @Suppliers, [publicTime] = @publicTime, [InPrice] = @InPrice, [OutPrice] = @OutPrice, [Picture] = @Picture, [IsSpecial] = @IsSpecial WHERE [ID] = @original_ID AND [Name] = @original_Name AND [ProductTypeID] = @original_ProductTypeID AND [Description] = @original_Description AND [Suppliers] = @original_Suppliers AND [pubilcTime] = @original_publicTime AND [InPrice] = @original_InPrice AND [OutPrice] = @original_OutPrice AND [Picture] = @original_Picture AND [IsSpecial] = @original_IsSpecial">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ID" Type="String" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_ProductTypeID" Type="String" />
                        <asp:Parameter Name="original_Description" Type="String" />
                        <asp:Parameter Name="original_Suppliers" Type="String" />
                        <asp:Parameter Name="original_publicTime" Type="DateTime" />
                        <asp:Parameter Name="original_InPrice" Type="Decimal" />
                        <asp:Parameter Name="original_OutPrice" Type="Decimal" />
                        <asp:Parameter Name="original_Picture" Type="String" />
                        <asp:Parameter Name="original_IsSpecial" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="ProductTypeID" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Suppliers" Type="String" />
                        <asp:Parameter Name="publicTime" Type="DateTime" />
                        <asp:Parameter Name="InPrice" Type="Decimal" />
                        <asp:Parameter Name="OutPrice" Type="Decimal" />
                        <asp:Parameter Name="Picture" Type="String" />
                        <asp:Parameter Name="IsSpecial" Type="String" />
                        <asp:Parameter Name="original_ID" Type="String" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_ProductTypeID" Type="String" />
                        <asp:Parameter Name="original_Description" Type="String" />
                        <asp:Parameter Name="original_Suppliers" Type="String" />
                        <asp:Parameter Name="original_publicTime" Type="DateTime" />
                        <asp:Parameter Name="original_InPrice" Type="Decimal" />
                        <asp:Parameter Name="original_OutPrice" Type="Decimal" />
                        <asp:Parameter Name="original_Picture" Type="String" />
                        <asp:Parameter Name="original_IsSpecial" Type="String" />
                    </UpdateParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="ID" PropertyName="SelectedValue"
                            Type="String" />
                    </SelectParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ID" Type="String" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="ProductTypeID" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Suppliers" Type="String" />
                        <asp:Parameter Name="publicTime" Type="DateTime" />
                        <asp:Parameter Name="InPrice" Type="Decimal" />
                        <asp:Parameter Name="OutPrice" Type="Decimal" />
                        <asp:Parameter Name="Picture" Type="String" />
                        <asp:Parameter Name="IsSpecial" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingWebDBConnectionString %>"
                    DeleteCommand="DELETE FROM [Products] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Products] ([ID], [Name], [ProductTypeID], [Description], [Suppliers], [publicTime], [InPrice], [OutPrice], [Picture], [IsSpecial]) VALUES (@ID, @Name, @ProductTypeID, @Description, @Suppliers, @publicTime, @InPrice, @OutPrice, @Picture, @IsSpecial)"
                    SelectCommand="SELECT [ID], [Name], [ProductTypeID], [Description], [Suppliers], [publicTime], [InPrice], [OutPrice], [Picture], [IsSpecial] FROM [Products]"
                    UpdateCommand="UPDATE [Products] SET [Name] = @Name, [ProductTypeID] = @ProductTypeID, [Description] = @Description, [Suppliers] = @Suppliers, [publicTime] = @publicTime, [InPrice] = @InPrice, [OutPrice] = @OutPrice, [Picture] = @Picture, [IsSpecial] = @IsSpecial WHERE [ID] = @ID">
                    <DeleteParameters>
                        <asp:Parameter Name="ID" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="ProductTypeID" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Suppliers" Type="String" />
                        <asp:Parameter Name="publicTime" Type="DateTime" />
                        <asp:Parameter Name="InPrice" Type="Decimal" />
                        <asp:Parameter Name="OutPrice" Type="Decimal" />
                        <asp:Parameter Name="Picture" Type="String" />
                        <asp:Parameter Name="IsSpecial" Type="String" />
                        <asp:Parameter Name="ID" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ID" Type="String" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="ProductTypeID" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Suppliers" Type="String" />
                        <asp:Parameter Name="publicTime" Type="DateTime" />
                        <asp:Parameter Name="InPrice" Type="Decimal" />
                        <asp:Parameter Name="OutPrice" Type="Decimal" />
                        <asp:Parameter Name="Picture" Type="String" />
                        <asp:Parameter Name="IsSpecial" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
           
</asp:Content>


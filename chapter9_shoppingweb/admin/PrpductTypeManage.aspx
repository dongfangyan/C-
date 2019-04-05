<%@ Page Title="" Language="C#" MasterPageFile="~/Master/siteAdmin.master" AutoEventWireup="true" CodeFile="PrpductTypeManage.aspx.cs" Inherits="admin_PrpductTypeManage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
         <br />
         <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double"
                    BorderWidth="3px" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource4"
                    Width="400px">
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <Columns>
                        <asp:TemplateField HeaderText="种类编号" SortExpression="ID">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Width="80px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="种类名称" SortExpression="TypeName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TypeName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("TypeName") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Width="150px" />
                        </asp:TemplateField>
                        <asp:CommandField HeaderText="商品种类管理" SelectText="添加或修改" ShowSelectButton="True">
                            <ItemStyle Width="150px" />
                        </asp:CommandField>
                    </Columns>
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#339966" ForeColor="White" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                </asp:GridView>

                 <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1"
                    ForeColor="#333333" Height="152px" Width="408px" 
                    onitemdeleted="FormView1_ItemDeleted" oniteminserted="FormView1_ItemInserted" 
                    onitemupdated="FormView1_ItemUpdated">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="Info" />
                    <EditItemTemplate>
                        <table>
                            <tr>
                                <td style="width: 100px">
                                    <asp:Label ID="Label5" runat="server" Text="商品类别编号：" Width="112px"></asp:Label></td>
                                <td style="width: 207px">
                                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>'></asp:Label></td>
                                <td style="width: 100px">
                                    <asp:Label ID="Label6" runat="server" Text="类别名称：" Width="80px"></asp:Label></td>
                                <td style="width: 100px">
                                    <asp:TextBox ID="TypeNameTextBox" runat="server" Text='<%# Bind("TypeName") %>'></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 100px; height: 21px">
                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                                        OnClientClick='return confirm("确定更新吗？")' Text="更新"></asp:LinkButton></td>
                                <td style="width: 207px; height: 21px">
                                    <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                                        Text="取消"></asp:LinkButton></td>
                                <td style="width: 100px; height: 21px">
                                </td>
                                <td style="width: 100px; height: 21px">
                                </td>
                            </tr>
                        </table>
                        <br />
                        &nbsp;
                    </EditItemTemplate>
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <InsertItemTemplate>
                        <br />
                          <br />
                            <br />
                        <table>
                            <tr>
                                <td style="width: 100px">
                                    <asp:Label ID="Label5" runat="server" Text="商品类别编号：" Width="112px"></asp:Label></td>
                                <td style="width: 207px">
                                    <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' Width="98px"></asp:TextBox></td>
                                <td style="width: 100px">
                                    <asp:Label ID="Label6" runat="server" Text="类别名称：" Width="80px"></asp:Label></td>
                                <td style="width: 100px">
                                    <asp:TextBox ID="TypeNameTextBox" runat="server" Text='<%# Bind("TypeName") %>'></asp:TextBox></td>
                            </tr>
                           
                            <tr>
                                <td style="width: 100px; height: 21px">
                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                                        Text="插入"></asp:LinkButton></td>
                                <td style="width: 207px; height: 21px">
                                    <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                                        Text="取消"></asp:LinkButton></td>
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
                        <table>
                            <tr>
                                <td style="width: 100px">
                                    <asp:Label ID="Label5" runat="server" Text="商品类别编号：" Width="112px"></asp:Label></td>
                                <td style="width: 207px">
                                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>'></asp:Label></td>
                                <td style="width: 100px">
                                    <asp:Label ID="Label6" runat="server" Text="类别名称：" Width="80px"></asp:Label></td>
                                <td colspan="2">
                                    <asp:Label ID="TypeNameLabel" runat="server" Text='<%# Bind("TypeName") %>'></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 207px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td colspan="2">
                                </td>
                            </tr>
                          
                            <tr>
                                <td colspan="2">
                                    &nbsp;<asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                                        Text="编辑"></asp:LinkButton>
                                    <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"
                                        OnClientClick='return confirm("确定删除吗？")' Text="删除"></asp:LinkButton>
                                    <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                                        Text="新建"></asp:LinkButton></td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                        </table>
                        &nbsp;&nbsp;<br />
                        <br />
                        &nbsp;&nbsp;
                    </ItemTemplate>
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                </asp:FormView>
   
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
                    ConnectionString="<%$ ConnectionStrings:ShoppingWebDBConnectionString %>" DeleteCommand="DELETE FROM [ProductType] WHERE [ID] = @original_ID AND [TypeName] = @original_TypeName "
                    InsertCommand="INSERT INTO [ProductType] ([ID], [TypeName]) VALUES (@ID, @TypeName)"
                    OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ID], [TypeName]FROM [ProductType] WHERE ([ID] = @ID)"
                    UpdateCommand="UPDATE [ProductType] SET [TypeName] = @TypeName WHERE [ID] = @original_ID ">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ID" Type="String" />
                        <asp:Parameter Name="original_TypeName" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TypeName" Type="String" />
                        <asp:Parameter Name="original_ID" Type="String" />
                    </UpdateParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="ID" PropertyName="SelectedValue"
                            Type="String" />
                    </SelectParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ID" Type="String" />
                        <asp:Parameter Name="TypeName" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
                &nbsp;
          
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingWebDBConnectionString %>"
                    SelectCommand="SELECT DISTINCT [ID] FROM [ProductType]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingWebDBConnectionString %>"
                    SelectCommand="SELECT [ID], [TypeName] FROM [ProductType]"></asp:SqlDataSource>
   </div>      
</asp:Content>


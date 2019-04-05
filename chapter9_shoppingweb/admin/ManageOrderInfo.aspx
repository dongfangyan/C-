<%@ Page Title="" Language="C#" MasterPageFile="~/Master/siteAdmin.master" AutoEventWireup="true" CodeFile="ManageOrderInfo.aspx.cs" Inherits="admin_ManageOrderInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
                    ConnectionString="<%$ ConnectionStrings:ShoppingWebDBConnectionString %>" 
                    DeleteCommand="DELETE FROM [OrderInfo] WHERE [OrderID] = @original_OrderID "
                    InsertCommand="INSERT INTO [OrderInfo] ([RealName], [OrderDate], [Status], [TotalMoney], [PayWay], [SendWay], [Phone], [Email], [Address], [Zip]) VALUES (@RealName, @OrderDate, @Status, @TotalMoney, @PayWay, @SendWay, @Phone, @Email, @Address, @Zip)"
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [OrderID], [RealName], [OrderDate], [Status], [TotalMoney], [PayWay], [SendWay], [Phone], [Email], [Address], [Zip] FROM [OrderInfo]"
                    UpdateCommand="UPDATE [OrderInfo] SET [RealName] = @RealName, [OrderDate] = @OrderDate, [Status] = @Status, [TotalMoney] = @TotalMoney, [PayWay] = @PayWay, [SendWay] = @SendWay, [Phone] = @Phone, [Email] = @Email, [Address] = @Address, [Zip] = @Zip WHERE [OrderID] = @original_OrderID">
                    <DeleteParameters>
                        <asp:Parameter Name="original_OrderID" Type="Int32" />
                        <asp:Parameter Name="original_RealName" Type="String" />
                        <asp:Parameter Name="original_OrderDate" Type="DateTime" />
                        <asp:Parameter Name="original_Status" Type="Boolean" />
                        <asp:Parameter Name="original_TotalMoney" Type="Decimal" />
                        <asp:Parameter Name="original_PayWay" Type="String" />
                        <asp:Parameter Name="original_SendWay" Type="String" />
                        <asp:Parameter Name="original_Phone" Type="String" />
                        <asp:Parameter Name="original_Email" Type="String" />
                        <asp:Parameter Name="original_Address" Type="String" />
                        <asp:Parameter Name="original_Zip" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="RealName" Type="String" />
                        <asp:Parameter Name="OrderDate" Type="DateTime" />
                        <asp:Parameter Name="Status" Type="Boolean" />
                        <asp:Parameter Name="TotalMoney" Type="Decimal" />
                        <asp:Parameter Name="PayWay" Type="String" />
                        <asp:Parameter Name="SendWay" Type="String" />
                        <asp:Parameter Name="Phone" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Zip" Type="String" />
                        <asp:Parameter Name="original_OrderID" Type="Int32" />
                        <asp:Parameter Name="original_RealName" Type="String" />
                        <asp:Parameter Name="original_OrderDate" Type="DateTime" />
                        <asp:Parameter Name="original_Status" Type="Boolean" />
                        <asp:Parameter Name="original_TotalMoney" Type="Decimal" />
                        <asp:Parameter Name="original_PayWay" Type="String" />
                        <asp:Parameter Name="original_SendWay" Type="String" />
                        <asp:Parameter Name="original_Phone" Type="String" />
                        <asp:Parameter Name="original_Email" Type="String" />
                        <asp:Parameter Name="original_Address" Type="String" />
                        <asp:Parameter Name="original_Zip" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="RealName" Type="String" />
                        <asp:Parameter Name="OrderDate" Type="DateTime" />
                        <asp:Parameter Name="Status" Type="Boolean" />
                        <asp:Parameter Name="TotalMoney" Type="Decimal" />
                        <asp:Parameter Name="PayWay" Type="String" />
                        <asp:Parameter Name="SendWay" Type="String" />
                        <asp:Parameter Name="Phone" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Zip" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" BackColor="White"
                    BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4"
                    DataKeyNames="OrderID" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="152px"
                    Width="496px">
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <EditItemTemplate>
                        <table style="background-color: honeydew" width="500">
                            <tr>
                                <td style="width: 100px; color: #336666;">
                                    订单号:</td>
                                <td style="width: 300px">
                                    <asp:Label ID="OrderIDLabel" runat="server" ForeColor="#004000" Text='<%# Eval("OrderID") %>'
                                        Width="250px"></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 100px; color: #336666;">
                                    收贷人:</td>
                                <td style="width: 300px">
                                    <asp:Label ID="RealNameLabel" runat="server" ForeColor="#004000" Text='<%# Bind("RealName") %>'
                                        Width="250px"></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 100px; color: #336666;">
                                    创建日期:
                                </td>
                                <td style="width: 300px">
                                    <asp:Label ID="OrderDateLabel" runat="server" ForeColor="#004000" Text='<%# Bind("OrderDate") %>'
                                        Width="250px"></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 100px; color: #336666;">
                                    是否已发送:
                                </td>
                                <td style="width: 300px">
                                    <asp:CheckBox ID="StatusCheckBox" runat="server" Checked='<%# Bind("Status") %>'
                                        ForeColor="#004000" Width="250px" /></td>
                            </tr>
                            <tr>
                                <td style="width: 100px; color: #336666;">
                                    总金额:</td>
                                <td style="width: 300px">
                                    <asp:Label ID="TotalMoneyLabel" runat="server" ForeColor="#004000" Text='<%# Bind("TotalMoney") %>'
                                        Width="250px"></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 100px; color: #336666;">
                                    付款方式:</td>
                                <td style="width: 300px">
                                    <asp:Label ID="PayWayLabel" runat="server" ForeColor="#004000" Text='<%# Bind("PayWay") %>'
                                        Width="250px"></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 100px; color: #336666;">
                                    送贷方式:</td>
                                <td style="width: 300px">
                                    <asp:Label ID="SendWayLabel" runat="server" ForeColor="#004000" Text='<%# Bind("SendWay") %>'
                                        Width="250px"></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 100px; color: #336666;">
                                    联系电话:</td>
                                <td style="width: 300px">
                                    <asp:Label ID="PhoneLabel" runat="server" ForeColor="#004000" Text='<%# Bind("Phone") %>'
                                        Width="250px"></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 100px; color: #336666;">
                                    电子邮箱:</td>
                                <td style="width: 300px">
                                    <asp:Label ID="EmailLabel" runat="server" ForeColor="#004000" Text='<%# Bind("Email") %>'
                                        Width="250px"></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 100px; color: #336666;">
                                    收货人地址:</td>
                                <td style="width: 300px">
                                    <asp:Label ID="AddressLabel" runat="server" ForeColor="#004000" Text='<%# Bind("Address") %>'
                                        Width="250px"></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 100px; color: #336666;">
                                    邮政编码:</td>
                                <td style="width: 300px">
                                    <asp:Label ID="ZipLabel" runat="server" ForeColor="#004000" Text='<%# Bind("Zip") %>'
                                        Width="250px"></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 100px; color: #336666;">
                                </td>
                                <td style="width: 300px">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="width: 100px; color: #336666">
                                    &nbsp;
                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                                        Text="更新">
                        </asp:LinkButton>
                                    <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                                        Text="取消">
                        </asp:LinkButton></td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        &nbsp;
                    </EditItemTemplate>
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <PagerStyle BackColor="#339966" ForeColor="White" HorizontalAlign="Center" />
                    <InsertItemTemplate>
                        RealName:
                        <asp:TextBox ID="RealNameTextBox" runat="server" Text='<%# Bind("RealName") %>'>
                        </asp:TextBox><br />
                        OrderDate:
                        <asp:TextBox ID="OrderDateTextBox" runat="server" Text='<%# Bind("OrderDate") %>'>
                        </asp:TextBox><br />
                        Status:
                        <asp:CheckBox ID="StatusCheckBox" runat="server" Checked='<%# Bind("Status") %>' /><br />
                        TotalMoney:
                        <asp:TextBox ID="TotalMoneyTextBox" runat="server" Text='<%# Bind("TotalMoney") %>'>
                        </asp:TextBox><br />
                        PayWay:
                        <asp:TextBox ID="PayWayTextBox" runat="server" Text='<%# Bind("PayWay") %>'>
                        </asp:TextBox><br />
                        SendWay:
                        <asp:TextBox ID="SendWayTextBox" runat="server" Text='<%# Bind("SendWay") %>'>
                        </asp:TextBox><br />
                        Phone:
                        <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>'>
                        </asp:TextBox><br />
                        Email:
                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>'>
                        </asp:TextBox><br />
                        Address:
                        <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>'>
                        </asp:TextBox><br />
                        Zip:
                        <asp:TextBox ID="ZipTextBox" runat="server" Text='<%# Bind("Zip") %>'>
                        </asp:TextBox><br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                            Text="插入">
                        </asp:LinkButton>
                        <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                            Text="取消">
                        </asp:LinkButton>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <table style="height: 328px" width="500">
                            <tr>
                                <td align="right" style="width: 150px">
                                    订单号:</td>
                                <td align="right" style="width: 30px">
                                </td>
                                <td style="width: 300px">
                                    <asp:Label ID="OrderIDLabel" runat="server" Text='<%# Eval("OrderID") %>' Width="250px"></asp:Label></td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 150px">
                                    收贷人:</td>
                                <td align="right" style="width: 30px">
                                </td>
                                <td style="width: 300px">
                                    <asp:Label ID="RealNameLabel" runat="server" Text='<%# Bind("RealName") %>' Width="250px"></asp:Label></td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 150px">
                                    创建日期:
                                </td>
                                <td align="right" style="width: 30px">
                                </td>
                                <td style="width: 300px">
                                    <asp:Label ID="OrderDateLabel" runat="server" Text='<%# Bind("OrderDate") %>' Width="250px"></asp:Label></td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 150px">
                                    是否已发送:
                                </td>
                                <td align="right" style="width: 30px">
                                </td>
                                <td style="width: 300px">
                                    <asp:CheckBox ID="StatusCheckBox" runat="server" Checked='<%# Bind("Status") %>'
                                        Enabled="false" /></td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 150px">
                                    总金额:</td>
                                <td align="right" style="width: 30px">
                                </td>
                                <td style="width: 300px">
                                    <asp:Label ID="TotalMoneyLabel" runat="server" Text='<%# Bind("TotalMoney") %>' Width="250px"></asp:Label></td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 150px">
                                    付款方式:</td>
                                <td align="right" style="width: 30px">
                                </td>
                                <td style="width: 300px; height: 23px;">
                                    <asp:Label ID="PayWayLabel" runat="server" Text='<%# Bind("PayWay") %>' Width="250px"></asp:Label></td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 150px">
                                    送贷方式:</td>
                                <td align="right" style="width: 30px">
                                </td>
                                <td style="width: 300px">
                                    <asp:Label ID="SendWayLabel" runat="server" Text='<%# Bind("SendWay") %>' Width="250px"></asp:Label></td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 150px">
                                    联系电话:</td>
                                <td align="right" style="width: 30px">
                                </td>
                                <td style="width: 300px">
                                    <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' Width="250px"></asp:Label></td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 150px">
                                    电子邮箱:</td>
                                <td align="right" style="width: 30px">
                                </td>
                                <td style="width: 300px">
                                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' Width="250px"></asp:Label></td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 150px">
                                    收货人地址:</td>
                                <td align="right" style="width: 30px">
                                </td>
                                <td style="width: 300px">
                                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' Width="250px"></asp:Label></td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 150px">
                                    邮政编码:</td>
                                <td align="right" style="width: 30px">
                                </td>
                                <td style="width: 300px">
                                    <asp:Label ID="ZipLabel" runat="server" Text='<%# Bind("Zip") %>' Width="250px"></asp:Label></td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 150px">
                                </td>
                                <td align="right" style="width: 30px">
                                </td>
                                <td style="width: 300px">
                                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                                        Text="编辑"></asp:LinkButton>
                                    &nbsp; &nbsp;
                                    <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"
                                        OnClientClick='return confirm("确定删除吗？")_' Text="删除"></asp:LinkButton></td>
                            </tr>
                         
                        </table>
                       
                        <br />
                    </ItemTemplate>
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                </asp:FormView>
</div>
</asp:Content>


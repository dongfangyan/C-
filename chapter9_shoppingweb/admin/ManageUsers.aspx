<%@ Page Title="" Language="C#" MasterPageFile="~/Master/siteAdmin.master" AutoEventWireup="true" CodeFile="ManageUsers.aspx.cs" Inherits="admin_ManageUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
                    ConnectionString="<%$ ConnectionStrings:ShoppingWebDBConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [UserID] = @original_UserID AND [UserName] = @original_UserName AND [PassWord] = @original_PassWord AND [RealName] = @original_RealName AND [Sex] = @original_Sex AND [Phone] = @original_Phone AND [Email] = @original_Email AND [Address] = @original_Address AND [Zip] = @original_Zip"
                    InsertCommand="INSERT INTO [Users] ([UserName], [PassWord], [RealName], [Sex], [Phone], [Email], [Address], [Zip]) VALUES (@UserName, @PassWord, @RealName, @Sex, @Phone, @Email, @Address, @Zip)"
                    OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Users]"
                    UpdateCommand="UPDATE [Users] SET [UserName] = @UserName, [PassWord] = @PassWord, [RealName] = @RealName, [Sex] = @Sex, [Phone] = @Phone, [Email] = @Email, [Address] = @Address, [Zip] = @Zip WHERE [UserID] = @original_UserID ">
                    <DeleteParameters>
                        <asp:Parameter Name="original_UserID" Type="Int32" />
                        <asp:Parameter Name="original_UserName" Type="String" />
                        <asp:Parameter Name="original_PassWord" Type="String" />
                        <asp:Parameter Name="original_RealName" Type="String" />
                        <asp:Parameter Name="original_Sex" Type="String" />
                        <asp:Parameter Name="original_Phone" Type="String" />
                        <asp:Parameter Name="original_Email" Type="String" />
                        <asp:Parameter Name="original_Address" Type="String" />
                        <asp:Parameter Name="original_Zip" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="PassWord" Type="String" />
                        <asp:Parameter Name="RealName" Type="String" />
                        <asp:Parameter Name="Sex" Type="String" />
                        <asp:Parameter Name="Phone" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Zip" Type="String" />
                        <asp:Parameter Name="original_UserID" Type="Int32" />
                        <asp:Parameter Name="original_UserName" Type="String" />
                        <asp:Parameter Name="original_PassWord" Type="String" />
                        <asp:Parameter Name="original_RealName" Type="String" />
                        <asp:Parameter Name="original_Sex" Type="String" />
                        <asp:Parameter Name="original_Phone" Type="String" />
                        <asp:Parameter Name="original_Email" Type="String" />
                        <asp:Parameter Name="original_Address" Type="String" />
                        <asp:Parameter Name="original_Zip" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="PassWord" Type="String" />
                        <asp:Parameter Name="RealName" Type="String" />
                        <asp:Parameter Name="Sex" Type="String" />
                        <asp:Parameter Name="Phone" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Zip" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>

    <br />

<asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False"
                    BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px"
                    Caption="用户资料管理" CellPadding="4" DataKeyNames="UserID" DataSourceID="SqlDataSource1"
                    Height="104px" Width="401px">
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <PagerStyle BackColor="#339966" ForeColor="#003399" HorizontalAlign="Left" />
                    <Fields>
                        <asp:BoundField DataField="UserID" HeaderText="用户ID" InsertVisible="False" ReadOnly="True"
                            SortExpression="UserID" />
                        <asp:BoundField DataField="UserName" HeaderText="用户名" SortExpression="UserName" />
                        <asp:BoundField DataField="PassWord" HeaderText="密码" SortExpression="PassWord" />
                        <asp:BoundField DataField="RealName" HeaderText="真实姓名" SortExpression="RealName" />
                        <asp:BoundField DataField="Sex" HeaderText="性别" SortExpression="Sex" />
                        <asp:BoundField DataField="Phone" HeaderText="联系电话" SortExpression="Phone" />
                        <asp:BoundField DataField="Email" HeaderText="邮箱" SortExpression="Email" />
                        <asp:BoundField DataField="Address" HeaderText="联系地址" SortExpression="Address" />
                        <asp:BoundField DataField="Zip" HeaderText="邮政编码" SortExpression="Zip" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    </Fields>
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                </asp:DetailsView>
                </div>
</asp:Content>


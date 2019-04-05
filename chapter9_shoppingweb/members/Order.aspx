<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Sitemember.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="members_Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">

    <style type="text/css">
       
        .main
       {  width: 950px;
           margin: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    <div style="line-height: 28px">
 <asp:Label ID="lblmessage" runat="server" Font-Size="Medium" ForeColor="Green" Width="680px"></asp:Label>
  <asp:Label ID="lblusername" runat="server" ForeColor="Navy" Width="56px"></asp:Label>
    <br />
 <asp:Label ID="lbllist" runat="server" ForeColor="#339933" Text="您好!您本次的购物清单如下:" 
        Width="256px" Font-Bold="True"></asp:Label>
 
</div>

<div class ="main ">
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingWebDBConnectionString %>"
                    SelectCommand="SELECT [ProductID], [ProductName], [Num], [Price], [TotalMoney] FROM [TempOrderInfo] WHERE ([UserName] = @UserName)">
                    <SelectParameters>
                        <asp:SessionParameter Name="UserName" SessionField="UserName" Type="String" />
                    </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                    BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ProductID"
                    DataSourceID="SqlDataSource1" Height="144px" Width="900px">
                    <Columns>
                        <asp:BoundField DataField="ProductID" HeaderText="商品编号" ReadOnly="True" SortExpression="ProductID" />
                        <asp:BoundField DataField="ProductName" HeaderText="商品名称" SortExpression="ProductName" />
                        <asp:BoundField DataField="Price" HeaderText="商品单价" SortExpression="Price" />
                        <asp:BoundField DataField="Num" HeaderText="商品数量" SortExpression="Num" />
                        <asp:BoundField DataField="TotalMoney" HeaderText="总额" SortExpression="TotalMoney" />
                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            </asp:GridView>
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/total.jpg" />
             <asp:Label ID="lblmoney" runat="server" Width="200px"></asp:Label>
          <br />
          <br />
</div>

<div class ="main " style="line-height: 28px">

<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues"
                    ConnectionString="<%$ ConnectionStrings:ShoppingWebDBConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [UserID] = @original_UserID AND [RealName] = @original_RealName AND [Phone] = @original_Phone AND [Email] = @original_Email AND [Address] = @original_Address AND [Zip] = @original_Zip"
                    InsertCommand="INSERT INTO [Users] ([RealName], [Phone], [Email], [Address], [Zip]) VALUES (@RealName, @Phone, @Email, @Address, @Zip)"
                    OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [UserID], [RealName], [Phone], [Email], [Address], [Zip] FROM [Users] WHERE ([UserName] = @UserName)"
                    UpdateCommand="UPDATE [Users] SET [RealName] = @RealName, [Phone] = @Phone, [Email] = @Email, [Address] = @Address, [Zip] = @Zip WHERE [UserID] = @original_UserID ">
                    <SelectParameters>
                        <asp:SessionParameter Name="UserName" SessionField="UserName" Type="String" />
                    </SelectParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="original_UserID" Type="Int32" />
                        <asp:Parameter Name="original_RealName" Type="String" />
                        <asp:Parameter Name="original_Phone" Type="String" />
                        <asp:Parameter Name="original_Email" Type="String" />
                        <asp:Parameter Name="original_Address" Type="String" />
                        <asp:Parameter Name="original_Zip" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="RealName" Type="String" />
                        <asp:Parameter Name="Phone" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Zip" Type="String" />
                        <asp:Parameter Name="original_UserID" Type="Int32" />
                        <asp:Parameter Name="original_RealName" Type="String" />
                        <asp:Parameter Name="original_Phone" Type="String" />
                        <asp:Parameter Name="original_Email" Type="String" />
                        <asp:Parameter Name="original_Address" Type="String" />
                        <asp:Parameter Name="original_Zip" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="RealName" Type="String" />
                        <asp:Parameter Name="Phone" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Zip" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
    <br />
 <asp:Label ID="lbluserinfo" runat="server" ForeColor="Green" Text="请您仔细填写以下收货人的信息，以便所购买的商品能够及时送到。"
                    Width="512px" Font-Bold="True"></asp:Label>

                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White"
                    BorderColor="#CC9966" BorderWidth="1px" CellPadding="4" DataKeyNames="UserID" DataSourceID="SqlDataSource2" Height="64px" Width="680px" BorderStyle="None">
                    <Fields>
                        <asp:BoundField DataField="UserID" HeaderText="用户编号" InsertVisible="False" ReadOnly="True"
                            SortExpression="UserID" />
                        <asp:BoundField DataField="RealName" HeaderText="用户名" SortExpression="RealName" />
                        <asp:BoundField DataField="Phone" HeaderText="联系电话" SortExpression="Phone" />
                        <asp:BoundField DataField="Email" HeaderText="电子邮箱" SortExpression="Email" />
                        <asp:BoundField DataField="Address" HeaderText="收贷地址" SortExpression="Address" />
                        <asp:BoundField DataField="Zip" HeaderText="邮政编码" SortExpression="Zip" />
                        <asp:CommandField EditText="修改信息" HeaderText="修改信息" ShowEditButton="True">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:CommandField>
                    </Fields>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <EditRowStyle BackColor="#FFCC66" ForeColor="#663399" Font-Bold="True" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                </asp:DetailsView>

    <br />
   <asp:Label ID="lblpay" runat="server" ForeColor="#3366CC" Text="付款方式:" 
                    Width="88px" Font-Bold="True"></asp:Label>
                     <asp:DropDownList ID="DropDownList1" runat="server" Width="112px">
                    <asp:ListItem>中国农业银行</asp:ListItem>
                    <asp:ListItem>中国工商银行</asp:ListItem>
                    <asp:ListItem>中国建设银行</asp:ListItem>
                    <asp:ListItem>招商银行</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:Label ID="lblsend" runat="server" ForeColor="#3366CC" Text="送贷方式:" 
                    Width="88px" Font-Bold="True"></asp:Label>
                      <asp:DropDownList ID="DropDownList2" runat="server" Height="25px" Width="112px">
                    <asp:ListItem>送贷上门</asp:ListItem>
                    <asp:ListItem>邮寄</asp:ListItem>
                </asp:DropDownList>
                <br />
                </div>

<div style="line-height: 28px" align="center">
                 <br />
                 <asp:Button ID="btnsubmit" runat="server" BackColor="White" ForeColor="#339933" Height="20px"
                    Text="提 交" Width="61px" BorderColor="#339966" BorderStyle="Solid" 
                    BorderWidth="1px" Font-Bold="True" onclick="btnsubmit_Click" />
                &nbsp;
                <asp:Button ID="btnupdatepay" runat="server" BackColor="White" ForeColor="#339933"
                    Height="19px" Text="修 改" Visible="False" Width="48px" 
                    BorderColor="#339966" BorderStyle="Solid" BorderWidth="1px" 
                     Font-Bold="True" onclick="btnupdatepay_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
<asp:HyperLink ID="Hypreturn" runat="server" ImageUrl="~/images/返回首页.jpg" NavigateUrl="~/Default.aspx"
                    Width="56px"></asp:HyperLink>
                 <br />
</div>


      
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Sitemember.master" AutoEventWireup="true" CodeFile="OrderDetail.aspx.cs" Inherits="members_OrderDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div style="line-height: 28px">
   <asp:Label ID="lblorderlist" runat="server" ForeColor="#339933" Text="您的历史订单列表如下："
                                Width="320px" Font-Bold="True"></asp:Label>
    <br />
</div>
<div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#FFC080"
                    DataKeyNames="ID" DataSourceID="SqlDataSource1" Height="144px" 
        Width="900px">
                    <Columns>
                        <asp:BoundField DataField="OrderID" HeaderText="订单号" SortExpression="OrderID" />
                        <asp:BoundField DataField="OrderDate" HeaderText="订单日期" 
                            DataFormatString="{0:d}" HtmlEncode="False" />
                        <asp:BoundField DataField="ProductName" HeaderText="商品名称" SortExpression="ProductName" />
                        <asp:BoundField DataField="ProductTypeName" HeaderText="商品种类名称" SortExpression="ProductTypeName" />
                        <asp:BoundField DataField="Num" HeaderText="商品数量" SortExpression="Num" />
                        <asp:BoundField DataField="Price" HeaderText="商品单价" SortExpression="Price" />
                        <asp:BoundField DataField="TotalMoney" HeaderText="商品总额" SortExpression="TotalMoney" />
                    </Columns>
                    <HeaderStyle BackColor="#CCCCCC" Height="35px" />
                    <RowStyle BackColor="#F0F0F0" Height="30px" />
   </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
                    
        ConnectionString="<%$ ConnectionStrings:ShoppingWebDBConnectionString %>"
                    OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT od.[ID], od.[OrderID], od.[ProductID], od.[ProductName], od.[ProductTypeName], od.[Num], od.[Price], od.[TotalMoney],oi.[OrderDate] FROM [OrderDetail] od inner join [OrderInfo] oi on od.[OrderID]=oi.[OrderID] WHERE (od.[UserName] = @UserName) Order By oi.[OrderDate] Desc">
                    <SelectParameters>
                        <asp:SessionParameter Name="UserName" SessionField="UserName" Type="String" />
                    </SelectParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="original_ID" Type="Int32" />
                        <asp:Parameter Name="original_OrderID" Type="Int32" />
                        <asp:Parameter Name="original_ProductID" Type="String" />
                        <asp:Parameter Name="original_ProductName" Type="String" />
                        <asp:Parameter Name="original_ProductTypeName" Type="String" />
                        <asp:Parameter Name="original_Num" Type="Int32" />
                        <asp:Parameter Name="original_Price" Type="Decimal" />
                        <asp:Parameter Name="original_TotalMoney" Type="Decimal" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="OrderID" Type="Int32" />
                        <asp:Parameter Name="ProductID" Type="String" />
                        <asp:Parameter Name="ProductName" Type="String" />
                        <asp:Parameter Name="ProductTypeName" Type="String" />
                        <asp:Parameter Name="Num" Type="Int32" />
                        <asp:Parameter Name="Price" Type="Decimal" />
                        <asp:Parameter Name="TotalMoney" Type="Decimal" />
                        <asp:Parameter Name="original_ID" Type="Int32" />
                        <asp:Parameter Name="original_OrderID" Type="Int32" />
                        <asp:Parameter Name="original_ProductID" Type="String" />
                        <asp:Parameter Name="original_ProductName" Type="String" />
                        <asp:Parameter Name="original_ProductTypeName" Type="String" />
                        <asp:Parameter Name="original_Num" Type="Int32" />
                        <asp:Parameter Name="original_Price" Type="Decimal" />
                        <asp:Parameter Name="original_TotalMoney" Type="Decimal" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="OrderID" Type="Int32" />
                        <asp:Parameter Name="ProductID" Type="String" />
                        <asp:Parameter Name="ProductName" Type="String" />
                        <asp:Parameter Name="ProductTypeName" Type="String" />
                        <asp:Parameter Name="Num" Type="Int32" />
                        <asp:Parameter Name="Price" Type="Decimal" />
                        <asp:Parameter Name="TotalMoney" Type="Decimal" />
                    </InsertParameters>
                </asp:SqlDataSource>


</div>
 
</asp:Content>


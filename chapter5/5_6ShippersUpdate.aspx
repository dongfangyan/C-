<%@ Page Language="C#" AutoEventWireup="true" CodeFile="5_6ShippersUpdate.aspx.cs" Inherits="_5_6ShippersUpdate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
            ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" DeleteCommand="DELETE FROM [Shippers] WHERE [ShipperID] = @original_ShipperID AND [CompanyName] = @original_CompanyName AND [Phone] = @original_Phone"
            InsertCommand="INSERT INTO [Shippers] ([CompanyName], [Phone]) VALUES (@CompanyName, @Phone)"
            OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Shippers]"
            UpdateCommand="UPDATE [Shippers] SET [CompanyName] = @CompanyName, [Phone] = @Phone WHERE [ShipperID] = @original_ShipperID AND [CompanyName] = @original_CompanyName AND [Phone] = @original_Phone">
            <DeleteParameters>
                <asp:Parameter Name="original_ShipperID" Type="Int32" />
                <asp:Parameter Name="original_CompanyName" Type="String" />
                <asp:Parameter Name="original_Phone" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="CompanyName" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="original_ShipperID" Type="Int32" />
                <asp:Parameter Name="original_CompanyName" Type="String" />
                <asp:Parameter Name="original_Phone" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="CompanyName" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    
  
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            CellPadding="4" DataKeyNames="ShipperID" DataSourceID="SqlDataSource1" ForeColor="#333333"
            GridLines="None">
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ShipperID" HeaderText="ShipperID" InsertVisible="False"
                    ReadOnly="True" SortExpression="ShipperID" />
                <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            </Columns>
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
    
  
    </div>
    </form>
</body>
</html>

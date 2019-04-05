<%@ Page Language="C#" AutoEventWireup="true" CodeFile="5_7ShippersInsert.aspx.cs" Inherits="_5_7ShippersInsert" %>

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
    
 
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" BackColor="White"
            BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1"
            Height="50px" Width="184px">
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <Fields>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        </asp:DetailsView>
    </div>
    </form>
</body>
</html>

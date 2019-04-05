<%@ Page Language="C#" AutoEventWireup="true" CodeFile="5_11DataSet.aspx.cs" Inherits="_5_11DataSet" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:Label ID="Label1" runat="server" Text="客户姓名："></asp:Label>
        <asp:DropDownList ID="customerlist" runat="server" AutoPostBack="True" 
            Width="208px" onselectedindexchanged="customerlist_SelectedIndexChanged">
        </asp:DropDownList><br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="订单编号："></asp:Label>&nbsp;<asp:DropDownList
            ID="orderlist" runat="server" Width="207px">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="chkproduct" runat="server" Text="查看订单产品　" 
            onclick="chkproduct_Click" />
        <asp:Button ID="chkorder" runat="server" Text="订单详细资料　" 
            onclick="chkorder_Click" /><br />
        <br />
        &nbsp; &nbsp;
        <br />
        <br />
        <asp:GridView ID="productgridview" runat="server" Caption="订单产品">
        </asp:GridView>
        <br />
    
   
        <asp:GridView ID="ordergridview" runat="server" Caption="订单详细资料">
        </asp:GridView>
    </div>
    </form>
</body>
</html>

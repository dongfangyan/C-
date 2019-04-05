<%@ Page Language="C#" AutoEventWireup="true" CodeFile="5_13SearchProduct.aspx.cs" Inherits="_5_13SearchProduct" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   
   <div>
   　  <asp:Label ID="lblproduct" runat="server" Text="请输入要查找的产品名"></asp:Label>
       <asp:TextBox ID="txtproductname" runat="server" style="width: 148px"></asp:TextBox>
      <asp:Button ID="butsearch" runat="server" onclick="butsearch_Click" Text="查找" />
       <br />
       <br />
       <asp:Table ID="tabresult" runat="server" BorderStyle="Solid" BorderWidth="1px" 
 GridLines="Both">
      </asp:Table>
   

    </div>
    </form>
</body>
</html>

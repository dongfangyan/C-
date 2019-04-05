<%@ Page Language="C#" AutoEventWireup="true" CodeFile="5_17ShowLinqDataSource.aspx.cs" Inherits="_5_17ShowLinqDataSource" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label ID="lblsearch" runat="server" AssociatedControlID="txtsearch" 
            Text="输入客户名："></asp:Label>
&nbsp;
<asp:TextBox ID="txtsearch" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btnsearch" runat="server" Text="查找" />

    </div>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
        ContextTypeName="linqDataClassesDataContext" EntityTypeName="" 
        Select="new (OrderID, CustomerID)" TableName="Orders" 
        Where="CustomerID == @CustomerID">
        <WhereParameters>
            <asp:ControlParameter ControlID="txtsearch" Name="CustomerID" 
                PropertyName="Text" Type="String" />
        </WhereParameters>
    </asp:LinqDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="LinqDataSource1">
        <Columns>
           <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
            <asp:BoundField DataField="OrderID" HeaderText="OrderID" ReadOnly="True" SortExpression="OrderID" />
         </Columns>
 </asp:GridView>

    </form>
</body>
</html>

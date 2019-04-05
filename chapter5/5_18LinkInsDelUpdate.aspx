<%@ Page Language="C#" AutoEventWireup="true" CodeFile="5_18LinkInsDelUpdate.aspx.cs" Inherits="_5_18LinkInsDelUpdate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
            ContextTypeName="linqDataClassesDataContext" EnableDelete="True" 
            EnableInsert="True" EnableUpdate="True" EntityTypeName="" OrderBy="CategoryID"  TableName="Categories">
 </asp:LinqDataSource>
<asp:GridView ID="editGridView" runat="server" AllowPaging="True" 
     AutoGenerateColumns="False" DataSourceID="LinqDataSource1" PageSize="5" 
      DataKeyNames="CategoryID">
       <Columns>
           <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" ReadOnly="True" SortExpression="CategoryID" />
             <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" 
SortExpression="CategoryName" />
             <asp:BoundField DataField="Description" HeaderText="Description" 
SortExpression="Description" />
      </Columns>
</asp:GridView>
<asp:DetailsView ID="detailsviewInsert" runat="server" 
      AutoGenerateInsertButton="True" AutoGenerateRows="False" 
      DataSourceID="LinqDataSource1" DefaultMode="Insert" Height="50px" 
      oniteminserted="detailsviewInsert_ItemInserted" Width="248px">
      <Fields>
          <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" ReadOnly="True" 
  SortExpression="CategoryID" />
            <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" 
  ReadOnly="True" SortExpression="CategoryName" />
              <asp:BoundField DataField="Description" HeaderText="Description" 
  ReadOnly="True" SortExpression="Description" />
            </Fields>
        </asp:DetailsView>

    </div>
    </form>
</body>
</html>

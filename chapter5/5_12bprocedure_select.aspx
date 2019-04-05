<%@ Page Language="C#" AutoEventWireup="true" CodeFile="5_12bprocedure_select.aspx.cs" Inherits="_5_12bprocedure_select" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label ID="employeeidlab" runat="server" Text="选择雇员ID："></asp:Label><asp:DropDownList
            ID="employeelist" runat="server" AutoPostBack="True" Width="89px" 
            onselectedindexchanged="employeelist_SelectedIndexChanged1">
        </asp:DropDownList><br />
        <br />
        <asp:GridView ID="employeegridview" runat="server" Caption="雇员姓名" Width="246px">
        </asp:GridView>
    </div>
    </form>
</body>
</html>

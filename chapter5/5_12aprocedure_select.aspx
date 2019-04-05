<%@ Page Language="C#" AutoEventWireup="true" CodeFile="5_12aprocedure_select.aspx.cs" Inherits="_5_12aprocedure_select" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <br />
        <br />
        <asp:Label ID="employeeidlab" runat="server" Text="选择雇员ID："></asp:Label>&nbsp; &nbsp;<asp:DropDownList
            ID="employeelist" runat="server" AutoPostBack="True" Width="89px" 
            onselectedindexchanged="employeelist_SelectedIndexChanged1">
        </asp:DropDownList><br />
        <br />
        &nbsp;<br />
        <br />
        <asp:Label ID="lblmessage" runat="server" Width="210px"></asp:Label>
    </div>
    </form>
</body>
</html>

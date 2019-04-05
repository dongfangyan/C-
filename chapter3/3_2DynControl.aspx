<%@ Page Language="C#" AutoEventWireup="true" CodeFile="3_2DynControl.aspx.cs" Inherits="_3_2DynControl" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        
        <asp:Button ID="btnAdd" runat="server" onclick="btnAdd_Click1" 
            Text="增加Label控件" />
        <br />
        <br />
        <asp:Button ID="btnDel" runat="server" Text="删除Label控件" />
    
        
    </div>
    </form>
</body>
</html>

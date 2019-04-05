<%@ Page Language="C#" AutoEventWireup="true" CodeFile="4_1ButtonClick_b.aspx.cs" Inherits="_4_1ButtonClick_b" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>统计按钮单击次数</title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
        }
        .style2
        {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <strong><span class="style2">统计按钮的单击次数</span><br />
        </strong>
        <hr />
    
    </div>
    <asp:Button ID="btnClick" runat="server" Height="40px" onclick="btnClick_Click" 
        Text="请单击这里！" Width="124px" />
    <br />
    <br />
    <asp:Label ID="lblShow" runat="server"></asp:Label>
    <br />
    <br />
    <asp:HiddenField ID="hfdCount" runat="server" />
    </form>
</body>
</html>

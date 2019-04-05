<%@ Page Language="C#" AutoEventWireup="true" CodeFile="3_8SelectCourses.aspx.cs" Inherits="_3_8SelectCourse" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>选修课登记</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lbldep" runat="server" Text="请选择系别：" style="z-index: 100; left: 20px; position: absolute; top: 23px"></asp:Label>
        <asp:DropDownList ID="dropDept" runat="server" 
            style="z-index: 101; left: 138px; position: absolute; top: 17px" 
            AutoPostBack="True" onselectedindexchanged="dropDept_SelectedIndexChanged">
        </asp:DropDownList><br />
        <br />
        <asp:Label ID="lblchoice" runat="server" style="z-index: 102; left: 25px; position: absolute; top: 50px"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Label ID="lblchoiceinfo" runat="server" Text="你所选择的选修课：" style="z-index: 103; left: 249px; position: absolute; top: 50px"></asp:Label><br />
        <asp:ListBox ID="lstCourses" runat="server" style="z-index: 104; left: 19px; position: absolute; top: 83px" Height="136px" SelectionMode="Multiple" Width="115px"></asp:ListBox>
        &nbsp; &nbsp; &nbsp;<asp:Button ID="btnalltoright" runat="server" Text=">>" 
            style="z-index: 105; left: 165px; position: absolute; top: 122px" Height="24px" 
            Width="59px" onclick="btnalltoright_Click" />
        <asp:Button ID="btnlefttoright" runat="server" Text=">" 
            
            style="z-index: 106; left: 165px; position: absolute; top: 87px; bottom: 208px;" Height="24px" 
            Width="59px" onclick="btnlefttoright_Click" />
        &nbsp; &nbsp; &nbsp;&nbsp; 
        <asp:ListBox ID="lstSelectedCourses" runat="server" style="z-index: 107; left: 247px; position: absolute; top: 83px" Height="136px" SelectionMode="Multiple" Width="115px"></asp:ListBox>
        &nbsp; &nbsp; &nbsp; &nbsp;<br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="btnrighttoleft" runat="server" Height="24px" Style="z-index: 108; left: 165px;
            position: absolute; top: 157px; bottom: 138px;" Text="<" Width="59px" 
            onclick="btnrighttoleft_Click" />
        <asp:Button ID="btnalltoleft" runat="server" Style="z-index: 110; left: 165px; position: absolute;
            top: 222px" Text="<<" Width="59px" onclick="btnalltoleft_Click" />
    </div>
    </form>
</body>
</html>

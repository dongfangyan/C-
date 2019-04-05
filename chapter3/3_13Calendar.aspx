<%@ Page Language="C#" AutoEventWireup="true" CodeFile="3_13Calendar.aspx.cs" Inherits="_3_13Calendar" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>日历控件应用</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <asp:Label ID="Label1" runat="server" Text="请输入你的出生日期："></asp:Label>
        <asp:TextBox ID="txtDate" runat="server" Width="98px" ></asp:TextBox>
        <asp:ImageButton ID="ibtnDisplay" runat="server" 
            ImageUrl="~/image/Calendar_scheduleHS.png" Width="34px" Height="22px" 
            onclick="ibtnDisplay_Click" />
        <br />
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
            BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" 
            Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" 
            SelectedDate="2009-04-11" Visible="False" VisibleDate="2009-04-11" 
            Width="330px" onselectionchanged="Calendar1_SelectionChanged">
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TodayDayStyle BackColor="#999999" ForeColor="White" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <DayStyle BackColor="#CCCCCC" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
            <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt"
                ForeColor="White" Height="12pt" />
        </asp:Calendar>
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
    </form>
</body>
</html>


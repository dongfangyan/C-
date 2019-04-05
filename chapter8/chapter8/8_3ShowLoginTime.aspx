<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="8_3ShowLoginTime.aspx.cs" Inherits="chapter8._8_3ShowLoginTime" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Timer控件应用</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <asp:ScriptManager ID="ScriptManager1" runat="server" ></asp:ScriptManager>
       <asp:UpdatePanel ID="UpdatePane1" runat="server"  UpdateMode="Conditional">
           <ContentTemplate>
               <asp:Timer ID="Timer1" runat="server" Enabled="true" Interval="1000" 
                   ontick="Timer1_Tick" />
               <asp:Label ID="lblShowTime" runat="server" />
               <asp:Label ID ="lblNow" runat ="server" />
           </ContentTemplate>
           <Triggers>
              <asp:AsyncPostBackTrigger ControlID="Timer1" />
           </Triggers>
       </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>


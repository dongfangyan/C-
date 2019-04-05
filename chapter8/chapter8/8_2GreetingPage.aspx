<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="8_2GreetingPage.aspx.cs" Inherits="chapter8._8_2GreetingPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>UpdatePanel控件应用</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <asp:ScriptManager ID="ScriptManager1" runat="server" ></asp:ScriptManager>
      <asp:UpdatePanel ID="updatepanel_Name" runat="server"   UpdateMode="Conditional">
         <ContentTemplate>
            请输入您的姓名：<asp:TextBox ID="txtName" runat="server" ></asp:TextBox>
            <asp:Button ID="btnUpdateName" runat="server" Text="显示姓名" 
                 onclick="btnUpdateName_Click" /><br />
            <asp:Label ID="lblShowName" runat="server" />
         </ContentTemplate>
       </asp:UpdatePanel>

       <asp:UpdatePanel ID="updatepanel_Time" runat="server"  UpdateMode="Always">
          <ContentTemplate>
            <asp:Button ID="btnUpdateTime" runat="server" Text="显示时间" 
                  onclick="btnUpdateTime_Click" /><br />
            <asp:Label ID="lblShowTime" runat="server" />
          </ContentTemplate>
       </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>


<%@ Page Language="C#" AutoEventWireup="true" CodeFile="3_10FileUpload.aspx.cs" Inherits="_3_10FileUpload" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>文件上传</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <asp:Button ID="btnSave" runat="server" Text="上传" onclick="btnSave_Click" />
        <br />
        <asp:Label ID="lblMessage" runat="server"></asp:Label><br />
        <asp:TextBox ID="txtFileContent" runat="server" ReadOnly="True" TextMode="MultiLine"
            Visible="False"></asp:TextBox>
    </div>
    </form>
</body>
</html>


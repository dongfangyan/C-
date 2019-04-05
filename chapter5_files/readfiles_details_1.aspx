<%@ Page Language="C#" AutoEventWireup="true" CodeFile="readfiles_details_1.aspx.cs" Inherits="readfiles_details_1" %>

<%@ Register assembly="CuteEditor" namespace="CuteEditor" tagprefix="CE" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/Site.css" rel="Stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" style="margin: auto; width: 800px">
    
        <br />
        <div>
            <asp:Label ID="lblfilename" runat="server" CssClass="editorstyle"></asp:Label>
        </div>
        <br />
        <div>
        <asp:Label ID="lblsource" runat="server" Font-Size="Small"></asp:Label></div>
        <br />
        <div>
        <CE:Editor ID="Editor_filecontent" runat="server" BorderStyle="NotSet" 
            BorderWidth="0px" ShowBottomBar="False" ShowCodeViewToolBar="False" 
            ShowDecreaseButton="False" ShowEnlargeButton="False" ShowGroupMenuImage="False" 
            ShowHtmlMode="False" ShowPreviewMode="False" ShowTagSelector="False" 
            ShowToolBar="False" ToggleBorder="False" BackColor="" BorderColor="" 
            Focus="True" Height="1200px" Width="800px">
<FrameStyle BorderColor="White" BorderWidth="0px" Height="100%" Width="100%" 
                BorderStyle="None"></FrameStyle>
        </CE:Editor>
    </div>
    </div>
    </form>
</body>
</html>

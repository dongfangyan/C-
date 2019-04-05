<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Getpwd.aspx.cs" Inherits="Getpwd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    <asp:SiteMapPath ID="SiteMapPath1" runat="server">
                    </asp:SiteMapPath>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" BackColor="#F7F6F3" 
                        BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" 
                        Font-Names="Verdana" Font-Size="0.8em">
                        <SubmitButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
                            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                            ForeColor="#284775" />
                        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                        <SuccessTextStyle Font-Bold="True" ForeColor="#5D7B9D" />
                        <TextBoxStyle Font-Size="0.8em" />
                        <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" 
                            ForeColor="White" />
                    </asp:PasswordRecovery>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

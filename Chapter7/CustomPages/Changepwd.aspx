<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Changepwd.aspx.cs" Inherits="CustomPages_Changepwd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 14px;
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
                    <asp:ChangePassword ID="ChangePassword1" runat="server" BackColor="#F7F6F3" 
                        BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" 
                        DisplayUserName="True" Font-Names="Verdana" Font-Size="0.8em" 
                        ContinueDestinationPageUrl="~/Index.aspx">
                        <CancelButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
                            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                            ForeColor="#284775" />
                        <ChangePasswordButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
                            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                            ForeColor="#284775" />
                        <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
                            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                            ForeColor="#284775" />
                        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                        <PasswordHintStyle Font-Italic="True" ForeColor="#888888" />
                        <SuccessTemplate>
                            <table cellpadding="4" cellspacing="0" style="border-collapse:collapse;">
                                <tr>
                                    <td>
                                        <table cellpadding="0">
                                            <tr>
                                                <td align="center" colspan="2" 
                                                    style="color:White;background-color:#5D7B9D;font-size:0.9em;font-weight:bold;">
                                                    密码更改完成</td>
                                            </tr>
                                            <tr>
                                                <td class="style2">
                                                    <asp:LoginName ID="LoginName1" runat="server" />，
                                                    您的密码已更改!</td>
                                            </tr>
                                            <tr>
                                                <td align="right" colspan="2">
                                                    <asp:Button ID="ContinuePushButton" runat="server" BackColor="#FFFBFF" 
                                                        BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" 
                                                        CausesValidation="False" CommandName="Continue" Font-Names="Verdana" 
                                                        Font-Size="0.8em" ForeColor="#284775" Text="继续" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </SuccessTemplate>
                        <TextBoxStyle Font-Size="0.8em" />
                        <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" 
                            ForeColor="White" />
                    </asp:ChangePassword>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registeruser.aspx.cs" Inherits="Registeruser" %>

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
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" BackColor="#F7F6F3" 
                        BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="1px" 
                        CompleteSuccessText="恭喜你，用户创建成功，点击继续按钮，将跳转到网站首页！" 
                        ContinueDestinationPageUrl="~/Index.aspx" Font-Names="Verdana" 
                        Font-Size="0.8em" oncreateduser="CreateUserWizard1_CreatedUser">
                        <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
                            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                            ForeColor="#284775" />
                        <CreateUserButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
                            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                            ForeColor="#284775" />
                        <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <WizardSteps>
                            <asp:CreateUserWizardStep runat="server" >
                                <ContentTemplate>
                                    <table style="font-family:Verdana;font-size:100%;">
                                        <tr>
                                            <td align="center" colspan="2" 
                                                style="color:White;background-color:#5D7B9D;font-weight:bold;">
                                                注册新帐户</td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">用户名:</asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                    ControlToValidate="UserName" ErrorMessage="必须填写“用户名”。" ToolTip="必须填写“用户名”。" 
                                                    ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">密码:</asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                                    ControlToValidate="Password" ErrorMessage="必须填写“密码”。" ToolTip="必须填写“密码”。" 
                                                    ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="ConfirmPasswordLabel" runat="server" 
                                                    AssociatedControlID="ConfirmPassword">确认密码:</asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" 
                                                    ControlToValidate="ConfirmPassword" ErrorMessage="必须填写“确认密码”。" 
                                                    ToolTip="必须填写“确认密码”。" ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">电子邮件:</asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" 
                                                    ControlToValidate="Email" ErrorMessage="必须填写“电子邮件”。" ToolTip="必须填写“电子邮件”。" 
                                                    ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">安全提示问题:</asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="Question" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" 
                                                    ControlToValidate="Question" ErrorMessage="必须填写“安全提示问题”。" 
                                                    ToolTip="必须填写“安全提示问题”。" ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">安全答案:</asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" 
                                                    ControlToValidate="Answer" ErrorMessage="必须填写“安全答案”。" ToolTip="必须填写“安全答案”。" 
                                                    ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2">
                                                <asp:CompareValidator ID="PasswordCompare" runat="server" 
                                                    ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                                    Display="Dynamic" ErrorMessage="“密码”和“确认密码”必须匹配。" 
                                                    ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2" style="color:Red;">
                                                <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                            </td>
                                        </tr>
                                    </table>
                                </ContentTemplate>
                            </asp:CreateUserWizardStep>
                            <asp:CompleteWizardStep runat="server" />
                        </WizardSteps>
                        <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" 
                            Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
                        <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
                            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                            ForeColor="#284775" />
                        <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
                        <SideBarStyle BackColor="#5D7B9D" BorderWidth="0px" Font-Size="0.9em" 
                            VerticalAlign="Top" />
                        <StepStyle BorderWidth="0px" />
                    </asp:CreateUserWizard>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

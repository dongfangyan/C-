<%@ Page Language="C#" AutoEventWireup="true" CodeFile="3_16WizardExample.aspx.cs" Inherits="_3_16WizardExample" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>向导控件应用</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="2" HeaderText="向导控件使用介绍"
            Height="50px" Width="235px">
            <WizardSteps>
                <asp:WizardStep ID="WizardStep1" runat="server" StepType="Start" Title="Step 1">
                    这是第一步。</asp:WizardStep>
                <asp:WizardStep ID="WizardStep2" runat="server" StepType="Step" Title="Step 2">
                    这是第二步。</asp:WizardStep>
                <asp:WizardStep ID="WizardStep3" runat="server" StepType="Finish" Title="Step 3">
                    这是最后一步。</asp:WizardStep>
                <asp:WizardStep ID="WizardStep4" runat="server" StepType="Complete" Title="Step 4">
                    谢谢使用向导控件</asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    
    </div>
    </form>
</body>
</html>


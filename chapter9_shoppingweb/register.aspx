<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
             height: 30px;
            width: 120px;
        }
        .style2
        {
            height: 30px;
            width: 180px;
        }
        .style3
        {
            height: 30px;
            width: 300px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div>
  <table style="width: 616px; height: 408px">
        <tr>
            <td class="style1" align="right">
                &nbsp; &nbsp; &nbsp;
                <asp:Label ID="lblusername" runat="server" Text="用户名:" Width="72px"></asp:Label></td>
            <td class="style2" align="left">
                <asp:TextBox ID="txtusername" runat="server" Width="148px"></asp:TextBox></td>
            <td class="style3" align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername"
                    Display="Dynamic" ErrorMessage="没有填写用户名!" Width="176px">请输入用户名!</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
           <td class="style1" align="right">
                &nbsp; &nbsp; &nbsp;
                <asp:Label ID="lblpassword" runat="server" Text="登录密码:" Width="72px"></asp:Label></td>
             <td class="style2" align="left">
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="148px"></asp:TextBox></td>
            <td style="width: 106px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword"
                    Display="Dynamic" ErrorMessage="没有填写密码!" Width="179px">请填写密码!</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtpassword"
                    Display="Dynamic" ErrorMessage="密码太短!" ValidationExpression=".{6,}" Width="180px">密码至少要有六位!</asp:RegularExpressionValidator></td>
        </tr>
        <tr>
           <td class="style1" align="right">
                &nbsp; &nbsp; &nbsp;
                <asp:Label ID="lblconfirmpass" runat="server" Text="确认密码:" Width="72px"></asp:Label></td>
             <td class="style2" align="left">
                <asp:TextBox ID="txtconfirm" runat="server" TextMode="Password" Width="148px"></asp:TextBox></td>
            <td style="width: 106px; height: 26px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtconfirm"
                    Display="Dynamic" ErrorMessage="没有确认密码!" Width="182px">请再填写一次密码!</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword"
                    ControlToValidate="txtconfirm" Display="Dynamic" ErrorMessage="两次输入的密码不一致!" Width="184px">两次输入的密码必须相同!</asp:CompareValidator></td>
        </tr>
         <tr>
          <td class="style1" align="right">
                <asp:Label ID="lblrealname" runat="server" Text="真实姓名:" Width="72px"></asp:Label></td>
              <td class="style2" align="left">
                <asp:TextBox ID="txtrealname" runat="server"></asp:TextBox></td>
            <td class="style3" align="left">
                <asp:Label ID="Label11" runat="server" ForeColor="Red" Text="*"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtrealname"
                    Display="Dynamic" ErrorMessage="没有填写真实姓名" Width="136px">请填写真实姓名!</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
           <td class="style1" align="right">
                <asp:Label ID="lblsex" runat="server" Text="性别:" Width="56px"></asp:Label>
            </td>
            <td class="style2" align="left">
                <asp:RadioButtonList ID="Rlsex" runat="server" RepeatDirection="Horizontal" Width="152px">
                    <asp:ListItem>男</asp:ListItem>
                    <asp:ListItem>女</asp:ListItem>
                </asp:RadioButtonList></td>
            <td class="style3" align="left">
                <asp:Label ID="Label12" runat="server" ForeColor="Red" Text="*"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Rlsex"
                    Display="Dynamic" ErrorMessage="没有选择性别!" Width="198px">请选择性别!</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
           <td class="style1" align="right">
                <asp:Label ID="lblphone" runat="server" Text="电话:" Width="64px"></asp:Label></td>
            <td class="style2" align="left">
                <asp:TextBox ID="txtphone" runat="server"></asp:TextBox></td>
            <td class="style3" align="left">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtphone"
                    ErrorMessage="请填写正确的电话号码" ValidationExpression="(\(\d{3}\)|\d{3}-)?\d{8}">填写电话号码</asp:RegularExpressionValidator></td>
        </tr>
        <tr>
          <td class="style1" align="right">
                <asp:Label ID="lbladdress" runat="server" Text="地址:" Width="64px"></asp:Label></td>
            <td class="style2" align="left">
                <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox></td>
            <td class="style3" align="left">
                <asp:Label ID="Label10" runat="server" ForeColor="Red" Text="*"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtaddress"
                    Display="Dynamic" ErrorMessage="没有填写收贷地址!" Width="168px">请填写收贷地址!</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
           <td class="style1" align="right">
                <asp:Label ID="lblzipcode" runat="server" Text="邮编:" Width="64px"></asp:Label></td>
             <td class="style2" align="left">
                <asp:TextBox ID="txtemailcode" runat="server"></asp:TextBox></td>
             <td class="style3" align="left">
                <asp:Label ID="Label13" runat="server" ForeColor="Red" Text="*"></asp:Label>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtemailcode"
                    Display="Dynamic" ErrorMessage="邮政编码格式错误!" ValidationExpression="\d{6}" Width="216px">请以正确格式填写邮政编码!</asp:RegularExpressionValidator></td>
        </tr>
         <tr>
            <td class="style1" align="right">
                &nbsp; &nbsp;
                <asp:Label ID="lblemail" runat="server" Text="邮箱:" Width="40px"></asp:Label></td>
            <td class="style2" align="left">
                <asp:TextBox ID="txtemail" runat="server" Width="148px"></asp:TextBox></td>
            <td class="style3" align="left">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemail"
                    Display="Dynamic" ErrorMessage="邮箱格式不正确!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    Width="239px">请以正确格式输入电子信箱!</asp:RegularExpressionValidator></td>
        </tr>
        <tr>
           <td class="style1" align="right">
                <asp:Label ID="lblproblem" runat="server" Text="密码找回:"></asp:Label></td>
            <td class="style2" align="left">
                <asp:DropDownList ID="dlproblem" runat="server" Width="148px">
                    <asp:ListItem>你的学号是?</asp:ListItem>
                    <asp:ListItem>你父亲的生日是?</asp:ListItem>
                    <asp:ListItem>你母亲的生日是?</asp:ListItem>
                    <asp:ListItem>你最喜欢的电影是?</asp:ListItem>
                    <asp:ListItem>你最爱好的运动是?</asp:ListItem>
                </asp:DropDownList></td>
             <td class="style3" align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="dlproblem"
                    Display="Dynamic" ErrorMessage="没有选择问题!" InitialValue="请选择一个问题!" Width="182px">请选择一个问题!</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
           <td class="style1" align="right">
                &nbsp; &nbsp;<asp:Label ID="lblanswer" runat="server" Text="答案:" Width="40px"></asp:Label></td>
             <td class="style2" align="left">
                <asp:TextBox ID="txtanswer" runat="server" Width="148px"></asp:TextBox></td>
             <td class="style3" align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtanswer"
                    Display="Dynamic" ErrorMessage="没有填写答案!" Width="182px">请填写答案!</asp:RequiredFieldValidator></td>
        </tr>
       
        <tr>
            <td >
            </td>
            <td>
                &nbsp;</td>
            <td >
            </td>
        </tr>
      
        <tr>
            <td class="style1">
            </td>
            <td style="width: 100px">
                <asp:Button ID="btnregister" runat="server" BackColor="#339933" Text="注册" 
                    Width="56px" onclick="btnregister_Click" Font-Bold="True" 
                    ForeColor="White" />
            </td>
            <td style="width: 106px">
            </td>
        </tr>
    </table>

</div>
</asp:Content>


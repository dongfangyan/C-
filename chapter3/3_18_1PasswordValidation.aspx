<%@ Page Language="C#" AutoEventWireup="true" CodeFile="3_18_1PasswordValidation.aspx.cs" Inherits="_3_18_1PasswordValidation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>客户端验证应用</title>
    <script type="text/javascript"  language="javascript" >

        function validatePassword(source, arguments)  //定义客户端验证函数
        {
            var pwd = arguments.Value;          //获取要验证的控件的值，即txtPassword控件的值

            var existUpperLetter = false;       //定义布尔变量，分别表示是否存在大写字母、小写字母、数字、特殊字符
            var existLowerLetter = false;
            var existDigit = false;
            var existOtherChar = false;

            if (pwd.length < 6)               //如果密码长度小于6,设置验证控件验证失败
            {
                arguments.IsValid = false;
                return;
            }
            else {
                for (i = 0; i < pwd.length - 1; i++)        //使用循环，对密码中的字符类型进行判断
                {
                    if (pwd.charCodeAt(i) >= 48 && pwd.charCodeAt(i) <= 57)  //数字
                    {
                        existDigit = true;
                    }
                    else if (pwd.charCodeAt(i) >= 65 && pwd.charCodeAt(i) <= 90)  //大写字母
                    {
                        existUpperLetter = true;
                    }
                    else if (pwd.charCodeAt(i) >= 97 && pwd.charCodeAt(i) <= 122)   //小写字母
                    {
                        existLowerLetter = true;
                    }
                    else                //特殊字符
                    {
                        existOtherChar = true;
                    }
                }
            }
            //根据大写字母、小写字母、数字、特殊字符的存在情况，设置验证控件是否有效
            arguments.IsValid = existDigit && existUpperLetter && existLowerLetter && existOtherChar;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="请输入密码："></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" Width="69px"></asp:TextBox>
        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtPassword"
            Display="Dynamic" ErrorMessage="密码长度大于等于6，且必须包含大小写字母、数字、特殊字符！" 
            ForeColor="Red" ClientValidationFunction="validatePassword" Font-Size="Small"></asp:CustomValidator>
        <asp:Button ID="Button1" runat="server" Text="提交" />
      </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="8_1_2RegisterPage.aspx.cs" Inherits="chapter8._8_1_2RegisterPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>用户注册页面</title>
    <script type="text/javascript">

        function Validation() {
            //获得文本框输入的用户名
            var username = document.getElementById("txtUsername").value;
            //获得Web服务的引用
            var check = chapter8.CheckUserName2;
            //调用Web服务中的方法，检测用户名，第二个参数是回调函数，当服务器响应时，调用回调函数OnMessageBack。
            check.CheckUserName(username, OnMessageBack);

        }

        //回调函数
        function OnMessageBack(result) {
            //将服务器返回的结果在divMessage上显示
            document.getElementById("divMessage").innerHTML = result;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%--定义ScriptManager组件--%>
        <asp:ScriptManager ID="ScriptManager1" runat="server" >
           <Services>
               <%--注册Web服务--%>
               <asp:ServiceReference Path="~/CheckUserName2.asmx" InlineScript="true" />
           </Services>
        </asp:ScriptManager>
        用户名：<input id="txtUsername" type="text"    />
        <input  id="btnCheck" type="button" value="检测用户名" onclick="Validation()" /><br />
        <div id="divMessage"  style="color: #FF0000">
        </div>
    </div>
    </form>
</body>
</html>


<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="8_1_1RegisterPage.aspx.cs" Inherits="chapter8._8_1_1RegisterPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>用户注册页面</title>
    
    <script type="text/javascript">


        var xmlhttp;
        function Validation() {
            if (window.XMLHttpRequest) {// IE7+、 Firefox、 Chrome、 Opera、Safari浏览器
                xmlhttp = new XMLHttpRequest();
            }
            else {//IE6、E5浏览器
                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            }

            var username = document.getElementById("txtUsername");
            xmlhttp.open("GET", "CheckUserName.aspx?UserName=" + username.value, true);
            xmlhttp.onreadystatechange = OnMessageBack;
            xmlhttp.send();
        }

        function OnMessageBack() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                document.getElementById("divMessage").innerHTML = xmlhttp.responseText;
            }
        }


    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       
        用户名：<input id="txtUsername" type="text"    />
        <input  id="btnCheck" type="button" value="检测用户名" onclick="Validation()" /><br />
        <div id="divMessage"  style="color: #FF0000">
        </div>
       
    </div>
    </form>
</body>
</html>


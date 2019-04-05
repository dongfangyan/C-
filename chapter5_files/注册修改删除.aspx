<%@ Page Language="C#" AutoEventWireup="true" CodeFile="注册修改删除.aspx.cs" Inherits="注册修改删除" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/Site.css" rel="Stylesheet" type="text/css" />
    <style type="text/css">
        .style8
        {
            height: 21px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" border="1" cellpadding="0" cellspacing="0" class="bg" 
            width="500">
            <tr>
                <td align="right" height="25" width="200">
                    用户名：</td>
                <td align="left">
                    <asp:TextBox ID="txtusername" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" height="25" width="200">
                    密 码：</td>
                <td align="left">
                    <asp:TextBox ID="txtpassword" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2" height="50" width="200">
                    <asp:Button ID="btnregister" runat="server" Text="注 册" BackColor="#FFFFCC" 
                        BorderColor="#CC9900" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" 
                        ForeColor="#0000CC" onclick="btnregister_Click" />
                </td>
            </tr>
            <tr>
                <td align="right" height="25" width="200">
                                选择用户:</td>
                <td align="left">
                                <asp:DropDownList ID="Dropusername" runat="server" 
                                    DataSourceID="SqlDataSource1" DataTextField="username" DataValueField="userid" 
                                    Width="120px">
                                </asp:DropDownList>
                            </td>
            </tr>
            <tr>
                <td align="right" class="style8" height="25" width="200">
                                重新输入密码:</td>
                <td align="left" class="style8">
                                <asp:TextBox ID="txtrepassword" runat="server"></asp:TextBox>
                            </td>
            </tr>
            <tr>
                <td align="center" colspan="2" height="80" width="200">
                                <asp:Button ID="btnupdate" runat="server" onclick="btnupdate_Click" 
                        Text="更改用户密码" />
                  
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:newsConnectionString %>" 
                        SelectCommand="SELECT * FROM [users]"></asp:SqlDataSource>
                   
                </td>
            </tr>
            <tr>
                <td align="right" width="200">
                                选择要删除的用户：</td>
                <td align="left" height="25">
                    <asp:DropDownList ID="Dropuserid" runat="server" DataSourceID="SqlDataSource1" 
                                    DataTextField="userid" DataValueField="userid">
                                </asp:DropDownList>
                            </td>
            </tr>
            <tr>
                <td align="center" colspan="2" height="50" width="200">
                                <asp:Button ID="btndelete" runat="server" onclick="btndelete_Click" 
                        Text="删除用户" />
                            </td>
            </tr>
        </table>
    
    </div>
    <p>
        编程方式：</p>
    <p>
        1、添加需要访问数据库相关的类库支持： P127</p>
    <p>
        2、配置web.config文件&nbsp; P127</p>
    <p>
        3、获取配置文件中的数据库连接信息public static string constr = 
        ConfigurationManager.ConnectionStrings[&quot;newsConnectionString&quot;].ConnectionString;&nbsp; 
        P132</p>
    <p>
        4、根据所获取的配置文件信息，建立与数据库的联系SqlConnection conn = new SqlConnection(constr);&nbsp; 
        P132</p>
    <p>
        5、打开数据库连接conn.Open();</p>
    <p>
        6、写要操作的数据库语句，注册时语句：string str = &quot;insert into users(username,password) values(&#39;&quot; 
        + txtusername + &quot;&#39;,&#39;&quot; + txtpassword + &quot;&#39;)&quot;;</p>
    <p>
        7、建立执行命令的语句&nbsp; SqlCommand cmd = new SqlCommand(str,conn);//p129
    </p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        cmd.ExecuteNonQuery();//p130</p>
    <p>
        &nbsp;</p>
    </form>
</body>
</html>

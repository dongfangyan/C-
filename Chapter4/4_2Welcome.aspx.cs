using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _4_2Welcome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string username, pswd;

        //使用查询字符串传递页面间的数据
        // username = this.Request.Params["username"];
        // pswd = this.Request.Params["pswd"];
        // username =Server.UrlDecode ( this.Request.Params["username"]);
        // pswd =Server.UrlDecode ( this.Request.Params["pswd"]);

        // 使用会话状态传递页面间的数据
        //  username =this.Session["username"].ToString () ;
        //  pswd = this.Session["pswd"].ToString();

        // 使用跨页提交功能
        // 获取源页（登录页面）的控件值
        TextBox textbox1, textbox2;
        textbox1 = (TextBox)PreviousPage.FindControl("txtUsername");
        textbox2 = (TextBox)PreviousPage.FindControl("txtPassWord");
        username = textbox1.Text;
        pswd = textbox2.Text;

        this.Response.Write(username + "您好！欢迎您访问本网站；您的密码为：" + pswd);  
          

    }
}
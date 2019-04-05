using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _4_2Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        //使用查询字符串传递页面间数据
        //this.Response .Redirect ("~/4_2Welcome.aspx?username=" + 
        //    this.txtUsername .Text   + "&pswd=" + this.txtPassWord.Text  );

        //this.Response .Redirect ("~/4_2Welcome.aspx?username=" + 
        //Server .UrlEncode (this.txtUsername .Text)   + "&pswd=" + Server.UrlEncode( this.txtPassWord.Text));

        //使用会话状态传递页面间数据
        //this.Session["username"] = this.txtUsername.Text;
        //this.Session["pswd"] = this.txtPassWord.Text;
        //this.Response.Redirect("~/4_2Welcome.aspx");

    }
}
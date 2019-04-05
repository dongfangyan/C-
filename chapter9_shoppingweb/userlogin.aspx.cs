using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
       
            login str = new login();
            str.UserName = txtUserName.Text.Trim();
            str.PassWord = txtPassWord.Text.Trim();
            if (str.memberlogin())
            {

                Session["UserName"] = txtUserName.Text.Trim();

                Response.Redirect("~/members/CustomersInfo.aspx");
            }
            else
            {
                loginmessage.Text = "输入的用户名或密码错误！";
                txtUserName.Text = "";
                txtPassWord.Text = "";
            }
      
       
    }
    protected void btncancle_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect(Request.Path);
    }
}
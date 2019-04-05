using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _3_3Login : System.Web.UI.Page
{
   
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text.Trim() == "张三" && txtPassword.Text == "123456")
                lblMessage.Text = "用户名和密码正确！";
            else
                lblMessage.Text = "用户名或密码错误！";
        }

}
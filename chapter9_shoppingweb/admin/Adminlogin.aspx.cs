using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class admin_Adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        login str = new login();
        str.UserName = txtusername.Text.Trim();
        str.PassWord = txtpassword.Text.Trim();
        if (str.adminlogin())
        {
            Session["AdminName"] = txtusername.Text;
            Response.Redirect("~/Admin/AdminDefault.aspx");
        }
        else
        {
            Response.Write("<script>alert('用户名或密码错误！');</script>");
            txtusername.Focus();
            txtpassword.Focus();
        }
    }
    protected void btnbtnlogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/default.aspx");
    }
}
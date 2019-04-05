using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
 
    protected void btnshow_Click1(object sender, EventArgs e)
    {
        lblmessage.Text = txtuser.Text.ToString() + ",欢迎您！";
    }
    protected void btnclear_Click1(object sender, EventArgs e)
    {
        txtuser.Text = "";
        lblmessage.Text = "";
    }
}
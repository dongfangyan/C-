using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _4_4Appllication : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.lblShow.Text = "当前在线人数为" + this.Application["counter"] + "人";

    }
}
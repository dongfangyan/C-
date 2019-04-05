using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _4_1ButtonClick_a : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.IsPostBack == false)
        {
            this.ViewState["num"] = 0;
        }


    }

    protected void btnClick_Click(object sender, EventArgs e)
    {
        this.ViewState["num"] = (int)this.ViewState["num"] + 1;
        this.lblShow.Text = "这是第" + this.ViewState["num"] + "次单击我！";
    }
}
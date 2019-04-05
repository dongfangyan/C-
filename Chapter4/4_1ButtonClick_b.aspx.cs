using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _4_1ButtonClick_b : System.Web.UI.Page
{
    int num;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.IsPostBack == false)
        {
            num = 0;
            this.hfdCount.Value = num.ToString();
        }


    }

    protected void btnClick_Click(object sender, EventArgs e)
    {
        num = int.Parse(this.hfdCount.Value);
        num += 1;
        this.lblShow.Text = "这是第" + num + "次单击我！";
        this.hfdCount.Value = num.ToString();

    }
}
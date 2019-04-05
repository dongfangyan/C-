using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _3_13Calendar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ibtnDisplay_Click(object sender, ImageClickEventArgs e)
    {
        this.Calendar1.Visible = true;  //设置控件Calendar1可见
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        //在TextBox1中显示控件Calendar1中选中的日期
        this.txtDate.Text = this.Calendar1.SelectedDate.ToShortDateString();
        //设置控件Calendar1不可见
        this.Calendar1.Visible = false;
    }
}
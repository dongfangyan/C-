using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _3_2DynControl : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        
    }
    protected void btnDel_Click(object sender, EventArgs e)
    {
        Label lblDelete = new Label();
        lblDelete = (Label)Page.FindControl("addLabel");
        Page.Controls.Remove(lblDelete);
    }

    protected void btnAdd_Click1(object sender, EventArgs e)
    {
        Label lblNew = new Label();
        lblNew.ID = "addLabel";
        lblNew.Text = "<font color='red'>新增加的控件</font>";
        Page.Controls.Add(lblNew);
    }
}
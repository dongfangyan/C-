using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _3_4DataBind : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblDateTime.DataBind();   //调用Label控件的DataBind方法，将数据源绑定到控件
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _3_5DataBindByFunction : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMessage.DataBind();
    }

    protected string EvenOrOdd(string strNumber)
    {
        int intNumber = int.Parse(strNumber);

        if (intNumber % 2 == 0)
            return "偶数";
        else
            return "奇数";
    }

     
}
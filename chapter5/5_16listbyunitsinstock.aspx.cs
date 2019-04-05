using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq;
using System.Data .Linq;


public partial class _5_16listbyunitsinstock : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        linqDataClassesDataContext listdb = new linqDataClassesDataContext();
        GridView1.DataSource = listdb.Products.OrderBy(m => m.UnitsInStock);
        GridView1.DataBind();

    }
}
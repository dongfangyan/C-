using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_PrpductTypeManage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        this.GridView1.DataBind();
    }
    protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        this.GridView1.DataBind();
    }
    protected void FormView1_ItemDeleted(object sender, FormViewDeletedEventArgs e)
    {
        this.GridView1.DataBind();
    }
}
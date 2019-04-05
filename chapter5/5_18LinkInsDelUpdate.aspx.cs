using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _5_18LinkInsDelUpdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void detailsviewInsert_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        editGridView.DataBind();
    }
}
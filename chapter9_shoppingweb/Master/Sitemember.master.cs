using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SiteMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] != null)
        {
           
           lblmessage.Text = "欢迎你" + Session["UserName"];
           Panel1.Visible = true;
        }
        else
            Panel1.Visible = false ;
    }
   
    
}

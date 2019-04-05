using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace chapter2
{
    public partial class _2_4MasterControlPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Label lblMaster = Master.FindControl("lblMaster") as Label;
            //lblMaster.Text = "Hello,这是在内容页面中的Page_Load。";


            //访问Master对象的MasterPageLabel属性，即lblMaster控件。
            Master.MasterPageLabel.Text = "Hello,这是在内容页面中的Page_Load。";
        }

        //protected void Page_Init(object sender, EventArgs e)
        //{
        //    Page.MasterPageFile = "2_4MasterControl.Master";
        //}

    
    }
}
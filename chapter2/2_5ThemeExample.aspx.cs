using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace chapter2
{
    public partial class _2_5ThemeExample : System.Web.UI.Page
    {
       protected  void  Page_PreInit(object sender, System.EventArgs e) 
       {
           if (Page.Theme == null)       //如果页面中没有应用主题，则应用主题Spring
           {
               Page.Theme = "Spring";
               this.Label1.EnableTheming = true;
               this.Label1.SkinID = "LabelSkin1";
           }
       }

   
      

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _4_3Profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Profile.number  == 1)
        {//如果是第一次访问，将值设为1
               Profile.number = 1;
        }
         else
        {  //否则，在原有值得基础上加1
              Profile.number += 1;
        }  
        this.lblShow.Text = "您好，您已是第" + this.Profile.number + "次访问本网站";

     }
      
   
}
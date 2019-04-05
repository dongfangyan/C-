using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _4_3Cookies : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int number;
        if (this.Request.Cookies["number"] == null)
            //如果是第一次访问，令访问次数为1
            number = 1;
        else
            //如果不是第一次访问，在原有访问次数次数上加1
            number = int.Parse(this.Request.Cookies["number"].Value) + 1;

        this.lblShow.Text = "您好，您已是第" + number + "次访问本网站";
        //将新的访问次数保存到Cookies中
        this.Response.Cookies["number"].Value = number.ToString();
        //设置有效期为1年后
        this.Response.Cookies["number"].Expires = DateTime.Now.AddYears(1);  

    }
}
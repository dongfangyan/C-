using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnHelp_Click(object sender, EventArgs e)
    {
         //动态创建一个新的子菜单项，设置它的Text、Value、NavigateUrl属性
        MenuItem menuitem1=new MenuItem() ; 
        menuitem1.Text = "帮助";
        menuitem1.Value = "help";
        //NavigateUrl属性:获取或设置单击菜单项时要导航的URL
        menuitem1.NavigateUrl = "~/help.aspx";
        //将新建的子菜单项添加到Menu1,作为根菜单Items(0)的最后一个子菜单ChildItems。
        this.Menu1.Items[0].ChildItems.Add(menuitem1);

    }
}
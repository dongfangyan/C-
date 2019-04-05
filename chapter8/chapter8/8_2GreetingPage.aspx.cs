using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace chapter8
{
    public partial class _8_2GreetingPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpdateName_Click(object sender, EventArgs e)
        {
            this.lblShowName.Text = "欢迎您！" + this.txtName.Text;
            this.lblShowTime.Text = "按钮btnUpdateNam更新的时间：" + DateTime.Now.ToShortTimeString();
        }

        protected void btnUpdateTime_Click(object sender, EventArgs e)
        {
            this.lblShowTime.Text = "现在时间是：" + DateTime.Now.ToShortTimeString();
            this.lblShowName.Text = "按钮btnUpdateTime更新的欢迎信息：" + this.txtName.Text;
        }
    }
}
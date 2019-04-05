using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace chapter8
{
    public partial class _8_3ShowLoginTime : System.Web.UI.Page
    {
        public DateTime loginTime;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (ViewState["LoginTime"] == null)
            {
                loginTime = DateTime.Now;
                ViewState["LoginTime"] = loginTime;
            }
            else
                loginTime = (DateTime)ViewState["LoginTime"];
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            int loginSeconds = (int)(DateTime.Now - loginTime).TotalSeconds;

            this.lblShowTime.Text = "您已经登录" + loginSeconds.ToString() + "秒";

            this.lblNow.Text = "现在时间：" + DateTime.Now.ToLongTimeString();
        }
    }
}
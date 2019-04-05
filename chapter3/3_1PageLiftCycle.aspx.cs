using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _3_1PageLiftCycle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("页面加载Page_Load事件<br/>");
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        Response.Write("按钮点击事件<br/>");
        lblMessage.Text = "你输入的文字为" + txtinput.Text;

    }
    protected void txtinput_TextChanged(object sender, EventArgs e)
    {
        Response.Write("文本框触发TextChange事件输入的文字为'" + txtinput.Text + "'<br/>");
    }

    protected override void AddedControl(Control control, int index)
    {
        Response.Write(string.Format("控件被加载：{0}<br/>", control.GetType().Name));
        base.AddedControl(control, index);
    }
    protected override void OnInit(EventArgs e)
    {
        Response.Write("页面初始化事件OnInit<br/>");
        base.OnInit(e);
    }
    protected override void OnLoadComplete(EventArgs e)
    {
        Response.Write("页面加载完毕OnLoadComplete<br/>");
        base.OnInit(e);
    }
    protected override void OnPreLoad(EventArgs e)
    {
        Response.Write("页面即将加载事件OnPreLoad<br/>");
        base.OnInit(e);
    }
    protected override void OnPreRender(EventArgs e)
    {
        Response.Write("页面预呈现事件OnPreRender<br/>");
        if (txtinput.Text.Length > 6)
            lblMessage.Text = "你输入的文字为：" + txtinput.Text.Trim().Substring(0, 6);
        base.OnInit(e);
    }

}
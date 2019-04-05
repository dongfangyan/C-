using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _3_6_2_SportsQuestionnaire : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void chkSport_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox chkSport;
        string strMessage = "你喜爱的运动项目是：";

        //遍历form1中的所有子控件
        //Page.FindControl("form1")：在页面中找到ID为form1的控件
        //Page.FindControl("form1").Controls：得到form1中的子控件集合
        foreach (Control mycontrol in Page.FindControl("form1").Controls)
        {
            //判断控件是否是CheckBox控件
            if (mycontrol.GetType() == typeof(CheckBox))
            {
                //转换成CheckBox类型
                chkSport = (CheckBox)mycontrol;
                //判断复选框控件是否选中
                if (chkSport.Checked)
                    //如果选中，获取复选框控件的文本值
                    strMessage += chkSport.Text + "，";
            }
        }

        //将最后一个逗号改为句号
        strMessage = strMessage.Substring(0, strMessage.Length - 1) + "。";
        lblMessage.Text = strMessage;
    }
}
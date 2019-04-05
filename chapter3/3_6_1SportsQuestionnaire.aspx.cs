using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _3_6_1_SportsQuestionnaire : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void chkSport_CheckedChanged(object sender, EventArgs e)
    {
        string strMessage = "你喜爱的运动项目是：";

        //判断复选框chkSport1是否被选中
        if (chkSport1.Checked)
            strMessage += chkSport1.Text + "，";

        //判断复选框chkSport2是否被选中
        if (chkSport2.Checked)
            strMessage += chkSport2.Text + "，";


        //判断复选框chkSport3是否被选中
        if (chkSport3.Checked)
            strMessage += chkSport3.Text + "，";

        //判断复选框chkSport4是否被选中
        if (chkSport4.Checked)
            strMessage += chkSport4.Text + "，";

        //判断复选框chkSport5是否被选中
        if (chkSport5.Checked)
            strMessage += chkSport5.Text + "，";

        //将最后一个逗号改为句号
        strMessage = strMessage.Substring(0, strMessage.Length - 1) + "。";
        //将信息在标签控件中显示
        lblMessage.Text = strMessage;
    }
}
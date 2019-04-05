using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _3_6_3SportsQuestionnaire : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string[] strSports = { "篮球", "爬山", "乒乓球", "跑步", "羽毛球" };
        //首次访问页面时，给cblSports控件添加选项
        if (Page.IsPostBack == false)
        {
            //通过Items属性的Add方法添加选项
            //int i;
            //for (i = 0; i < strSports.Length; i++)
            //    chklstSports.Items.Add(strSports[i]);

            //指定chklstSports控件的数据源为数组()
            chklstSports.DataSource = strSports;
            //调用DataBind方法，进行数据绑定
            chklstSports.DataBind();
        }
    }

    protected void chklstSports_SelectedIndexChanged(object sender, EventArgs e)
    {
        int i;
        string strMessage = "你喜爱的运动项目是：";

        for (i = 0; i < chklstSports.Items.Count; i++)
        {
            if (chklstSports.Items[i].Selected)
                strMessage += chklstSports.Items[i].Text + "，";
        }
        //将最后一个逗号改为句号
        strMessage = strMessage.Substring(0, strMessage.Length - 1) + "。";
        lblMessage.Text = strMessage;
    }
}
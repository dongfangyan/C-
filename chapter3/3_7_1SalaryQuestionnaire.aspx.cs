using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _3_7_1SalaryQuestionnaire : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void radSalary_CheckedChanged(object sender, EventArgs e)
    {
        RadioButton radTemp;
        //采用循环结构遍历form1中的所有控件（Contol对象）
        foreach (Control mycontrol in Page.FindControl("form1").Controls)
        {
            //判断是否单选控件
            if (mycontrol.GetType() == typeof(RadioButton))
            {
                //如果是单选控件，转换为RadioButton对象
                radTemp = mycontrol as RadioButton;
                //判断单选控件是否选中
                if (radTemp.Checked)
                {
                    //获得选中项的文本
                    lblMessage.Text = "你的工资收入是：" + radTemp.Text + "。";
                    //因为是单选，找到一个选中项后，退出循环
                    break;
                }
            }
        }
    }
}
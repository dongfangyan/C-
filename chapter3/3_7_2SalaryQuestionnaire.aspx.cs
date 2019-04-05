using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _3_7_2SalaryQuestionnaire : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void radlSalary_SelectedIndexChanged(object sender, EventArgs e)
    {
        //通过RadioButtonList控件的SelectedItem属性，获取选中项，取得选中项的文本
        lblMessage.Text = "你的工资收入是：" + radlSalary.SelectedItem.Text;
    }
}
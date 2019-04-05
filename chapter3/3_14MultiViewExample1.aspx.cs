using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _3_14MultiViewExample1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //如果首次访问页面，设置表格的第一行第二个和第三个单元格的背景色为lightblue
        if (Page.IsPostBack == false)
        {
            TABLE1.Rows[0].Cells[1].BgColor = "gray";
            TABLE1.Rows[0].Cells[2].BgColor = "gray";
            MultiView1.ActiveViewIndex = 0;        //MultiView1控件中显示第一个视图。
        }
    }

    protected void ViewChangeCommand(object sender, CommandEventArgs e)
    {
        //获取当前单击的LinkButton控件的CommandArgument属性值
        int viewIndex = int.Parse(e.CommandArgument.ToString());
        //将LinkButton所代表的视图在MultiView1中显示
        MultiView1.ActiveViewIndex = viewIndex;
        //将Table1中的第一行的所有单元格的背景色设为white
        for (int i = 0; i < TABLE1.Rows[0].Cells.Count; i++)
            TABLE1.Rows[0].Cells[i].BgColor = "gray";

        //将当前单击的LinkButton所在的单元格的背景色设为lightblue
        TABLE1.Rows[0].Cells[viewIndex].BgColor = "white";
    }
}
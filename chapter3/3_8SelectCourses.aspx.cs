using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _3_8SelectCourse : System.Web.UI.Page
{
    string[][] strCourses = new string[2][];

    protected void Page_Load(object sender, EventArgs e)
    {
        //定义一维数组，存储系名
        string[] strDepts = { "计算机系", "机电系" };

        //定义一维数组，存储计算机系的选修课程名称
        string[] strCoursesOfCS = { "PHP程序设计", "Oracle数据库管理与开发", "局域网组建", "Linux操作系统", "JavaScript" };

        //定义一维数组，存储机电系的选修课程名称
        string[] strCoursesOfJD = { "影视欣赏", "静态网页设计", "C/C++程序设计", "AutoCAD", "应用文写作" };

        //为数组的数组赋值
        strCourses[0] = strCoursesOfCS;
        strCourses[1] = strCoursesOfJD;

        //首次访问页面时，指定DropDownList控件和ListBox控件的数据源，进行数据绑定
        if (Page.IsPostBack == false)
        {
            dropDept.DataSource = strDepts;
            dropDept.DataBind();
            //设置DropDownList控件的初始选项为计算机系
            dropDept.SelectedIndex = 0;
            //根据DropDownList控件的选项，指定ListBox控件的数据源，进行数据绑定
            lstCourses.DataSource = strCourses[0];
            lstCourses.DataBind();
        }
        //根据DropDownList控件中所选系的名称，设置Label2的显示文本
        lblchoice.Text = dropDept.Text + "的选修课程：";
    }

    protected void dropDept_SelectedIndexChanged(object sender, EventArgs e)
    {
        //根据DropDownList控件中所选项的索引值，为lstCourses控件设置数据源
        lstCourses.DataSource = strCourses[dropDept.SelectedIndex];
        //lstCourses控件进行数据绑定
        lstCourses.DataBind();
        this.lstSelectedCourses.Items.Clear();
    }

    protected void btnlefttoright_Click(object sender, EventArgs e)
    {
        //定义字符串数组，存储列表控件lstCourses中选中项的文本
        string[] strDelItem = new string[this.lstCourses.GetSelectedIndices().Length];
        int i = 0;

        //使用For each循环，获取列表控件lstCourses中选定项的文本
        foreach (ListItem itemTemp in this.lstCourses.Items)
        {
            //判断列表项是否选中
            if (itemTemp.Selected == true)
            {
                //如果选中，将该列表项加到列表控件lstSelectedCourses中
                this.lstSelectedCourses.Items.Add(itemTemp);
                //将选中项的文本存储到数组中
                strDelItem[i] = itemTemp.Text;
                i = i + 1;
            }
        }
        //设置列表控件lstSelectedCourses没有列表项选中
        lstSelectedCourses.SelectedIndex = -1;
        int j;
        //使用For循环，将列表控件lstCourses中已选修的课程删除
        for (j = i - 1; j >= 0; j--)
            lstCourses.Items.Remove(strDelItem[j]);
    }

    protected void btnalltoright_Click(object sender, EventArgs e)
    {
        //将列表控件lstCourses中的列表项全部添加到lstSelectedCourses中
        foreach (ListItem item in this.lstCourses.Items)
            this.lstSelectedCourses.Items.Add(item);
        //清除列表控件lstCourses中的列表项
        this.lstCourses.Items.Clear();
    }

    protected void btnrighttoleft_Click(object sender, EventArgs e)
    {
        string[] strDelItem = new string[this.lstSelectedCourses.GetSelectedIndices().Length];

        int i = 0;

        foreach (ListItem item in this.lstSelectedCourses.Items)
        {
            if (item.Selected == true)
            {
                this.lstCourses.Items.Add(item);
                strDelItem[i] = item.Text;
                i++;
            }
        }

        this.lstCourses.SelectedIndex = -1;

        for (int j = strDelItem.Length - 1; j >= 0; j--)
            lstSelectedCourses.Items.Remove(strDelItem[j]);
    }

    protected void btnalltoleft_Click(object sender, EventArgs e)
    {
        foreach (ListItem item in this.lstSelectedCourses.Items)
            this.lstCourses.Items.Add(item);

        this.lstSelectedCourses.Items.Clear();
    }

}
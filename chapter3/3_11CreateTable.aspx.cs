using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _3_11CreateTable : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCreate_Click(object sender, EventArgs e)
    {
        //获取文本框中输入的表格的行数和列数
        int rowCount = int.Parse(txtRows.Text.Trim());
        int columnCount = int.Parse(txtColumns.Text.Trim());
        //定义TableStyle对象，设置Table的外观样式
        TableStyle tabStyle = new TableStyle();
        tabStyle.BorderStyle = BorderStyle.Groove;              //设置边框样式
        tabStyle.HorizontalAlign = HorizontalAlign.Center;      //设置表格水平居中
        tabStyle.GridLines = GridLines.Both;                   //设置表格显示网格线

        Table table1 = new Table();          //创建Table对象
        table1.ApplyStyle(tabStyle);      //为Table对象应用样式


        //创建表格标题行和表格标题单元格
        TableHeaderRow headerRow = new TableHeaderRow();
        TableHeaderCell headerCell = new TableHeaderCell();

        //设置标题单元格横跨的列数
        headerCell.ColumnSpan = columnCount;
        headerCell.RowSpan = 1;
        //设置标个单元格的显示文本和背景色
        headerCell.Text = "动态创建的" + txtRows.Text.Trim() + "行" + txtColumns.Text.Trim() + "列的表格";
        headerCell.BackColor = System.Drawing.Color.Gray;
        //将标题单元格添加到标题行，将标题行添加到表格
        headerRow.Cells.Add(headerCell);
        table1.Rows.Add(headerRow);

        //通过循环，创建表格中的各行

        for (int i = 0; i < rowCount; i++)
        {
            //创建表格行
            TableRow tempRow = new TableRow();
            for (int j = 0; j < columnCount; j++)
            {
                //创建单元格
                TableCell tempCell = new TableCell();
                //奇数行的单元格显示普通文本
                if (i % 2 == 1)
                    tempCell.Text = "第" + (i + 1).ToString() + "行，第" + (j + 1).ToString() + "列";
                else
                {
                    //偶数行的单元格添加文本框控件，在文本框控件中显示行数和列数
                    TextBox tempTextBox = new TextBox();
                    tempTextBox.Text = "第" + (i + 1).ToString() + "行，第" + (j + 1).ToString() + "列";
                    tempCell.Controls.Add(tempTextBox);
                }
                //将单元格添加到表格行
                tempRow.Cells.Add(tempCell);
            }
            //将表格行添加到表格
            table1.Rows.Add(tempRow);
        }
        //将Table控件添加到页面中的form1表单中
        Page.FindControl("form1").Controls.Add(table1);
    }
}
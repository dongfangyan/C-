using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class admin_AdminDefault : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (txtSearch.Text.Equals(""))
        {
            Response.Write("<script>alert('搜索内容不能为空！');</script>");
            return;
        }
        string sql = "";
        if (DropDownList1.SelectedValue.Equals("订单编号"))
        {
            lblmessage.Text = "";
            sql = "select OrderID as '订单号',OrderDate as '创建日期',TotalMoney as '总金额',PayWay as '付款方式',SendWay as '送货方式',RealName as '收货人'," +
                  "Address as '收货人地址',Zip as '邮政编码',Phone as '联系电话',Email as '电子邮箱',Status as '是否已发送'" +
                  " from OrderInfo where OrderID='" + txtSearch.Text + "'";
        }
        else if (DropDownList1.SelectedValue.Equals("订单日期"))
        {
            lblmessage.Text = "日期格式为yyyy-mm-dd或yyyy-mm或yyyy";
            sql = "select OrderID as '订单号',OrderDate as '订单日期',TotalMoney as '总金额',PayWay as '付款方式',SendWay as '送货方式',RealName as '收货人'," +
                  "Address as '收货人地址',Zip as '邮政编码',Phone as '联系电话',Email as '电子邮箱',Status as '是否已发货'" +
                  " from OrderInfo where convert(varchar(10),OrderDate,121) like '%" + txtSearch.Text + "%'";
            //convert(varchar(10),OrderDate)将数据库内的OrderDate转换为yyyy-mm-dd格式的10位字符,121是指将datetime类型转换为char类型时获得包括世纪位数的4位年份
        }
        else
        {
            lblmessage.Text = "";
            sql = "select ID as '商品编号',Name as '商品名称',ProductTypeID as '商品类别编号',Description as '商品描述',Suppliers as '供应商'," +
                  "PublicTime as '进货时间',InPrice '原价',OutPrice as '现价',Picture as '图片',IsSpecial as '是否特价商品'" +
                  " from Products where Name like '%" + txtSearch.Text + "%'";
        }
        string strcon = ConfigurationManager.ConnectionStrings["ShoppingWebDBConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(strcon);
        conn.Open();
        SqlCommand command = new SqlCommand(sql, conn);
        SqlDataReader reader = command.ExecuteReader();
        GridView1.DataSource = reader;
        GridView1.DataBind();


        if (!reader.HasRows)
        {
            lblmessage.Text = "<font color='red'>没有符合条件的结果</font>";
        }
        else
        {
            reader.Read();
            lblmessage.Text = "";
        }
        conn.Close();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = e.RowIndex;
        GridView1.DataBind();
    }
}
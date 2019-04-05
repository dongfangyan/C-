using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _5_11DataSet : System.Web.UI.Page
{
    public static string connectionstring = ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString;
    SqlConnection conn = new SqlConnection(connectionstring);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string customersql = "select CustomerID from customers";
            SqlDataAdapter customerda = new SqlDataAdapter(customersql, conn);
            DataSet customerdataset = new DataSet();
            customerda.Fill(customerdataset);
            customerlist.DataSource = customerdataset.Tables[0];
            customerlist.DataValueField = customerdataset.Tables[0].Columns[0].ColumnName;
            customerlist.DataTextField = customerdataset.Tables[0].Columns[0].ColumnName;
            customerlist.DataBind();

        }

    }

    protected void customerlist_SelectedIndexChanged(object sender, EventArgs e)
    {
        string ordersql = "select * from orders where customerid='" + customerlist.SelectedValue + "'";
        SqlDataAdapter orderda = new SqlDataAdapter(ordersql, conn);
        DataSet orderdataset = new DataSet();
        orderda.Fill(orderdataset);
        orderlist.DataSource = orderdataset.Tables[0];
        orderlist.DataValueField = orderdataset.Tables[0].Columns[0].ColumnName;
        orderlist.DataTextField = orderdataset.Tables[0].Columns[0].ColumnName;
        orderlist.DataBind();
    }
    protected void chkproduct_Click(object sender, EventArgs e)
    {
        string productsql = "select  p.productname, o.unitprice,o.quantity,o.discount ,c.categoryname from products p";
        productsql += "  inner join [Order Details] o  on o.productid=p.productid";
        productsql += "  inner join categories c on c.categoryid=p.categoryid";
        productsql += "  where orderid='" + orderlist.SelectedValue + "'";
        SqlDataAdapter productda = new SqlDataAdapter(productsql, conn);
        DataSet productdataset = new DataSet();
        productda.Fill(productdataset);
        productgridview.DataSource = productdataset.Tables[0];
        productgridview.DataBind();

    }
    protected void chkorder_Click(object sender, EventArgs e)
    {
        string ordersql = "select * from orders where orderid=@orderid";
        SqlDataAdapter orderda = new SqlDataAdapter(ordersql, conn);
        //将@orderid字符串变量设置为数据库的字符类型，并赋值为订单下拉列表框中所选订单的值   
        orderda.SelectCommand.Parameters.Add("@orderid", SqlDbType.Char).Value = orderlist.SelectedValue;
        DataSet orderdataset = new DataSet();
        orderda.Fill(orderdataset);
        ordergridview.DataSource = orderdataset.Tables[0];
        ordergridview.DataBind();

    }
}
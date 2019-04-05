using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _5_9DataReader : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
    {
        SqlConnection conn = new SqlConnection(SqlDataSource1.ConnectionString);
        conn.Open();
        string customerid = e.Values[0].ToString();
        string sqlstr = "select * from customers where customerid='" + customerid + "'";
        SqlCommand cmd = new SqlCommand(sqlstr, conn);
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.HasRows)
        {
            Response.Write("<script>alert('用户名已经存在,请重新输入!')</script>");
            e.Cancel = true;
        }
        reader.Close();
        conn.Close();

    }
}
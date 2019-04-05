using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _5_15Adonettran : System.Web.UI.Page
{
    public static string connectionstring = ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString;
SqlConnection conn = new SqlConnection(connectionstring);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btntran_Click(object sender, EventArgs e)
    {
        using (conn)
        {
            conn.Open();
            SqlTransaction sqltran = conn.BeginTransaction();
            SqlCommand cmd = conn.CreateCommand();
            cmd.Transaction = sqltran;

            try
            {
                cmd.CommandText = "insert into customers(customerid,companyname) values('Obama','americacompany')";
                cmd.ExecuteNonQuery();
                cmd.CommandText = "insert into customers(customerid,companyname) values('youku','chinacompany1234567890chinacompany12345678')";
                cmd.ExecuteNonQuery();
                sqltran.Commit();
                Response.Write("<script>alert('事务插入成功')</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('事务插入不成功，回滚！')</script>");
                sqltran.Rollback();
            }
            
        }

    }
}
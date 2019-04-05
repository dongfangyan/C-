using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _5_10DataReader : System.Web.UI.Page
{
    public static string connectionstring = ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString;
    SqlConnection conn = new SqlConnection(connectionstring);

    protected void Page_Load(object sender, EventArgs e)
    {
         lblmessage.Visible = true;
        conn.Open();
        string sqlstr = "select * from categories";
        SqlCommand cmd = new SqlCommand(sqlstr, conn);
        using(SqlDataReader dr = cmd.ExecuteReader())
{
           Response.Write("产品种类有：<hr>");
           while (dr.Read ())
              lblmessage .Text =lblmessage .Text +"<br/>"+dr.GetInt32 (0).ToString () +"."+dr.GetString (1).ToString ();
        }
        conn.Close();

    }
    protected void chkcategories_Click(object sender, EventArgs e)
    {
        lblmessage.Visible = false;
        using (conn)
        {
            conn.Open();
            string sqlstr = "select * from categories";
            SqlCommand cmd = new SqlCommand(sqlstr, conn);
            using (SqlDataReader dr = cmd.ExecuteReader())
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
        }

    }
}
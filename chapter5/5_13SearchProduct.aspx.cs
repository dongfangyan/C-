using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class _5_13SearchProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void butsearch_Click(object sender, EventArgs e)
    {
        string connectionstring = ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connectionstring))
        {
            SqlCommand cmd = new SqlCommand("pro_searchproduct", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter pname = new SqlParameter("@productname", txtproductname.Text);
            cmd.Parameters.Add(pname);
            conn.Open();
            using (SqlDataReader dr = cmd.ExecuteReader())
            {
                while (dr.Read())
                {
                    TableRow row = new TableRow();
                    tabresult.Rows.Add(row);
                    for (int i = 0; i < 2; i++)
                    {
                        TableCell cell = new TableCell();
                        cell.Text = Convert.ToString(dr[i]);
                        row.Cells.Add(cell);
                    }
                }
            }
        }

    }
}
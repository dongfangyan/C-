using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
/// DB 的摘要说明
/// </summary>
public class DB
{
    string strcon;
    SqlConnection conn;
    public DB()
    {
        strcon = ConfigurationManager.ConnectionStrings["ShoppingWebDBConnectionString"].ConnectionString;
        conn = new SqlConnection(strcon);
    }
    public SqlDataReader Search_pro(string producttype_pro, string productname_pro)
    {
        SqlCommand cmd = new SqlCommand("searchproducts", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@producttype", SqlDbType.VarChar, 50));
        cmd.Parameters["@producttype"].Value = producttype_pro;

        cmd.Parameters.Add(new SqlParameter("@productname", SqlDbType.VarChar, 100));
        cmd.Parameters["@productname"].Value = "%" + productname_pro + "%";

        conn.Open();
        SqlDataReader reader = cmd.ExecuteReader();


        return reader;
        conn.Close();
    }
    public void insertorder(string[] orderlist,int orderid)
    {
        SqlCommand cmd = new SqlCommand("inserorderinfo_pro", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.Add(new SqlParameter("@orderid", SqlDbType.Int));
        cmd.Parameters["@orderid"].Value = orderid;

        cmd.Parameters.Add(new SqlParameter("@username", SqlDbType.VarChar, 50));
        cmd.Parameters["@username"].Value = orderlist[0];

        cmd.Parameters.Add(new SqlParameter("@realname", SqlDbType.VarChar, 50));
        cmd.Parameters["@realname"].Value = orderlist[1];

        cmd.Parameters.Add(new SqlParameter("@ordertime", SqlDbType.DateTime));
        cmd.Parameters["@ordertime"].Value = System.DateTime.Now;

        cmd.Parameters.Add(new SqlParameter("@TotalMoney", SqlDbType.Money));
        cmd.Parameters["@TotalMoney"].Value = System.Convert.ToDouble(orderlist[2]);

        cmd.Parameters.Add(new SqlParameter("@payway", SqlDbType.VarChar, 50));
        cmd.Parameters["@payway"].Value = orderlist[3];

        cmd.Parameters.Add(new SqlParameter("@sendway", SqlDbType.VarChar, 50));
        cmd.Parameters["@sendway"].Value = orderlist[4];

        cmd.Parameters.Add(new SqlParameter("@phone", SqlDbType.VarChar, 20));
        cmd.Parameters["@phone"].Value = orderlist[5];

        cmd.Parameters.Add(new SqlParameter("@email", SqlDbType.VarChar, 50));
        cmd.Parameters["@email"].Value = orderlist[6];

        cmd.Parameters.Add(new SqlParameter("@address", SqlDbType.VarChar, 50));
        cmd.Parameters["@address"].Value = orderlist[7];
        cmd.Parameters.Add(new SqlParameter("@zip", SqlDbType.VarChar, 50));
        cmd.Parameters["@zip"].Value = orderlist[8];
        conn.Open();

        cmd.ExecuteNonQuery();

        conn.Close();
    }
    public void insertorderdetails(string[] cartoutput,int orderid)
    {
        SqlCommand cmdorder = new SqlCommand("insertorderdetail", conn);
        cmdorder.CommandType = CommandType.StoredProcedure;

        cmdorder.Parameters.Add(new SqlParameter("@orderid", SqlDbType.Int ));
        cmdorder.Parameters["@orderid"].Value = orderid ;

        cmdorder.Parameters.Add(new SqlParameter("@username", SqlDbType.VarChar, 50));
        cmdorder.Parameters["@username"].Value = cartoutput[1];

        cmdorder.Parameters.Add(new SqlParameter("@productid", SqlDbType.VarChar, 50));
        cmdorder.Parameters["@productid"].Value = cartoutput[0];

        cmdorder.Parameters.Add(new SqlParameter("@productname", SqlDbType.VarChar, 50));
        cmdorder.Parameters["@productname"].Value = cartoutput[2];

        cmdorder.Parameters.Add(new SqlParameter("@producttypename", SqlDbType.VarChar, 50));
        cmdorder.Parameters["@producttypename"].Value = cartoutput[3];

        cmdorder.Parameters.Add(new SqlParameter("@price", SqlDbType.Money));
        cmdorder.Parameters["@price"].Value = System.Convert.ToDouble(cartoutput[5]);

        cmdorder.Parameters.Add(new SqlParameter("@num", SqlDbType.Int));
        cmdorder.Parameters["@num"].Value = System.Convert.ToInt32(cartoutput[4]);

        cmdorder.Parameters.Add(new SqlParameter("@TotalMoney", SqlDbType.Money));
        cmdorder.Parameters["@TotalMoney"].Value = System.Convert.ToDouble(cartoutput[6]);

        conn.Open();
        cmdorder.ExecuteNonQuery();
        conn.Close();
    }
}

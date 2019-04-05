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


public partial class members_Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Write("<script>alert('你还没登录,请先登录!');location='../userlogin.aspx'</script>");
            return;

        }
        string productid, username, Name, TypeName;
        double OutPrice, TotalMoney;
        int ID, num;
        productid = Request.Params["ID"];
        username = Session["UserName"].ToString();
        string connectionstring = ConfigurationManager.ConnectionStrings["ShoppingWebDBConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionstring);
        con.Open();
        string str1 = "select Products.ID,Products.Name,Products.OutPrice,ProductType.TypeName" +
        " from Products INNER JOIN ProductType ON Products.ProductTypeID = ProductType.ID" +
        " where Products.ID='" + productid + "'";
        SqlCommand cmd = new SqlCommand(str1, con);
        SqlDataReader reader = cmd.ExecuteReader();
        if (username != null)
        {
            lblusername.Text = Session["UserName"].ToString();
            lblusername.Visible = false;
            if (reader.HasRows)
            {
                reader.Read();
                num = 1;
                ID = reader.GetInt32(0);
                Name = reader.GetString(1);
                TypeName = reader.GetString(3);
                OutPrice = System.Convert.ToDouble(reader.GetDecimal(2));
                TotalMoney = num * OutPrice;
                con.Close();
                con.Open();
                string str2 = "select * from TempOrderInfo where ProductID='" + productid + "' and UserName='" + username + "'";
                SqlCommand cmd2 = new SqlCommand(str2, con);
                SqlDataReader reader2 = cmd2.ExecuteReader();
                if (!reader2.HasRows)
                {
                    con.Close();
                    con.Open();
                    string str3 = "insert into TempOrderInfo values('" + ID + "','" + username + "','" + Name + "','" + TypeName + "','" + num + "','" + OutPrice + "','" + TotalMoney + "')";
                    SqlCommand cmd1 = new SqlCommand(str3, con);
                    cmd1.ExecuteNonQuery();
                    con.Close();
                }
                else if (reader2.HasRows)
                {
                    reader2.Read();
                    num = reader2.GetInt32(4);
                    OutPrice = System.Convert.ToDouble(reader2.GetDecimal(5));
                    TotalMoney = System.Convert.ToDouble(reader2.GetDecimal(6));
                    con.Close();
                    con.Open();
                    num = num + 1;
                    TotalMoney = OutPrice * num;
                    string str4 = "UPDATE TempOrderInfo SET Num='" + num + "' ,TotalMoney='" + TotalMoney + "' where ProductID='" + productid + "' and UserName='" + username + "'";
                    SqlCommand cmd3 = new SqlCommand(str4, con);
                    cmd3.ExecuteNonQuery();
                    con.Close();
                }
                int i;// 'i为GridView1的行数，num用于保存更改后某商品的数量
                double money1 = 0;//'price用于保存商品的单价,money用于保存商品的价格总额
                double totalmoney1 = 0;
                int num1 = 0;
                for (i = 0; i <= GridView1.Rows.Count - 1; i++) //'循环购物车GridView1的每一行
                {
                    money1 = System.Convert.ToDouble(((Label)GridView1.Rows[i].Cells[5].FindControl("totalmoney")).Text);
                    totalmoney1 = totalmoney1 + money1;
                    num1 += 1;
                }
                lblmoney.Text = totalmoney1.ToString();
                Session["TotalMoney"] = totalmoney1.ToString ();
                Session["num"] = num1;
            }
            else
            {
                int i;//'i为GridView1的行数，num用于保存更改后某商品的数量
                double money1 = 0;// 'price用于保存商品的单价,money用于保存商品的价格总额
                double totalmoney1 = 0;
                int num1 = 0;
                for (i = 0; i <= GridView1.Rows.Count - 1; i++)//'循环购物车GridView1的每一行
                {
                    money1 = System.Convert.ToDouble(((Label)GridView1.Rows[i].Cells[5].FindControl("totalmoney")).Text);
                    totalmoney1 = totalmoney1 + money1;
                    num1 += 1;
                }
                lblmoney.Text = totalmoney1.ToString();
                Session["TotalMoney"] = totalmoney1.ToString ();
                Session["num"] = num1;

            }
        }
        if (Convert.ToInt32(Session["TotalMoney"]) == 0)
        {
            HyperLink2.Enabled = false;
        }
    }
  
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        int i;// 'i为GridView1的行数，num用于保存更改后某商品的数量
        double money1 = 0;// 'price用于保存商品的单价,money用于保存商品的价格总额
        double totalmoney1 = 0;
        int num1 = 0;
        for (i = 0; i <= GridView1.Rows.Count - 1; i++)//'循环购物车GridView1的每一行
        {
            money1 = System.Convert.ToDouble(((Label)GridView1.Rows[i].Cells[5].FindControl("totalmoney")).Text);
            totalmoney1 = totalmoney1 + money1;
            num1 += 1;
        }
        lblmoney.Text = totalmoney1.ToString();
        Session["TotalMoney"] = totalmoney1.ToString();
        Session["num"] = num1;
    }

    protected void btnedit_Click(object sender, EventArgs e)
    {
        int i = 0;
        double totalmoney1 = 0;
        int num1 = 0;
        int productid, num;
        double price, totalmoney;
        string connectionstring = ConfigurationManager.ConnectionStrings["ShoppingWebDBConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionstring);
        while (i <= GridView1.Rows.Count - 1)
        {
            productid = Convert.ToInt32(((Label)GridView1.Rows[i].Cells[0].FindControl("productid")).Text);
            num = Convert.ToInt32(((TextBox)GridView1.Rows[i].FindControl("num")).Text);
            price = System.Convert.ToDouble(((Label)GridView1.Rows[i].Cells[5].FindControl("price")).Text);
            totalmoney = num * price;
            totalmoney1 = totalmoney1 + totalmoney;
            num1 += 1;
            con.Open();
            string str4 = "UPDATE TempOrderInfo SET Num='" + num + "' ,TotalMoney='" + totalmoney + "' where  ProductID='" + productid + "' and UserName='" + Session["UserName"].ToString() + "'";
            SqlCommand cmd3 = new SqlCommand(str4, con);
            cmd3.ExecuteNonQuery();
            i = i + 1;
            con.Close();
        }
        GridView1.DataBind();
        lblmoney.Text = totalmoney1.ToString();
        Session["TotalMoney"] = totalmoney1.ToString ();
        Session["num"] = num1;
    }
    
    protected void btnclear_Click1(object sender, ImageClickEventArgs e)
    {
 string strcon = ConfigurationManager.ConnectionStrings["ShoppingWebDBConnectionString"].ConnectionString;//'创建数据库连接字符串
        SqlConnection conn = new SqlConnection(strcon);// '创建数据库连接对象
        conn.Open();//'打开数据库
        string sqlDelete = "delete from TempOrderInfo where UserName='" + Session["UserName"] + "'";//'创建更新sql命令"
        SqlCommand cmdDelete = new SqlCommand(sqlDelete, conn);
        cmdDelete.ExecuteNonQuery();// '将临时表的数据更新,即实现更新购物车的商品信息
        conn.Close();
        GridView1.DataBind();
        HyperLink2.Enabled = false;
        lblmoney.Text = "0";
       Session["TotalMoney"] = 0;
        Session["num"] = 0;
    }
}
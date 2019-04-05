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

public partial class members_Order : System.Web.UI.Page
{
    string connectionstring;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        connectionstring = ConfigurationManager.ConnectionStrings["ShoppingWebDBConnectionString"].ConnectionString;
        con = new SqlConnection(connectionstring);
        if (Page.IsPostBack == false)
        {
            lblmessage.Visible = false;
            lblmoney.Text = Session["TotalMoney"].ToString();
            btnsubmit.Enabled = true;
            btnupdatepay.Visible = false;
        }
       // lblusername.Text = Session["UserName"].ToString();
       // lblusername.Visible = false;
    }
  
    protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        string[] orderlist = new String[4];
        //bool status = false;
        con.Open();
        string str = "select RealName,Phone,Email,Address,Zip from Users Where UserName='" + lblusername.Text.ToString() + "'";
        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.HasRows)
        {
            reader.Read();
            orderlist[0] = reader.GetString(0);
            orderlist[1] = reader.GetString(1);
            orderlist[2] = reader.GetString(2);
            orderlist[3] = reader.GetString(3);
            orderlist[4] = reader.GetString(4);
            con.Close();
            con.Open();
            string strupdate = "update orderinfo set RealName='" + orderlist[0] + "',Phone='" + orderlist[1] + "',Email='" + orderlist[2] + "',Address='" + orderlist[3] + "',Zip='" + orderlist[4] + "'  ";
            strupdate = strupdate + "Where UserName='" +lblusername.Text.ToString() + "' and status ='0' ";

            SqlCommand cmdupdate = new SqlCommand(strupdate, con);
            cmdupdate.ExecuteNonQuery();
            con.Close();

        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        int orderid=1;
        try
             {

            con.Open();
                //获取最新订单号
                string strordernum = "select Top 1 OrderID from orderinfo Order By OrderDate desc";
                SqlCommand cmdordernum = new SqlCommand(strordernum, con);
                SqlDataReader readerordernum = cmdordernum.ExecuteReader();
                if (readerordernum.HasRows)
                {
                    readerordernum.Read();
                    orderid = readerordernum.GetInt32(0) + 1;
                }
                readerordernum.Close();
               
                string payway = DropDownList1.Text;
                string sendway = DropDownList2.Text;
                double TotalMoney = System.Convert.ToDouble(Session["TotalMoney"]);

                string[] orderlist = new String[9];

                string struser = "select UserName,RealName,Phone,Email,Address,Zip from Users Where UserName='" + Session["UserName"] + "'";
                SqlCommand cmduser = new SqlCommand(struser, con);
                SqlDataReader readuser = cmduser.ExecuteReader();
                if (readuser.HasRows)
                {
                    readuser.Read();
                    orderlist[0] = readuser.GetString(0);
                    orderlist[1] = readuser.GetString(1);
                    orderlist[2] = TotalMoney.ToString();
                    orderlist[3] = payway;
                    orderlist[4] = sendway;
                    orderlist[5] = readuser.GetString(2);
                    orderlist[6] = readuser.GetString(3);
                    orderlist[7] = readuser.GetString(4);
                    orderlist[8] = readuser.GetString(5);
                }
                readuser.Close();

                //DB orderDB = new DB(); //调用类模块,将信息插入到orderinfo表中
                // orderDB.insertorder(orderlist, orderid);

                SqlCommand cmdorderinfo = new SqlCommand("inserorderinfo_pro", con);
                cmdorderinfo.CommandType = CommandType.StoredProcedure;

                cmdorderinfo.Parameters.Add(new SqlParameter("@orderid", SqlDbType.Int));
                cmdorderinfo.Parameters["@orderid"].Value = orderid;

                cmdorderinfo.Parameters.Add(new SqlParameter("@username", SqlDbType.VarChar, 50));
                cmdorderinfo.Parameters["@username"].Value = orderlist[0];

                cmdorderinfo.Parameters.Add(new SqlParameter("@realname", SqlDbType.VarChar, 50));
                cmdorderinfo.Parameters["@realname"].Value = orderlist[1];

                cmdorderinfo.Parameters.Add(new SqlParameter("@ordertime", SqlDbType.DateTime));
                cmdorderinfo.Parameters["@ordertime"].Value = System.DateTime.Now;

                cmdorderinfo.Parameters.Add(new SqlParameter("@TotalMoney", SqlDbType.Money));
                cmdorderinfo.Parameters["@TotalMoney"].Value = System.Convert.ToDouble(orderlist[2]);

                cmdorderinfo.Parameters.Add(new SqlParameter("@payway", SqlDbType.VarChar, 50));
                cmdorderinfo.Parameters["@payway"].Value = orderlist[3];

                cmdorderinfo.Parameters.Add(new SqlParameter("@sendway", SqlDbType.VarChar, 50));
                cmdorderinfo.Parameters["@sendway"].Value = orderlist[4];

                cmdorderinfo.Parameters.Add(new SqlParameter("@phone", SqlDbType.VarChar, 20));
                cmdorderinfo.Parameters["@phone"].Value = orderlist[5];

                cmdorderinfo.Parameters.Add(new SqlParameter("@email", SqlDbType.VarChar, 50));
                cmdorderinfo.Parameters["@email"].Value = orderlist[6];

                cmdorderinfo.Parameters.Add(new SqlParameter("@address", SqlDbType.VarChar, 50));
                cmdorderinfo.Parameters["@address"].Value = orderlist[7];
                cmdorderinfo.Parameters.Add(new SqlParameter("@zip", SqlDbType.VarChar, 50));
                cmdorderinfo.Parameters["@zip"].Value = orderlist[8];

                cmdorderinfo.ExecuteNonQuery();

            //调用类模块,将购物车信息插入到订单详细表
                DB orderdetailsDB = new DB();
                string[] cartoutput = new string[7];
                   
                string strcartinfo = "select * from TempOrderInfo where UserName= '"+Session["UserName"]+"'";
                SqlCommand cmdcart = new SqlCommand(strcartinfo, con);
                SqlDataReader readcart = cmdcart.ExecuteReader();
                while(readcart.Read ())
                {
                    cartoutput[0] = readcart.GetString(0);             //productid
                    cartoutput[1] = readcart.GetString(1);             //username
                    cartoutput[2] = readcart.GetString(2);             //productname
                    cartoutput[3] = readcart.GetString(3);             //producttypename
                    cartoutput[4] = readcart.GetInt32(4).ToString();    //num
                    cartoutput[5] = readcart.GetSqlMoney(5).ToString();    //price
                    cartoutput[6] = readcart.GetSqlMoney(6).ToString();    //total

                    orderdetailsDB.insertorderdetails(cartoutput, orderid);//将订单详细信息插入到orderdetail表中  
                }
                readcart.Close();


                con.Close();

                Response.Write("<script>alert('您的订单已经提交!');</script>");
                lblmessage.Visible = true;
                lbluserinfo.Visible = false;
                lblmessage.Text = "您的订单号为:" + orderid + " , 请在24小时内付款到账!谢谢合作!";

                con.Open();//打开数据库
                string sqlDelete = "delete from TempOrderInfo where UserName='" + Session["UserName"].ToString() + "'";//创建更新sql命令";
                SqlCommand cmdDelete = new SqlCommand(sqlDelete, con);
                cmdDelete.ExecuteNonQuery();//将临时表的数据更新,即实现更新购物车的商品信息
                con.Close();

                GridView1.DataBind();
                btnsubmit.Enabled = false;
                btnupdatepay.Visible = true;
                lbllist.Text = "";
                Session["num"] = "";
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('插入不成功！')</script>");
               
            }
    }
    protected void btnupdatepay_Click(object sender, EventArgs e)
    {
        string payway = DropDownList1.Text;
        string sendway = DropDownList2.Text;
        int orderid = 0;
        con.Open();
        string str1 = "select max(OrderID) as ordermaxID from OrderInfo Where UserName='" + lblusername.Text.ToString() + "'";
        SqlCommand cmd1 = new SqlCommand(str1, con);
        SqlDataReader reader1 = cmd1.ExecuteReader();
        if (reader1.HasRows)
        {
            reader1.Read();
            orderid = reader1.GetInt32(0);
        }
        con.Close();
        con.Open();
        string str2 = "update orderinfo set payway='" + payway + "' , sendway='" + sendway + "' Where OrderID='" + orderid + "' ";
        SqlCommand cmd2 = new SqlCommand(str2, con);
        cmd2.ExecuteNonQuery();
        con.Close();
    }
}
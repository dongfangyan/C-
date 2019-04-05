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


public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnregister_Click(object sender, EventArgs e)
    {

        Page.Validate();
        if (this.IsValid)
        {
            string connectionstring = ConfigurationManager.ConnectionStrings["ShoppingWebDBConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionstring);
            con.Open();

            string sname = this.txtusername.Text;
            string sql = "select * from Users where UserName='" + sname + "'";
            SqlCommand command = new SqlCommand(sql, con);
            SqlDataReader reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                this.Response.Write("<script>alert('此用户名已存在,请重新输入!')</script>");
                this.txtusername.Text = "";
                reader.Close();
            }
            else
            {
                reader.Close();
                string str1 = "insert into Users(UserName,PassWord,Problem,Answer,Email,RealName,Sex,Phone,Address,Zip)values('" + txtusername.Text + "','" + txtpassword.Text + "','" + dlproblem.Text + "','" + txtanswer.Text + "','" + txtemail.Text + "','" + txtrealname.Text + "','" + Rlsex.Text + "','" + txtphone.Text + "','" + txtaddress.Text + "','" + txtemailcode.Text + "')";
                SqlCommand cmd = new SqlCommand(str1, con);
                cmd.ExecuteNonQuery();
               
                Session["UserName"] = txtusername.Text.Trim();
                Response.Redirect("~/default.aspx");
            }
            con.Close();
        }


    }
}
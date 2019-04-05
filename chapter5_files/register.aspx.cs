using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

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
            string connectionstring = ConfigurationManager.ConnectionStrings["newsConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionstring);
            con.Open();

            //string sname = this.txtusername.Text;
            //string sql = "select * from users where username='" + sname + "'";
            //SqlCommand command = new SqlCommand(sql, con);
            //SqlDataReader reader = command.ExecuteReader();
            //if (reader.HasRows)
            //{
            //    this.Response.Write("<script>alert('此用户名已存在,请重新输入!')</script>");
            //    this.txtusername.Text = "";
            //    reader.Close();
            //}
            //else
            //{
                //reader.Close();
                string str1 = "insert into users(username,password) values('" + txtusername.Text + "','" + txtpassword.Text + "')";
                SqlCommand cmd = new SqlCommand(str1, con);
                cmd.ExecuteNonQuery();

                Session["UserName"] = txtusername.Text.Trim();
                Response.Redirect("~/login.aspx");
            //}
            con.Close();
        }
    }
}
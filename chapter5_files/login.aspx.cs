using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        string sname = this.txtusername.Text;
        string spw = this.txtpassword.Text;
        string connectionstring = ConfigurationManager.ConnectionStrings["newsConnectionString"].ConnectionString;

        if (sname == "" || spw == "")
        {
            this.Response.Write("<script>alert('户名名密码不能为空,请重新输入!')</script>");

        }
        else
        {

            SqlConnection con = new SqlConnection(connectionstring);
            con.Open();


            string sql = "select * from users where username='" + sname + "'and password='" + spw + "'";
            SqlCommand command = new SqlCommand(sql, con);
            SqlDataReader reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                Response.Redirect("~/default.aspx");
                reader.Close();
            }

            con.Close();
        }
    }
}
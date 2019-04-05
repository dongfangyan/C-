using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class readfiles_details_1 : System.Web.UI.Page
{
    //如果希望不写代码实现，则看readfiles_details.aspx文件
    
    string connectionstring = ConfigurationManager.ConnectionStrings["newsConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
       int fileid;
       fileid = int.Parse(Request.Params["fileid"]);
         SqlConnection con = new SqlConnection(connectionstring);
         using (con)//添加这句，可不用现再写con.close();
         {
             con.Open();
             string sql = "select * from files where fileid='"+fileid+"'";
             SqlCommand command = new SqlCommand(sql, con);
             SqlDataReader dr = command.ExecuteReader();
             if (dr.Read ())
             {
                lblfilename.Text = dr.GetString(1).ToString();
                lblsource.Text = dr.GetString(4).ToString() +"        "+dr.GetDateTime(5).ToString("yyyy年MM月dd日");
                 Editor_filecontent.Text = dr.GetString(3).ToString();
             }
         }



    }
}
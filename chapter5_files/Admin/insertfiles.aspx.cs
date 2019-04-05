using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_insertfiles : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btninsert_Click(object sender, EventArgs e)
    {
        if ((txtfilename.Text != "") && (txtpublisher.Text!="")&&(fileeditor.Text!="")) 
        {
        
            string connectionstring = ConfigurationManager.ConnectionStrings["newsConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionstring);
            con.Open();



            string str = "insert into files(filename,filecontent,publisher,publishdate,typeid) values('" + txtfilename.Text + "','" + fileeditor.Text + "','" + txtpublisher.Text + "','" + System.DateTime.Now + "','" + drpfiletype.SelectedValue + "')";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();


            this.Response.Write("<script>alert('插入成功!')</script>");
            Response.Redirect("~/Admin/readfiles.aspx");

            con.Close();
            }

else
        {
            this.Response.Write("<script>alert('请检查文件名、发布者或内容是否为空!,插入不成功')</script>");
            
       }

   
}
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;//p127
using System.Data.SqlClient;
using System.Configuration;

public partial class 注册修改删除 : System.Web.UI.Page

{//获取配置文件中的数据库连接信息P132
    public static string constr = ConfigurationManager.ConnectionStrings["newsConnectionString"].ConnectionString;
    SqlConnection conn = new SqlConnection(constr);//根据所获取的配置文件信息，建立与数据库的联系

    protected void btnregister_Click(object sender, EventArgs e)
    {
        //按钮事件
        conn.Open();//对象名.方法名，调用数据连接类里的打开方法
        string str = "insert into users(username,password) values('" + txtusername.Text.Trim() + "','" + txtpassword.Text.Trim() + "')";
        SqlCommand cmd = new SqlCommand(str,conn);//p129发布命令
        cmd.ExecuteNonQuery();//p130执行命令
        this.Response.Write("<script>alert('注册成功!')</script>");//<script>alert('插入成功!')</script>属于脚本语句
        Dropusername.DataBind();
        Dropuserid.DataBind();
        conn.Close();

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        conn.Open();//对象名.方法名，调用数据连接类里的打开方法
        string str = "update users set password='"+txtrepassword.Text +"' where userid='"+Dropusername.SelectedValue+"'";
        SqlCommand cmd = new SqlCommand(str, conn);//p129发布命令
        cmd.ExecuteNonQuery();//p130执行命令
        this.Response.Write("<script>alert('修改成功!')</script>");
        conn.Close();
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        conn.Open();//对象名.方法名，调用数据连接类里的打开方法
        string str = "delete from users where userid='"+Dropuserid.Text+"'";
        SqlCommand cmd = new SqlCommand(str, conn);//p129发布命令
        cmd.ExecuteNonQuery();//p130执行命令
        this.Response.Write("<script>alert('删除成功!')</script>");
        conn.Close();
    }
    protected void Page_Load(object sender, EventArgs e)
    { }

    
}
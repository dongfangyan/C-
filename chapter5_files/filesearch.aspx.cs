using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;//第一步：添加三个类包
using System.Data.SqlClient;
using System.Configuration;

public partial class filesearch : System.Web.UI.Page
{   //第二步：获取配置文件web.config中的数据库连接信息 
    string connectionstring = ConfigurationManager.ConnectionStrings["newsConnectionString"].ConnectionString;
            
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        //第三步：建立数据库连接对象
        SqlConnection con = new SqlConnection(connectionstring);
        using (con)//第四步：打开连接，用using这句，可不用现再写con.close();
        {
            con.Open();

            if (this.txtsearch.Text == "")
            {
                this.Response.Write("<script>alert('请输入要查找的内容!')</script>");

            }
            else
            {
                //第五步，编写对数据库操作的语句
                //模糊搜索时select语句要添加like关键字，还要再加上%，%表示任意多个字符
                // string sql = "select * from files where fileid='"+fileid+"'";
                string sql = "select fileid,filename from files where filename like " + "'%" + txtsearch.Text + "%'";

                //第六步，显示对数据库操作的结果（可以前台也可以后台）

                ////如下四种方法显示搜索结果

                //方法一：用Gridview和数据适配器显示信息，但不能跳转
                SqlDataAdapter da = new SqlDataAdapter(sql, con);//建立一个适配器对象
                DataSet fileset = new DataSet();//建立一个数据集对象
                da.Fill(fileset);//执行数据库的操作，并将结果填充进数据集对象中
                GridView1.DataSource = fileset.Tables[0];
                GridView1.DataBind();
                lblmessage.Text = "共有" + GridView1.Rows.Count + "条搜索记录";


                ////方法二：用用Gridview和 datareader显示信息，不 能跳转
                //SqlCommand command = new SqlCommand(sql, con);
                //SqlDataReader reader = command.ExecuteReader();
                //GridView1.DataSource = reader;
                //GridView1.DataBind();
                //lblmessage.Text = "共有" + GridView1.Rows.Count + "条搜索记录";
                //reader.Close();


                ////方法三 ：用Datalist和 datareader显示信息，并实现点击标题内容后 跳转
                //SqlCommand command = new SqlCommand(sql, con);//建立一个执行数据库操作的命令对象
                //SqlDataReader reader = command.ExecuteReader();//建立一个存储数据结果的对象，并执行对数据库的操作
                //DataList1.DataSource = reader;//把数据库的操作的结果作为控件的数据源
                //DataList1.DataBind();//进行数据绑定，才能显示在页面
                //lblmessage.Text = "共有" + DataList1.Items.Count + "条搜索记录";//读取共有多少行记录
                //reader.Close();


                ////方法四：用Datalist和数据适配器，并实现点击标题内容后 跳转
                //SqlDataAdapter da = new SqlDataAdapter(sql, con);
                //DataSet fileset = new DataSet();
                //da.Fill(fileset);
                //DataList1.DataSource = fileset.Tables[0];
                //DataList1.DataBind();
                //lblmessage.Text = "共有" + DataList1.Items.Count + "条搜索记录";

            }
        }
    }
}
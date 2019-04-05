using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _5_12bprocedure_select : System.Web.UI.Page
{
    public static string connectionstring = ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString;
    SqlConnection conn = new SqlConnection(connectionstring);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            conn.Open();
            string employeesql = "select employeeid from employees order by employeeid ";
            SqlDataAdapter employeeda = new SqlDataAdapter(employeesql, conn);
            DataSet employeedataset = new DataSet();
            employeeda.Fill(employeedataset);
            employeelist.DataSource = employeedataset.Tables[0];
            employeelist.DataValueField = employeedataset.Tables[0].Columns[0].ColumnName;
            employeelist.DataTextField = employeedataset.Tables[0].Columns[0].ColumnName;
            employeelist.DataBind();
            conn.Close();
        }


    }
  
    protected void employeelist_SelectedIndexChanged1(object sender, EventArgs e)
    {
 SqlCommand cmd = new SqlCommand("pro_employees", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.Add(new SqlParameter("@employeeid", SqlDbType.Int));
        cmd.Parameters["@employeeid"].Value = employeelist.SelectedValue;

        using (conn)
        {
            conn.Open();
            using (SqlDataReader employeedr = cmd.ExecuteReader())
            {
                employeegridview.DataSource = employeedr;//将数据集employeedr作为GridView控件的数据源
                employeegridview.DataBind();      //将控件与数据源绑定 
            }
        }
    }
}

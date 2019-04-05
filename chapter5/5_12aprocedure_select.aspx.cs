using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class _5_12aprocedure_select : System.Web.UI.Page
{
    public static string connectionstring = ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString;
    SqlConnection conn = new SqlConnection(connectionstring);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            using (conn)
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
            }

        }
    }
  
    protected void employeelist_SelectedIndexChanged1(object sender, EventArgs e)
    {
SqlCommand cmd = new SqlCommand("pro_employees_name", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.Add(new SqlParameter("@employeeid", SqlDbType.Int));
        cmd.Parameters["@employeeid"].Value = employeelist.SelectedValue;

        cmd.Parameters.Add(new SqlParameter("@lastname", SqlDbType.NVarChar, 20));
        cmd.Parameters["@lastname"].Direction = ParameterDirection.Output;

        cmd.Parameters.Add(new SqlParameter("@firstname", SqlDbType.NVarChar, 20));
        cmd.Parameters["@firstname"].Direction = ParameterDirection.Output;
        using (conn)
        {
            conn.Open();
            using (SqlDataReader employeedr = cmd.ExecuteReader())
            {
                lblmessage.Text = employeelist.SelectedValue.ToString() + " 号雇员的姓名为：　<br/>" + cmd.Parameters["@lastname"].Value.ToString() + " . " + cmd.Parameters["@firstname"].Value.ToString();

            }
        }
    }
}

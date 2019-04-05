using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string strcon1 = ConfigurationManager.ConnectionStrings["ShoppingWebDBConnectionString"].ConnectionString;
        SqlConnection conn1 = new SqlConnection(strcon1);

        string ProductType, ProductName;
        ProductType = Request.Params["ProductType"];
        ProductName = Request.Params["ProductName"];
        DB dbsearch = new DB();
        SqlDataReader reader = dbsearch.Search_pro(ProductType, ProductName);
        DataList1.DataSource = reader;
        DataList1.DataBind();
        if (!reader.HasRows)
        {
            lblSearchInfo.Text = "<font color='red'>共有</font>" + DataList1.Items.Count + "<font color='red'>条搜索结果:</font>";
        }
        else
        {
            lblSearchInfo.Text = "<font color='red'>共有</font>" + DataList1.Items.Count + "<font color='red'>条搜索结果:</font>";

            reader.Read();
        }
    }
}
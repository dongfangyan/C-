using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _3_9ListCountry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //首次访问页面时，为blNation进行数据绑定
        if (Page.IsPostBack == false)
        {
            string[] strNation = { "中国", "美国", "英国" };
            blstNation.DataSource = strNation;
            blstNation.DataBind();


            //设置blNation控件的列表项的Value值，即，设置HyperLink的Url
            for (int i = 0; i < blstNation.Items.Count; i++)
                blstNation.Items[i].Value = (i + 1).ToString() + ".htm";

        }
    }
}
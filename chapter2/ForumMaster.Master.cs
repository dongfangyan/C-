using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace chapter2
{
    public partial class ForumMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)    //如果首次访问页面，设置Session("subjectID")的初始值为1。
            {
                Session["SubjectID"] = 1;      //将LinkButton所代表的论坛栏目编号保存在Session中
                this.ContentPlaceHolder1.FindControl("lblSubjectInfo").DataBind();      //内容页中的lblSubjectInfo控件进行数据绑定
            }
        }


        protected void lbtnNet_Click(object sender, EventArgs e)
        {
            Session["SubjectID"] = 1;      //将LinkButton所代表的论坛栏目编号保存在Session中
            this.ContentPlaceHolder1.FindControl("lblSubjectInfo").DataBind();      //内容页中的lblSubjectInfo控件进行数据绑定
        }

        protected void lbtnDelphi_Click(object sender, EventArgs e)
        {
            Session["SubjectID"] = 3;
            this.ContentPlaceHolder1.FindControl("lblSubjectInfo").DataBind();
        }

        protected void lbtnJava_Click(object sender, EventArgs e)
        {
            Session["SubjectID"] = 2;
            this.ContentPlaceHolder1.FindControl("lblSubjectInfo").DataBind();
        }

        protected void lbtnOracle_Click(object sender, EventArgs e)
        {
            Session["SubjectID"] = 4;
            this.ContentPlaceHolder1.FindControl("lblSubjectInfo").DataBind();
        }

      
    }
}
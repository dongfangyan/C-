using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.UI.HtmlControls;

namespace chapter2
{
    public partial class ForumPage : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected string GetSubjectInfo()
        {
            string strSubjectInfo = "";

            string subjectID = Session["SubjectID"].ToString();

            switch (subjectID)
            {
                case "1":
                    strSubjectInfo = "欢迎进入.NET编程世界！";
                    break;
                case "2":
                    strSubjectInfo = "欢迎进入Java编程世界！";
                    break;
                case "3":
                    strSubjectInfo = "欢迎进入Delphi编程世界！";
                    break;
                case "4":
                    strSubjectInfo = "欢迎进入Oracle编程世界！";
                    break;
            }
            return strSubjectInfo;
        }
    }
}
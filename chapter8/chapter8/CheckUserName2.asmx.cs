using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;

namespace chapter8
{
    /// <summary>
    /// CheckUserName2 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消对下行的注释。
     [System.Web.Script.Services.ScriptService]
    public class CheckUserName2 : System.Web.Services.WebService
    {

        [WebMethod]
        public string CheckUserName(string username)
        {

            string strResult = "";

            //创建Connection对象
            SqlConnection conn = new SqlConnection("persist security info=false;integrated security=sspi;database=chapter8;server=.\\SQLEXPRESS");
            //打开连接
            conn.Open();
            //创建Command对象，查询UserName等于指定字符串的条数
            SqlCommand command = new SqlCommand("select count(*) from userinfo where username=@username", conn);
            //为Command对象设置参数，并为参数赋值
            SqlParameter paramUserName = new SqlParameter("@username", SqlDbType.NVarChar);
            paramUserName.Value = username;

            command.Parameters.Add(paramUserName);
            //将返回的查询结果，即，用户名等于username的记录条数
            int count = (int)command.ExecuteScalar();

            //如果count=0，表示该用户名在表UserInfo中不存在；否则，表示该用户已经存在。通过Response对象将数据发送回客户端。
            if (count == 0)
                strResult = "用户名可用。";
            else
                strResult = "用户名已存在，请修改用户名。";


            return strResult;
        }
    }
}

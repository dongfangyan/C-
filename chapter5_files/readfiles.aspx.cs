using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class readfiles : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //1、如果文件名太长，只需要显示不超过指定长度如15个字符，则要截取字符串，在readfiles.aspx源代码视图中修改超链接linkfilename控件的Text属性绑定为：
        //  Text='<%# Eval("filename").ToString().Length>15?(Eval("filename").ToString().Substring(1,15)):Eval("filename") %>'>

        //2、如果要以代码形式访问数据库，查看文件内容，则修改超链接linkfilename控件的NavigateUrl值为：
        // NavigateUrl='<%# "~/readfiles_details_1.aspx?fileid="+Eval("fileid") %>' 
    
    }

   
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class _3_10FileUpload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        //获取当前目录
        string filePath = Server.MapPath("./");

        //判断文件上传控件中是否有文件
        if (FileUpload1.HasFile)
        {
            //判断文件的扩展名是否是txt
            if (Path.GetExtension(FileUpload1.FileName).ToLower() == ".txt")
            {
                try
                {
                    //保存文件到服务器
                    FileUpload1.SaveAs(filePath + FileUpload1.FileName);
                    lblMessage.Text = "文件上传成功！";
                    //获取文件的流对象
                    Stream fileStream = FileUpload1.FileContent;
                    StreamReader fileReader = new StreamReader(fileStream);
                    //从文件中读取第一行
                    string strLine = null;
                    //使用循环读取文件中的其他行，并在文本框中显示
                    while ((strLine = fileReader.ReadLine()) != null)
                    {
                        txtFileContent.Text += strLine + "\n";
                    }

                    //设置文本框可见
                    txtFileContent.Visible = true;
                }

                catch
                {
                    lblMessage.Text = "文件上传失败！";
                }
            }
        }
    }
}
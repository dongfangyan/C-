<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using System.Data.SqlClient;
using System.IO;
using System.Drawing;
public class Handler : IHttpHandler {

    public bool IsReusable
    {
        get { return true; }
    }

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "image/jpeg";
        context.Response.Cache.SetCacheability(HttpCacheability.Public);
        context.Response.BufferOutput = false;
        int EmployeeID = 1;
        int offset = 78;//去除78字节的表头
        if (context.Request.QueryString["EmployeeID"] != null && context.Request.QueryString["EmployeeID"] != "")
        {
            EmployeeID = Convert.ToInt32(context.Request.QueryString["EmployeeID"]);
            byte[] buffer = GetPhoto(EmployeeID);
            System.IO.MemoryStream mstream = new System.IO.MemoryStream();
            System.IO.MemoryStream stream = new System.IO.MemoryStream();
            mstream.Write(buffer, offset, buffer.Length - offset);
            System.Drawing.Bitmap bmp = new System.Drawing.Bitmap(mstream);
            Bitmap bmpTmp = new Bitmap(bmp.Width / 2, bmp.Height / 2);//尺寸缩小为50%
            Graphics g = Graphics.FromImage(bmpTmp);
            g.CompositingQuality = System.Drawing.Drawing2D.CompositingQuality.HighQuality;
            g.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.HighQualityBicubic;
            Rectangle destRect = new Rectangle(0, 0, bmpTmp.Width, bmpTmp.Height);
            Rectangle srcRect = new Rectangle(0, 0, bmp.Width, bmp.Height);
            g.DrawImage(bmp, destRect, srcRect, GraphicsUnit.Pixel);
            bmpTmp.Save(stream, System.Drawing.Imaging.ImageFormat.Jpeg);
            g.Dispose();
            bmp.Dispose();
            byte[] byteReturn = stream.ToArray();

            mstream.Close();
            stream.Close();

            context.Response.OutputStream.Write(byteReturn, 0, byteReturn.Length);
            context.Response.End();
        }
    }
    public byte[] GetPhoto(int EmployeeID)
    {
        String strConn = System.Configuration.ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(strConn);
        SqlCommand cmd = new SqlCommand("SELECT [Photo] from [Employees] where EmployeeID=@EmployeeID", conn);
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.Parameters.Add(new SqlParameter("@EmployeeID", EmployeeID));
        conn.Open();
        object result = cmd.ExecuteScalar();

        try
        {
            return (byte[])result;
        }
        catch 
        {
            return null;
        }
        finally
        {
            conn.Close();
        }
    }

}
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

/// <summary>
/// login 的摘要说明
/// </summary>
public class login
{
    public string strConn;
        protected string strSql1;
        protected string strSql2;
        protected string strSql3;
        protected string strUname;
        protected string strPwd;
        protected string strProblem;
        protected string strAnswer;
	public login()
	{
        strConn = ConfigurationManager.ConnectionStrings["ShoppingWebDBConnectionString"].ConnectionString;
	}
        
    public string UserName
    {
        get
        {
            return strUname;
        }
        set
        {
            strUname = value;
        }
    }
    public string PassWord
    {
        get
        {
            return strPwd;
        }
        set { 
            strPwd = value;
        }
    }
    public string Problem
    {
        get { return strProblem; }
        set { strProblem = value; }
    }
    public string Answer
    {
        get { return strAnswer; }
        set { strAnswer = value; }
    }
    public bool memberlogin()
    {
            strSql1 = "Select * from Users Where UserName='" + strUname + "'" + "And PassWord='" + strPwd + "'";
            SqlConnection strcon= new SqlConnection(strConn);
            strcon.Open();
            SqlCommand command= new SqlCommand(strSql1, strcon);
            SqlDataReader reader = command.ExecuteReader();

            if (reader.Read())
            {
                command.Dispose();
                strcon.Close();
                return true;
            }
            else
            {
                command.Dispose();
                strcon.Close();
                return false;
            }
            
    }
    public bool adminlogin()
    {
            strSql1 = "SELECT * from Admins where Name='" + strUname + "'" + "And PassWord='" + strPwd + "'";
            SqlConnection strcon = new SqlConnection(strConn);
            strcon.Open();
            SqlCommand command=new SqlCommand(strSql1, strcon);
            SqlDataReader reader = command.ExecuteReader();

            if (reader.Read())
            {
                command.Dispose();
                strcon.Close();
                return true;
            }
            else
            {
                command.Dispose();
                strcon.Close();
                return false;
            }
            
    }
    public bool changepwd()
    {
            strSql2 = "Select * from Users Where UserName='" + strUname + "'" + "And PassWord='" + strPwd + "'";
            SqlConnection  strcon =new SqlConnection(strConn);
            strcon.Open();
            SqlCommand command= new SqlCommand(strSql2, strcon);
            SqlDataReader reader = command.ExecuteReader();

            if (reader.Read())
            {
                command.Dispose();
                strcon.Close();
                return true;
            }
            else
            {
                command.Dispose();
                strcon.Close();
                return false;
            }
            
    }
    public bool Getpwd()
    {
            strSql3 = "Select * from Users Where UserName='" + strUname + "'" + "And Problem='" + strProblem + "'" + "And Answer='" + strAnswer + "'";
            SqlConnection strcon = new SqlConnection(strConn);
            strcon.Open();
            SqlCommand command=new SqlCommand(strSql3, strcon);
            SqlDataReader reader= command.ExecuteReader();

            if (reader.Read())
            {
                command.Dispose();
                strcon.Close();
                return true;
            }
            else
            {
                command.Dispose();
                strcon.Close();
                return false;
            }
            
    }
}

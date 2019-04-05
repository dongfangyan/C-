using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data ;

public partial class _6_5Teachers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void trvTeacherlist_TreeNodePopulate(object sender, TreeNodeEventArgs e)
    {
       if (e.Node.ChildNodes.Count ==0)
        {
           switch (e.Node .Depth )
           {                  
              case 0: 
                     //如果当前被选择的是第1层，则需要在他的下一层按需填充系部信息，
                    //调用自定义函数populatedepartment，填充第二层的节点
                   populatedepartment(e.Node);
                   break;
               case 1:   
                     //如果当前被选择的是第2层，则需要在他的下一层按需填充教师信息，
                     //调用自定义函数populateteacher，填充第三层的节点
                  populateteacher(e.Node);
                  break;
             }
        }
    }
        void populatedepartment(TreeNode node )
        { SqlCommand sqlcmd=new SqlCommand ();
            sqlcmd .CommandText ="select distinct department from teacherinfo";
           DataSet resultset=runquery(sqlcmd );

         if (resultset.Tables.Count > 0)          
         {  
           foreach (DataRow row in resultset.Tables[0].Rows )
           {//创建新的节点，注意新节点的text和value属性都为查询结果中department列的值
               TreeNode newnode =new TreeNode(row["department"].ToString (),row["department"].ToString ());
              newnode.PopulateOnDemand =true ;
               newnode .SelectAction =TreeNodeSelectAction.Expand ;
                node.ChildNodes.Add(newnode);
           }              
        }
        }
       void populateteacher(TreeNode node)
       { //创建第三层节点
         SqlCommand sqlcmd=new SqlCommand() ;
         sqlcmd.CommandText = "select teacherid,teachername from teacherinfo where department=@department";
         sqlcmd.Parameters.Add("@department", SqlDbType.Char).Value = node.Value;
         DataSet resultset = runquery(sqlcmd);
         if( resultset.Tables.Count > 0 )
         { //为查询结果resultset中的每一行创建新的节点         
           foreach (DataRow row in resultset.Tables [0].Rows )
          {   //创建新的节点，注意新节点的Value属性为查询结果中teacherid字段的值
              TreeNode newnode=new TreeNode (row["teachername"].ToString (),row["teacherid"].ToString ());
               newnode.PopulateOnDemand =false ;
                newnode.SelectAction = TreeNodeSelectAction.Select;
              node.ChildNodes.Add(newnode);
          }
         }
       }

   DataSet runquery(SqlCommand sqlcmd ) 
   { //  声明连接字符串
       string   constr = System.Configuration.ConfigurationManager.ConnectionStrings["teachersConnectionString"].ConnectionString;
       SqlConnection con=new SqlConnection ();
       con.ConnectionString = constr;
       con.Open();
       sqlcmd.Connection = con;

       SqlDataAdapter adp=new SqlDataAdapter ();
        adp.SelectCommand = sqlcmd;
        DataSet ds = new DataSet();
     // 执行查询语句，将结果填充到DataSet
        adp.Fill(ds);
    //  关闭连接
        con.Close();
    //  返回一个数据集
      return  ds;
   }
   
    
}
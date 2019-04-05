using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
public partial class AdminPages_Usermanage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { 
        if (this.IsPostBack==false  ) 
       {
        this.GridView1.DataSource =Membership .GetAllUsers();
        this.GridView1 .DataBind ();
        this.CheckBoxList1.DataSource =Roles.GetAllRoles ();
        this.CheckBoxList1.DataBind ();
        this.tbRoles .Visible =false ;
       }       

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        this.GridView1.EditIndex = e.NewEditIndex;
        this.GridView1.DataSource = Membership.GetAllUsers();
        this.GridView1.DataBind();

    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string  username  = this.GridView1.DataKeys[e.RowIndex ].Value.ToString() ;
        MembershipUser user = Membership.GetUser(username);
        CheckBox chkIsapproved=(CheckBox) this.GridView1.Rows[e.RowIndex].Cells[1].FindControl("chkIsApproved");
        TextBox txtEmail=(TextBox ) this.GridView1.Rows[e.RowIndex].Cells[2].FindControl("txtEmail");
        TextBox txtComment=(TextBox ) this.GridView1.Rows[e.RowIndex].Cells[3].FindControl("txtComment");
       
        user.IsApproved =chkIsapproved.Checked ;
        user.Email = txtEmail.Text;
        user.Comment =txtComment.Text;
       
        Membership.UpdateUser(user);
        this.GridView1.EditIndex = -1;
        this.GridView1.DataSource = Membership.GetAllUsers();
        this.GridView1.DataBind();

    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        this.GridView1.EditIndex = -1;
        this.GridView1.DataSource = Membership.GetAllUsers();
        this.GridView1.DataBind();

    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        String   username   = this.GridView1.DataKeys [e.RowIndex].Value.ToString ();      
        Membership.DeleteUser(username);
        this. GridView1.DataSource=Membership.GetAllUsers();
        this.GridView1.DataBind();

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string username = this.GridView1.SelectedValue.ToString();
        this.Label4.Text = "为用户<b>" + username + "</b>选择角色：";
        int i;
        for (i = 0; i <= this.CheckBoxList1.Items.Count - 1; i++)
        {
            if (Roles.IsUserInRole(username, this.CheckBoxList1.Items[i].Value))
            {
                this.CheckBoxList1.Items[i].Selected = true;
            }
            else
            {
                this.CheckBoxList1.Items[i].Selected = false;
            }

            this.tbRoles.Visible = true;
        }
    }
    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string  username  = this.GridView1.SelectedValue.ToString () ;
        int i;
        for (i=0;i<=this.CheckBoxList1 .Items .Count -1;i++)
        {
            if (this.CheckBoxList1.Items[i].Selected == true)
            {
                if (Roles.IsUserInRole(username, this.CheckBoxList1.Items[i].Value) == false)
                    Roles.AddUserToRole(username, this.CheckBoxList1.Items[i].Value);
            }
            else
                if (Roles.IsUserInRole(username, this.CheckBoxList1.Items[i].Value) == true)
                    Roles.RemoveUserFromRole(username, this.CheckBoxList1.Items[i].Value);
        } 

    }
}
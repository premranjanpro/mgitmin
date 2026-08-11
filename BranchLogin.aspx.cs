using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class BranchLogin : System.Web.UI.Page
{
    DbConnection _con;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public BranchLogin()
    {
        _con = new DbConnection();

    }




    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (this.IsValid)
        {
            if (_con.isDatabaseCanBeConnected())
            {

                SystemUser user = new SystemUser(txtUserName.Text);
                SqlCommand cmd = new SqlCommand("Select BRANCH_REGNO,BRANCH_NAME,BRANCH_EMAIL FROM BRANCH WHERE  upper(BRANCH_REGNO)=upper(@UserName) AND BRANCH_PASSWORD=@Password AND STATUS='ACTIVE'");
                cmd.Parameters.AddWithValue("@UserName", txtUserName.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                DataTable tblTemp = _con.getDataRows(cmd);

                if (tblTemp.Rows.Count > 0)
                {
                    double ddtime = Convert.ToDouble(Drop_Time.SelectedValue.ToString());
                    Response.Cookies["BranchMGITM"]["regno"] = tblTemp.Rows[0]["BRANCH_REGNO"].ToString();
                    Response.Cookies["BranchMGITM"]["status"] = "Active";
                    Response.Cookies["BranchMGITM"]["password"] = txtPassword.Text;
                    Response.Cookies["BranchMGITM"]["emailid"] = tblTemp.Rows[0]["BRANCH_EMAIL"].ToString();
                    Response.Cookies["BranchMGITM"]["name"] = tblTemp.Rows[0]["BRANCH_NAME"].ToString();

                    Response.Cookies["BranchMGITM"].Expires = DateTime.Now.AddMinutes(ddtime);

                    Response.Redirect("Branch/", false);
                }
                else
                {
                    Label1.Text = "Invalid  Username or Password";
                }
            }
        }
    }
}

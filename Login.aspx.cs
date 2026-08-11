using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    DbConnection _con = new DbConnection();

    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void login_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand cmd = new SqlCommand("spCheckUser", _con.GetConnection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandTimeout = 0;
            if (_con.isDatabaseCanBeConnected())
            {
                cmd.Parameters.Add(DbConnection.CreateParameter("UserId", DbType.String, username.Value));
                cmd.Parameters.Add(DbConnection.CreateParameter("password", DbType.String, password.Value));
                DataTable tblTemp = _con.getDataRows(cmd);
                if (tblTemp.Rows.Count > 0)
                {

                    Response.Cookies["MGITM"]["regno"] = tblTemp.Rows[0]["REGNO"].ToString();
                    Response.Cookies["MGITM"]["emailid"] = tblTemp.Rows[0]["EMAIL_ID"].ToString();
                    Response.Cookies["MGITM"]["name"] = tblTemp.Rows[0]["STUDENT_NAME"].ToString();
                    Response.Cookies["MGITM"]["status"] = "Active";
                    Response.Cookies["MGITM"]["password"] = username.Value;

                    //if (Checkbox_StaySigned_In.Checked)
                    Response.Cookies["MGITM"]["remember"] = "True";
                    //else
                    //    Response.Cookies["success"]["remember"] = "False";

                    Response.Cookies["MGITM"].Expires = DateTime.Now.AddDays(5);


                    Response.Redirect("~/User/Default.aspx?id=1", false);

                }
                else
                {
                    DataTable blockdt = _con.getDataRows("Select * From STUDENTMASTER Where (RegNo='" + username.Value + "' Or ID='" + username.Value + "') And Password='" + password.Value + "' And STATUS='ACTIVE'");
                    if (blockdt.Rows.Count > 0)
                    {
                        message.Show("Sorry Your ID is Blocked !!");
                    }
                    else
                    {
                        message.Show("Invalid Registration No Or Password !!");
                    }
                }
            }
        }
        catch (Exception ex)
        {
            message.Show(ex.ToString());
        }
    }
}

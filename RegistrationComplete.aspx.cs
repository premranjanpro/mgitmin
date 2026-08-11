using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class RegistrationComplete : System.Web.UI.Page
{
    DbConnection _con = new DbConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["RegNo"] != null && Request.QueryString["RegNo"] != "")
            {
                Statement(Request.QueryString["RegNo"].ToString());

            }



        }

    }


    public void Statement(string RegNo)
    {

        try
        {
            if (_con.isDatabaseCanBeConnected())
            {
                SqlCommand cmd = new SqlCommand("Sp_StudentMaster", _con.GetConnection);
                cmd.CommandTimeout = 0;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@REGNO", RegNo);
                SqlDataAdapter sdt = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sdt.Fill(dt);

                if (dt.Rows.Count > 0)
                {



                    lblregno.Text = dt.Rows[0]["RegNo"].ToString();
                    
                    lblname1.Text = dt.Rows[0]["Student_Name"].ToString();
                    lblname.Text = dt.Rows[0]["Student_Name"].ToString();

                    lblduration.Text = dt.Rows[0]["DurationName"].ToString();

                    lblcourseame.Text = dt.Rows[0]["CourseName"].ToString();

                    lblfather.Text = dt.Rows[0]["Father_Name"].ToString();

                    ImgStudent.ImageUrl = dt.Rows[0]["Upload_Image"].ToString();

                    lblregnoresult.Text = dt.Rows[0]["RegNo"].ToString();
                    lblbranchname.Text = dt.Rows[0]["BranchName"].ToString();
                    lbldateresult.Text = DateTime.Now.ToShortDateString();

                   
                }
            }
        }
        catch
        {
        }

    }

}

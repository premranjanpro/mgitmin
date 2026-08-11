using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Result : System.Web.UI.Page
{
    DbConnection _con = new DbConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        try
        {

            if (_con.isDatabaseCanBeConnected())
            {
                DataTable dt_Category = _con.getDataRows("Select A.FirstYear,A.ThirdYear,A.SecondYear,A.Total,A.ID,A.REGNO,A.Grade,A.NAME,A.FATHERNAME,A.CENTRENAME,A.COURSENAME,A.COURSEDURATION,CONVERT(VARCHAR(12),A.ISSUEDATE,113) AS ISSUEDATE,CONVERT(VARCHAR(12),A.COMPLETEDATE,113) AS COMPLETEDATE From RESULTVERIFICATION As A Where A.REGNO='" + txtregNo.Text + "'");
                if (dt_Category.Rows.Count > 0)
                {

                    paneldetails.Visible = true;
                    panelresultsearch.Visible = false;

                    lblname.Text = dt_Category.Rows[0]["NAME"].ToString();
                    lblfather.Text = dt_Category.Rows[0]["FATHERNAME"].ToString();
                    
                    lblcourseduration.Text = dt_Category.Rows[0]["COURSEDURATION"].ToString();
                    lblcoursename.Text = dt_Category.Rows[0]["COURSENAME"].ToString();
                    //lbldateofcomplete.Text = dt_Category.Rows[0]["COMPLETEDATE"].ToString();
                    lbldateofissue.Text = dt_Category.Rows[0]["ISSUEDATE"].ToString();

                    lblregnoresult.Text = dt_Category.Rows[0]["REGNO"].ToString();
                    //lbldateresult.Text = dt_Category.Rows[0]["ISSUEDATE"].ToString();

                    //lblbranchcode.Text = dt_Category.Rows[0]["branch_regno"].ToString();
                    //lblbranchname.Text = dt_Category.Rows[0]["branch_name"].ToString();
                    //lblbranchaddress.Text = dt_Category.Rows[0]["branch_address"].ToString();
                    //lblgrade.Text = dt_Category.Rows[0]["Grade"].ToString();
                    lblresult.Text = "PASS";

                    lblfirst.Text = dt_Category.Rows[0]["FirstYear"].ToString();
                    lblsecond.Text = dt_Category.Rows[0]["SecondYear"].ToString();
                    lblThird.Text = dt_Category.Rows[0]["ThirdYear"].ToString();
                    lbltotal.Text = dt_Category.Rows[0]["Total"].ToString();

                    if (txtregNo.Text.ToUpper() == "MGI/ACCA/08/1050")
                    {
                        DivSecond.Visible = false;
                    }
                    else
                    {
                        DivSecond.Visible=true;
                    }


                    if (txtregNo.Text.ToUpper() == "MGI/HM/17/1013")
                    {
                        imgProfile.Visible = true;
                        imgProfile.ImageUrl = "~/photos/MGIHM171013.jpeg";
                    }
                    else
                    {
                        imgProfile.Visible = false;
                    }

                    

                    if (txtregNo.Text.ToUpper() == "MGI/ME/11/1017" 
|| txtregNo.Text.ToUpper() == "MGI/ME/16/1015"
|| txtregNo.Text.ToUpper() == "MGI/ELEC/07/1011"
|| txtregNo.Text.ToUpper() == "MGI/CE/16/1001"
|| txtregNo.Text.ToUpper() == "MGI/ME/18/1021"
|| txtregNo.Text.ToUpper() == "MGI/ME/19/1026"
|| txtregNo.Text.ToUpper() == "MGI/CE/16/1002")
                    {
                        DivThird.Visible = true;
                    }
                    else
                    {
                        DivThird.Visible = false;
                    }


                }
                else
                {
                    message.Show("Sorry Details Not Found");
                    paneldetails.Visible = false;
                    panelresultsearch.Visible = true;
                }
            }
        }
        catch
        {
            message.Show("Sorry Result Not Found");
        }



    }
}

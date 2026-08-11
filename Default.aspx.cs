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

public partial class _Default : System.Web.UI.Page
{
    DbConnection _con = new DbConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            newsmaster();

            HomeDetails();
        }

    }

    public void newsmaster()
    {

        try
        {
            if (_con.isDatabaseCanBeConnected())
            {

                DataTable dt = _con.getDataRows("Select * From News Order By ID Desc");
                RepeaterNews.DataSource = dt;
                RepeaterNews.DataBind();



            }



        }
        catch
        {



        }



    }


    public void HomeDetails()
    {

        try
        {
            if (_con.isDatabaseCanBeConnected())
            {

                DataTable dt = _con.getDataRows("Select Top 3 * From Home Order By NewID()");
                RepeaterHome.DataSource = dt;
                RepeaterHome.DataBind();



            }



        }
        catch
        {



        }



    }
}

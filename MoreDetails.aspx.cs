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

public partial class MoreDetails : System.Web.UI.Page
{
    DbConnection _con = new DbConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != "" && Request.QueryString["id"] != null)
            {

                HomeDetails(Request.QueryString["id"].ToString());

            }
        }
    }

    public void HomeDetails(string strid)
    {

        try
        {
            if (_con.isDatabaseCanBeConnected())
            {

                DataTable dt = _con.getDataRows("Select * From Home Where ID='" + strid + "'");
                if (dt.Rows.Count > 0)
                {
                    lblmoretitle.Text = dt.Rows[0]["Head"].ToString();
                    lblmoredetails.Text = dt.Rows[0]["GalleryDesc"].ToString();
                    imgmore.ImageUrl = dt.Rows[0]["ImagePath"].ToString();


                }



            }



        }
        catch
        {



        }



    }
}

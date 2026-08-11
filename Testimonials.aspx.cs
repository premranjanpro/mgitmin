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

public partial class Testimonials : System.Web.UI.Page
{
    DbConnection _con = new DbConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            filltestimonials();
        }

    }


    public void filltestimonials()
    {
        DataTable dt = _con.getDataRows("Select * From Testimonials Where Status='Active' Order By Date Desc");
        RepeaterTestimonials.DataSource = dt;
        RepeaterTestimonials.DataBind();
    }
}

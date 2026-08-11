using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class SubHomeMaster : System.Web.UI.MasterPage
{
    DbConnection _con = new DbConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillsidehome();
        }
    }

    public void fillsidehome()
    {
        try
        {

            DataTable dt = _con.getDataRows("Select Top 2 * From SideHome Order By NewID()");
            RepeaterSideHome.DataSource = dt;
            RepeaterSideHome.DataBind();
        }
        catch
        {

        }


    }
}

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

public partial class Locations : System.Web.UI.Page
{
    DbConnection _con = new DbConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Branch_State();
            newsmaster("33");
        }

    }


    public void Branch_State()
    {
        if (_con.isDatabaseCanBeConnected())
        {
            SqlDataAdapter cadt = new SqlDataAdapter("select * from STATE", _con.GetConnection);
            DataTable c_dt = new DataTable();
            cadt.Fill(c_dt);
            Drpdown_StateName.Items.Clear();
            Drpdown_StateName.DataSource = c_dt;
            Drpdown_StateName.DataTextField = Convert.ToString(c_dt.Columns["STATE_NAME"]);
            Drpdown_StateName.DataValueField = Convert.ToString(c_dt.Columns["ID"]);
            Drpdown_StateName.DataBind();
            Drpdown_StateName.SelectedValue = "33";
        }

    }


    protected void Drpdown_StateName_SelectedIndexChanged(object sender, EventArgs e)
    {
        newsmaster(Drpdown_StateName.SelectedValue.ToString());
    }

    public void newsmaster(string strid)
    {

        try
        {
            if (_con.isDatabaseCanBeConnected())
            {

                DataTable dt = _con.getDataRows("Select * From BRANCH Where State_ID='" + strid + "' Order By ID Desc");
                RepeaterNews.DataSource = dt;
                RepeaterNews.DataBind();



            }



        }
        catch
        {



        }



    }
}

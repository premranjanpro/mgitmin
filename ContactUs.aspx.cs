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

public partial class ContactUs : System.Web.UI.Page
{
    DbConnection _con = new DbConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (_con.isDatabaseCanBeConnected())
        {
            try
            {
                SqlCommand cmd = new SqlCommand("select * from ContactUs", _con.GetConnection);
                DataTable filldt = new DataTable();
                SqlDataAdapter adt = new SqlDataAdapter(cmd);
                adt.Fill(filldt);
                RepeaterAddress.DataSource = filldt;
                RepeaterAddress.DataBind();
            }
            catch (Exception ex)
            {
                message.Show(ex.ToString());
            }
        }
    }
}

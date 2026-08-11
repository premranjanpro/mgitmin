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

public partial class Enquiry : System.Web.UI.Page
{
    DbConnection _con = new DbConnection();

    protected void Page_Load(object sender, EventArgs e)
    {


    }


    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (_con.isDatabaseCanBeConnected())
            {
                string strquery="Insert Into FeedBack(Name,Emailid,MobileNo,Message,Status,Date) Values ('"+txtname.Value+"','"+txtemail.Value+"','"+txtmobile.Value+"','"+txtmessage.Value+"','Unread',Getdate())";
                SqlCommand cmd = new SqlCommand(strquery, _con.GetConnection);
                int kk = cmd.ExecuteNonQuery();
                if (kk > 0)
                {
                    message.Show("Your message has been submitted successfuly. \n Our team will contact you very soon.");
                    txtname.Value = "";
                    txtemail.Value = "";
                    txtmobile.Value = "";
                    txtmessage.Value = "";
                }
                else
                {
                    message.Show("Sorry Service Unavailable");
                }

            }

        }
        catch(Exception ex)
        {
            message.Show(ex.ToString());
        }

    }
}

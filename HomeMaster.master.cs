using System;
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
using System.Text.RegularExpressions;
using System.Net;
using System.Collections.Generic;
using System.Web.Script.Serialization;

public partial class HomeMaster : System.Web.UI.MasterPage
{
    DbConnection _con = new DbConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Pop"] != null && Session["Pop"] != "")
            {

                saveipaddress();

            }
            else
            {

                Session["Pop"] = "Active";

            }
        }
    }
    public void saveipaddress()
    {
        try
        {

            string stripaddress = "";
            string strcountryname = "";
            string strcityname = "";
            string strregionname = "";
            string strcountrycode = "";
            string strlatitute = "";
            string strlongitude = "";
            string strtimezone = "";

            string ipAddress = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
            if (string.IsNullOrEmpty(ipAddress))
            {
                ipAddress = Request.ServerVariables["REMOTE_ADDR"];
            }

            string APIKey = "8a8575152cb32e8a771293cb79b627cd8477d059c5b9a8946611acf9f5d7df41";
            string url = string.Format("http://api.ipinfodb.com/v3/ip-city/?key={0}&ip={1}&format=json", APIKey, ipAddress);
            using (WebClient client = new WebClient())
            {
                string json = client.DownloadString(url);
                Location location = new JavaScriptSerializer().Deserialize<Location>(json);
                List<Location> locations = new List<Location>();
                locations.Add(location);

                foreach (var value in locations)
                {

                    stripaddress = value.IPAddress;
                    strcountryname = value.CountryName;
                    strcityname = value.CityName;
                    strregionname = value.RegionName;
                    strcountrycode = value.CountryCode;
                    strlatitute = value.Latitude;
                    strlongitude = value.Longitude;
                    strtimezone = value.TimeZone;
                }

                string str_ip_address = HttpContext.Current.Request.UserHostName.ToString();

                string str_user_agent = HttpContext.Current.Request.ServerVariables["HTTP_USER_AGENT"];
                string str_browser = Request.Browser.Browser.ToString();
                string str_browser_version = Request.Browser.Version.ToString();
                string str_os_name = Request.Browser.Platform.ToString();

                if (_con.isDatabaseCanBeConnected())
                {

                    SqlCommand cmd = new SqlCommand("SP_IP_ACCESS_DETAILS", _con.GetConnection);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@REGNO", SqlDbType.VarChar).Value = "";
                    cmd.Parameters.Add("@IP_ADDRESS", SqlDbType.VarChar).Value = str_ip_address;
                    cmd.Parameters.Add("@IP_ADDRESSAPI", SqlDbType.VarChar).Value = stripaddress;
                    cmd.Parameters.Add("@Provider", SqlDbType.VarChar).Value = str_browser;
                    cmd.Parameters.Add("@USER_AGENT", SqlDbType.VarChar).Value = str_user_agent;
                    cmd.Parameters.Add("@USER_BROWSER", SqlDbType.VarChar).Value = str_browser;
                    cmd.Parameters.Add("@USER_BROWSER_VER", SqlDbType.VarChar).Value = str_browser_version;
                    cmd.Parameters.Add("@USER_OS", SqlDbType.VarChar).Value = str_os_name;
                    cmd.Parameters.Add("@COUNTRY", SqlDbType.VarChar).Value = strcountryname;
                    cmd.Parameters.Add("@COUNTRYCODE", SqlDbType.VarChar).Value = strcountrycode;
                    cmd.Parameters.Add("@CITY", SqlDbType.VarChar).Value = strcityname;
                    cmd.Parameters.Add("@REGION", SqlDbType.VarChar).Value = strregionname;
                    cmd.Parameters.Add("@LATITUDE", SqlDbType.VarChar).Value = strlatitute;
                    cmd.Parameters.Add("@LONGITUDE", SqlDbType.VarChar).Value = strlongitude;
                    cmd.Parameters.Add("@TIMEZONE", SqlDbType.VarChar).Value = strtimezone;
                    int kk = cmd.ExecuteNonQuery();

                }
            }
        }


        catch
        {

        }



    }

}

public class Location
{
    public string IPAddress { get; set; }
    public string CountryName { get; set; }
    public string CountryCode { get; set; }
    public string CityName { get; set; }
    public string RegionName { get; set; }
    public string ZipCode { get; set; }
    public string Latitude { get; set; }
    public string Longitude { get; set; }
    public string TimeZone { get; set; }
}
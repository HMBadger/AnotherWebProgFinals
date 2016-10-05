using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AnotherWebProgFinals
{
    public partial class WebUserMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string queryString = "SELECT strLogoPath FROM dbo.LogoBanner";

            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["webprog"].ConnectionString))
            {
                SqlCommand command = new SqlCommand(queryString, connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                try
                {
                    while (reader.Read())
                    {
                        //string cityBanner = "../" + (String)reader["strBannerPath"];
                        string cityLogo = (String)reader["strLogoPath"];
                        //CityBanner.ImageUrl = cityBanner;
                        CityLogo.ImageUrl = cityLogo;
                    }
                }
                catch (Exception ex)
                {

                }
            }

        }
    }
}
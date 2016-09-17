using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AnotherWebProgFinals.Administrator
{
    public partial class logo_banner : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string queryString = "SELECT strLogoPath, strBannerPath FROM dbo.LogoBanner;";
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["webprog"].ConnectionString))
            {
                SqlCommand command = new SqlCommand(queryString, connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                try
                {
                    while (reader.Read())
                    {
                        string cityLogo = "../" + (String)reader["strLogoPath"];
                        EditCityLogo.ImageUrl = cityLogo;
                        string cityBanner = "../" + (String)reader["strBannerPath"];
                        EditCityBanner.ImageUrl = cityBanner;
                        
                    }
                }
                catch (Exception ex)
                {

                }
            }
        }

        protected void UploadLogoButton_Click(object sender, EventArgs e)
        {
            if (cityLogoFileUpload.HasFile)
            {
                try
                {

                    string filename = Path.GetFileName(cityLogoFileUpload.FileName);
                    cityLogoFileUpload.SaveAs(Server.MapPath("~/images/") + filename);

                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["webprog"].ConnectionString);

                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;

                    SqlDataAdapter da = new SqlDataAdapter();
                    da.UpdateCommand = new SqlCommand(@"Update [LogoBanner] Set strLogoPath = @strLogoPath Where LogoBannerID = " + 1, con);


                    da.UpdateCommand.Parameters.Add("@strLogoPath", SqlDbType.NVarChar).Value = "images/" + filename;

                    con.Open();
                    da.UpdateCommand.ExecuteNonQuery();
                    con.Close();

                    EditCityLogo.ImageUrl = "~/images/" + filename;
                    

                }
                catch (Exception ex)
                {

                }
            }
        }

        protected void UploadBannerButton_Click(object sender, EventArgs e)
        {
            if (cityBannerFileUpload.HasFile)
            {
                try
                {

                    string filename = Path.GetFileName(cityBannerFileUpload.FileName);
                    cityBannerFileUpload.SaveAs(Server.MapPath("~/images/") + filename);

                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["webprog"].ConnectionString);

                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;

                    SqlDataAdapter da = new SqlDataAdapter();
                    da.UpdateCommand = new SqlCommand(@"Update [LogoBanner] Set strBannerPath = @strBannerPath Where LogoBannerID = " + 1, con);


                    da.UpdateCommand.Parameters.Add("@strBannerPath", SqlDbType.NVarChar).Value = "images/" + filename;

                    con.Open();
                    da.UpdateCommand.ExecuteNonQuery();
                    con.Close();

                    EditCityBanner.ImageUrl = "~/images/" + filename;

                }
                catch (Exception ex)
                {

                }
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AnotherWebProgFinals
{
    public partial class admin_login : System.Web.UI.Page
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
                        string cityLogo = (String)reader["strLogoPath"];
                        CityLogo.ImageUrl = cityLogo;
                        //CityLogo.ImageUrl = cityLogo;
                    }
                }
                catch (Exception ex)
                {

                }
            }
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["webprog"].ConnectionString))
            {
                string loginQuery = "SELECT COUNT(*) FROM dbo.AdminTable WHERE strUsername = @username AND strPassword = @userpassword";
                int result = 0;
                SqlCommand cmd = new SqlCommand(loginQuery, connection);
                cmd.Parameters.AddWithValue("@username", UserName.Value);
                cmd.Parameters.AddWithValue("@userpassword", UserPassword.Value);
                connection.Open();
                Session["Admin"] = UserName.Value;
                result = (int)cmd.ExecuteScalar();
                if (result > 0)
                {
                    Response.Redirect("~/Administrator/dashboard.aspx");
                }
                else
                {
                    Response.Redirect("admin_login.aspx");
                }
            }

        }
    }
}
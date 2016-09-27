using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace AnotherWebProgFinals.Administrator
{
    public partial class localoff_maintenance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string queryString = "SELECT strFullName, strAuthLevel, strImagePath FROM dbo.CityOfficials";
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["webprog"].ConnectionString))
            {
                SqlCommand command = new SqlCommand(queryString, connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                try
                {
                    while (reader.Read())
                    {

                        officialName.Text = (String)reader["strFullName"];
                        officialPosition.Text = (String)reader["strAuthLevel"];
                        string offImage = "../" + (String)reader["strImagePath"];
                        OfficialImage.ImageUrl = offImage;
                    }

                }
                catch (Exception ex)
                {

                }
            }
        }

    }
}
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
    public partial class WebAdminMaster : System.Web.UI.MasterPage
    {
        string queryString = "SELECT * FROM dbo.AdminTable";
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["webprog"].ConnectionString))
            {
                SqlCommand command = new SqlCommand(queryString, connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                try
                {
                    while (reader.Read())
                    {
                        string adminName = (String)reader["strFullName"];
                        Label1.Text = adminName;

                    }
                }
                catch (Exception ex)
                {

                }
            }
        }
    }
}
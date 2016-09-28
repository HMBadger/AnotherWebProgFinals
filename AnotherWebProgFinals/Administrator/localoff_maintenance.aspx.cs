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
                tblBody.InnerHtml = "";
                try
                {
                    while (reader.Read())
                    {
                        /**
                        officialName.Text = (String)reader["strFullName"];
                        officialPosition.Text = (String)reader["strAuthLevel"];
                        string offImage = "../" + (String)reader["strImagePath"];
                        OfficialImage.ImageUrl = offImage;**/

                        string strN = (String)reader["strFullName"];
                        string strPos = (String)reader["strAuthLevel"];
                        string offImage = "../" + (String)reader["strImagePath"];
                        

                        String strNum = "" + reader.GetValue(0) + "";
                        String strName = string.Concat(strNum, strN);
                        String strPosition = string.Concat(strNum, strPos);
                        String strImage = string.Concat(strNum, offImage);

                        tblBody.InnerHtml = "<tr><td class='center'>" + strName +"</td><td class= 'center'>"+ strPosition + "</td><td class = 'center'>"+strImage+"</td><td class='center'><a class ='waves-effect waves-light btn green modal-trigger' href=''>Edit</a></td>" + "<td class= 'center'><a class ='waves-effect waves-light btn green modal-trigger' href=''>Delete</a></td></tr>";
                    }

                }
                catch (Exception ex)
                {

                }
            }
        }

    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
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

        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["webprog"].ConnectionString);

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            SqlDataAdapter da = new SqlDataAdapter();

            try
            {
                da.InsertCommand = new SqlCommand(@"INSERT INTO [CityOfficials] ([strFullName], [strImagePath], [strPosition], [strPositionDesc], [strAdditionalDetails], [boolIsActive]) VALUES (@strFullName, @strImagePath, @strPosition, @strPositionDesc, @strAdditionalDetails, 1)", con);

                da.InsertCommand.Parameters.Add("@strFullName", SqlDbType.NVarChar).Value = strFullName.Text;

                if (cityOfficialFileUpload.HasFile)
                {

                    string filename = Path.GetFileName(cityOfficialFileUpload.FileName);
                    cityOfficialFileUpload.SaveAs(Server.MapPath("~/images/") + filename);

                    da.InsertCommand.Parameters.Add("@strImagePath", SqlDbType.NVarChar).Value = "images/" + filename;

                }
                else da.InsertCommand.Parameters.Add("@strImagePath", SqlDbType.NVarChar).Value = null;


                da.InsertCommand.Parameters.Add("@strPosition", SqlDbType.NVarChar).Value = strPosition.Text;
                da.InsertCommand.Parameters.Add("@strPositionDesc", SqlDbType.NVarChar).Value = strPositionDesc.Text;
                da.InsertCommand.Parameters.Add("@strAdditionalDetails", SqlDbType.NVarChar).Value = strAdditionalDetails.Text;

                con.Open();
                da.InsertCommand.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {

            }

            Response.Redirect("~/Administrator/localoff_maintenance.aspx");
        }
    }

}
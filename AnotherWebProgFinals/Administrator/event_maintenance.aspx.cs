using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AnotherWebProgFinals.Administrator
{
    public partial class event_maintenance : System.Web.UI.Page
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

            DateTime dateTimeNow = new DateTime();
            dateTimeNow = DateTime.Now; // Return 00/00/0000 00:00:00
            var dateOnlyString = dateTimeNow.ToShortDateString(); //Return 00/00/0000

            try
            {
                da.InsertCommand = new SqlCommand(@"INSERT INTO [CityEvents] ([Events_Title], [Events_StartDate], [Events_EndDate], [Events_Location], [Events_Details], [Events_IsActive], [Events_DatePosted]) VALUES (@Events_Title, @Events_StartDate, @Events_EndDate, @Events_Location, @Events_Details, 1, @Events_DatePosted)", con);


                da.InsertCommand.Parameters.Add("@Events_Title", SqlDbType.NVarChar).Value = Events_Title.Text;
                da.InsertCommand.Parameters.Add("@Events_StartDate", SqlDbType.NVarChar).Value = Events_StartDate.Text;
                da.InsertCommand.Parameters.Add("@Events_EndDate", SqlDbType.NVarChar).Value = Events_EndDate.Text;
                da.InsertCommand.Parameters.Add("@Events_Location", SqlDbType.NVarChar).Value = Events_Location.Text;
                da.InsertCommand.Parameters.Add("@Events_Details", SqlDbType.NVarChar).Value = Events_Details.Text;
                da.InsertCommand.Parameters.Add("@Events_DatePosted", SqlDbType.NVarChar).Value = dateOnlyString;

                con.Open();
                da.InsertCommand.ExecuteNonQuery();
                con.Close();
            }
            catch(Exception ex)
            {

            }

            Response.Redirect("~/Administrator/event_maintenance.aspx");
        }
    }
}
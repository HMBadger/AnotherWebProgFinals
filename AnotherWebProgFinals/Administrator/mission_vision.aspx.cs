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
    public partial class mission_vision : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string queryString = "SELECT txtVision, txtMission FROM dbo.CityVision, dbo.CityMission;";
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["webprog"].ConnectionString))
            {
                SqlCommand command = new SqlCommand(queryString, connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                try
                {
                    while (reader.Read())
                    {
                        visionLabel.Text = (String)reader["txtVision"];
                        missionLabel.Text = (String)reader["txtMission"];
                    }
                }
                catch (Exception ex)
                {

                }
            }
        }

        protected void VisionUpdateButton_Click(object sender, EventArgs e)
        {
            string vision = EdittxtVision.Text;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["webprog"].ConnectionString);

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            SqlDataAdapter da = new SqlDataAdapter();
            da.UpdateCommand = new SqlCommand(@"Update [CityVision] Set txtVision = @txtVision Where VisionID = " + 1, con);


            da.UpdateCommand.Parameters.Add("@txtVision", SqlDbType.VarChar).Value = vision;

            con.Open();
            da.UpdateCommand.ExecuteNonQuery();
            con.Close();

            EdittxtVision.Text = vision;

            Response.Redirect("~/Administrator/mission_vision.aspx");
        }

        protected void VisionDeleteButton_Click(object sender, EventArgs e)
        {
            string vision = DeltxtVision.Text;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["webprog"].ConnectionString);

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            SqlDataAdapter adap = new SqlDataAdapter();
            adap.DeleteCommand = new SqlCommand(@"Update [CityVision] Set txtVision = @txtVision Where VisionID = " + 1, con);
            string newVision = "";

            adap.DeleteCommand.Parameters.Add("@txtVision", SqlDbType.VarChar).Value = newVision;

            con.Open();
            adap.DeleteCommand.ExecuteNonQuery();
            con.Close();

            Response.Redirect("~/Administrator/mission_vision.aspx");
        }

        //MISSION
        protected void MissionUpdateButton_Click(object sender, EventArgs e)
        {
            string mission = EdittxtMission.Text;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["webprog"].ConnectionString);

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            SqlDataAdapter da = new SqlDataAdapter();
            da.UpdateCommand = new SqlCommand(@"Update [CityMission] Set txtMission = @txtMission Where MissionID = " + 1, con);


            da.UpdateCommand.Parameters.Add("@txtMission", SqlDbType.VarChar).Value = mission;

            con.Open();
            da.UpdateCommand.ExecuteNonQuery();
            con.Close();

            EdittxtMission.Text = mission;

           Response.Redirect("~/Administrator/mission_vision.aspx");
        }

        protected void MissionDeleteButton_Click(object sender, EventArgs e)
        {
            string mission = DeltxtMission.Text;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["webprog"].ConnectionString);

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            SqlDataAdapter adap = new SqlDataAdapter();
            adap.DeleteCommand = new SqlCommand(@"Update [CityMission] Set txtMission = @txtMission Where MissionID = " + 1, con);
            string newMission = "";

            adap.DeleteCommand.Parameters.Add("@txtMission", SqlDbType.VarChar).Value = newMission;

            con.Open();
            adap.DeleteCommand.ExecuteNonQuery();
            con.Close();

            Response.Redirect("~/Administrator/mission_vision.aspx");
        }
    }
}
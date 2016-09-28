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
    public partial class ann_maintenance : System.Web.UI.Page
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
            da.InsertCommand = new SqlCommand(@"INSERT INTO [CityAnnouncements] ([Announce_Title], [Announce_DatePosted], [Announce_Details], [Announce_IsActive]) VALUES (@Announce_Title, @Announce_DatePosted, @Announce_Details, @Announce_IsActive)", con);

            
            da.InsertCommand.Parameters.Add("@Announce_Title", SqlDbType.VarChar).Value = Announce_Title.Text;
            da.InsertCommand.Parameters.Add("@Announce_DatePosted", SqlDbType.Date).Value = DateTime.Now;
            da.InsertCommand.Parameters.Add("@Announce_Details", SqlDbType.VarChar).Value = Announce_Details.Text;
            da.InsertCommand.Parameters.Add("@Announce_IsActive", SqlDbType.TinyInt).Value = 1;

            con.Open();
            da.InsertCommand.ExecuteNonQuery();
            con.Close();
            
            Response.Redirect("~/Administrator/ann_maintenance.aspx");
        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            //int old = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["webprog"].ConnectionString);

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;


            SqlDataAdapter da = new SqlDataAdapter();
            da.DeleteCommand = new SqlCommand(@"DELETE FROM [CityAnnouncements] WHERE [AnnounceID] = @old_AnnounceID", con);
            
            con.Open();
            da.DeleteCommand.ExecuteNonQuery();
            con.Close();

            Response.Redirect("~/Administrator/ann_maintenance.aspx");
        }
    }
}
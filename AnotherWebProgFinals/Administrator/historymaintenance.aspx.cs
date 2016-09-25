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
    public partial class historymaintenance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string queryString = "SELECT strDate, strHistoryTitle, txtHistory FROM dbo.CityHistory;";
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["webprog"].ConnectionString))
            {
                SqlCommand command = new SqlCommand(queryString, connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                try
                {
                    while (reader.Read())
                    {
                        dateLabel.Text = (String)reader["strDate"];
                        titleLabel.Text = (String)reader["strHistoryTitle"];
                        detailLabel.Text = (String)reader["txtHistory"];

                      /**  EditdtHistory.Text = readDate;
                        EditstrHistoryTitle.Text = readTitle;
                        EdittxtHistory.Text = readDetail;

                        DelDate.Text = readDate;
                        DelTitle.Text = readTitle;
                        DelText.Text = readDetail;**/
                    }
                }
                catch (Exception ex)
                {

                }
            }
        }
       /* protected void AddButton_Click(object sender, EventArgs e)
        {
            string Adddate = AdddtHistory.Text;
            string Addtitle = AddstrHistoryTitle.Text;
            string Adddetail = AddtxtHistory.Text;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["webprog"].ConnectionString);

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            SqlDataAdapter da = new SqlDataAdapter();
            string que = "INSERT INTO CityHistory (strDate, strHistoryTitle, txtHistory)" + "VALUES (@strDate, @strHistoryTitle, @txtHistory)";
            da.UpdateCommand = new SqlCommand(que, con);


            da.UpdateCommand.Parameters.Add("@strDate", SqlDbType.VarChar).Value = Adddate;
            da.UpdateCommand.Parameters.Add("@strHistoryTitle", SqlDbType.VarChar).Value = Addtitle;
            da.UpdateCommand.Parameters.Add("@txtHistory", SqlDbType.VarChar).Value = Adddetail;

            con.Open();
            da.UpdateCommand.ExecuteNonQuery();
            con.Close();

            Response.Redirect("~/Administrator/historymaintenance.aspx");
        }*/
        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            string date = EditdtHistory.Text;
            string title = EditstrHistoryTitle.Text;
            string detail = EdittxtHistory.Text;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["webprog"].ConnectionString);

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            SqlDataAdapter da = new SqlDataAdapter();
            da.UpdateCommand = new SqlCommand(@"Update [CityHistory] Set strDate = @strDate, strHistoryTitle = @strHistoryTitle, txtHistory = @txtHistory Where HistoryID = " + 1, con);


            da.UpdateCommand.Parameters.Add("@strDate", SqlDbType.VarChar).Value = date;
            da.UpdateCommand.Parameters.Add("@strHistoryTitle", SqlDbType.VarChar).Value = title;
            da.UpdateCommand.Parameters.Add("@txtHistory", SqlDbType.VarChar).Value = detail;

            con.Open();
            da.UpdateCommand.ExecuteNonQuery();
            con.Close();

            EditdtHistory.Text = date;
            EditstrHistoryTitle.Text = title;
            EdittxtHistory.Text = detail;

            Response.Redirect("~/Administrator/historymaintenance.aspx");
        }
        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            string date = EditdtHistory.Text;
            string title = EditstrHistoryTitle.Text;
            string detail = EdittxtHistory.Text;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["webprog"].ConnectionString);

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            SqlDataAdapter adap = new SqlDataAdapter();
            adap.DeleteCommand = new SqlCommand(@"Update [CityHistory] Set strDate = @strDate, strHistoryTitle = @strHistoryTitle, txtHistory = @txtHistory Where HistoryID = " + 1, con);
            string newDate = "";
            string newTitle = "";
            string newDetail = "";

            adap.DeleteCommand.Parameters.Add("@strDate", SqlDbType.VarChar).Value = newDate;
            adap.DeleteCommand.Parameters.Add("@strHistoryTitle", SqlDbType.VarChar).Value = newTitle;
            adap.DeleteCommand.Parameters.Add("@txtHistory", SqlDbType.VarChar).Value = newDetail;

            con.Open();
            adap.DeleteCommand.ExecuteNonQuery();
            con.Close();

            Response.Redirect("~/Administrator/historymaintenance.aspx");
        }
    }
}
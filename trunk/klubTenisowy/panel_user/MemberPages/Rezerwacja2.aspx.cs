using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;

public partial class MemberPages_Rezerwacja2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection connection = new SqlConnection(SqlDataSource1.ConnectionString))
        {
            using (SqlCommand command = new SqlCommand())
            {
                command.Connection = connection;            
                command.CommandType = CommandType.Text;
                command.CommandText = "INSERT INTO Rezerwacje (poczatek, koniec) VALUES (@poczatek, @koniec)";
                command.Parameters.AddWithValue("@poczatek", Textstart.Text);
                command.Parameters.AddWithValue("@koniec", Textkoniec.Text);

                try
                {
                    connection.Open();
                    int recordsAffected = command.ExecuteNonQuery();
                }
                catch (SqlException ex)
                {
                    Response.Write("To nie jest prawidłowy format daty" +ex.Message);
                }
                finally
                {
                    connection.Close();
                }
            }
        }
        Response.Redirect("~/MemberPages/Potwierdzenie.aspx");
    }
}
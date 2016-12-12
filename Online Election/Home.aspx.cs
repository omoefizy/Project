using System;
using System.Collections.Generic;
using System.Data.SqlClient;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=Election;Integrated Security=True");
        string com = "SELECT COUNT (DISTINCT UserId) FROM Details";
        con.Open();
        SqlCommand cmd = new SqlCommand(com, con);
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        Count.Text = dr[0].ToString();
    }
}
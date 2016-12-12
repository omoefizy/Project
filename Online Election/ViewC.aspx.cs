using System;
using System.Data.SqlClient;

public partial class ViewC : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string kl = Session["Name"].ToString();
        SqlConnection con = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=Election;Integrated Security=True");
        string com = "Select Name,Address,Mobile,Image,Descp,School,Dept,Mat_No,Level,Country from Candi where Name='" +kl+ "'";
        con.Open();
        SqlCommand cmd = new SqlCommand(com, con);
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        Cname.Text = dr[0].ToString();
        Desc.Text = dr[4].ToString();
        Addr.Text = dr[1].ToString();
        Mob.Text = dr[2].ToString();
        string s = dr[3].ToString();
        Image1.ImageUrl = s;
        Label3.Text = dr[5].ToString();
        Label7.Text = dr[6].ToString();
        Label15.Text = dr[7].ToString();
        Label13.Text = dr[8].ToString();
        con.Close();
    }
}
using System;
using System.Data.SqlClient;
using System.Data;

public partial class Result : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=Election;Integrated Security=True");
            SqlDataAdapter da;
            DataSet ds = new DataSet();
            string s = "select EId from Election where Result is not NULL";
            da = new SqlDataAdapter(s, con);
            da.Fill(ds);
            int i = ds.Tables[0].Rows.Count;
            if (i > 0)
            {
                
                    for (int p = 0; p < i; p++)
                    {
                        DropDownList1.Items.Add(ds.Tables[0].Rows[p][0].ToString());
                    }
                

            }
        }


    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=Election;Integrated Security=True");
        SqlCommand cmd;
        SqlDataReader dr;
        con.Open();
        string s = "select Result from Election where EId='" + DropDownList1.Text + "'";
        cmd = new SqlCommand(s, con);
        dr = cmd.ExecuteReader();
        dr.Read();
        TextBox1.Text = Convert.ToString(dr[0]);
       
        con.Close();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}
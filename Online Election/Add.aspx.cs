using System;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;

public partial class Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["Add"]=="Data")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Data Inserted')", true);
            TextBox1.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            Session["Add"] = "";
        }
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=Election;Integrated Security=True");
            string com = "select top 1 EId From Election ORDER BY EId Desc;";
            con.Open();
            SqlCommand cmd = new SqlCommand(com, con);
            object count = cmd.ExecuteScalar();
            if (count != null)
            {
                int i = Convert.ToInt32(count);
                i++;
                TextBox6.Text = i.ToString();
            }
            else
            {
                TextBox6.Text = "101";
            }
            con.Close();
           
            SqlDataAdapter da = new SqlDataAdapter("Select Name from Candi",con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            int row = ds.Tables[0].Rows.Count;
            for (int i = 0; i < row; i++)
            {
                TextBox2.Items.Add(ds.Tables[0].Rows[i][0].ToString());
                TextBox3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
                TextBox4.Items.Add(ds.Tables[0].Rows[i][0].ToString());
                TextBox5.Items.Add(ds.Tables[0].Rows[i][0].ToString());
            }
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.Text == "2")
        {
            Label5.Visible = true;
            TextBox2.Visible = true;

            Label6.Visible = true;
            TextBox3.Visible = true;

            Label7.Visible = false;
            TextBox4.Visible = false;

            Label8.Visible = false;
            TextBox5.Visible = false;

            Panel1.Visible = true;
        }
        else if (DropDownList1.Text == "3")
        {
            Label5.Visible = true;
            TextBox2.Visible = true;

            Label6.Visible = true;
            TextBox3.Visible = true;

            Label7.Visible = true;
            TextBox4.Visible = true;

            Label8.Visible = false;
            TextBox5.Visible = false;

            Panel1.Visible = true;
        }
        else if (DropDownList1.Text == "4")
        {
            Label5.Visible = true;
            TextBox2.Visible = true;

            Label6.Visible = true;
            TextBox3.Visible = true;

            Label7.Visible = true;
            TextBox4.Visible = true;

            Label8.Visible = true;
            TextBox5.Visible = true;

            Panel1.Visible = true;
        }
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        string c1 = "", c2 = "", c3 = "", c4 = "";
        if (DropDownList1.Text == "2")
        {
            c1 = TextBox2.Text;
            c2 = TextBox3.Text;
            c3 = "NULL";
            c4 = "NULL";
        }
        else if (DropDownList1.Text == "3")
        {
            c1 = TextBox2.Text;
            c2 = TextBox3.Text;
            c3 = TextBox4.Text;
            c4 = "NULL";
        }
        else if (DropDownList1.Text == "4")
        {
            c1 = TextBox2.Text;
            c2 = TextBox3.Text;
            c3 = TextBox4.Text;
            c4 = TextBox5.Text;
        }

        SqlConnection con = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=Election;Integrated Security=True");
        string com = "Insert into Election (EId,ETopic,ECNo,EC1,EC2,EC3,EC4,EndDate) values ('" + TextBox6.Text + "','" + TextBox1.Text + "','" + DropDownList1.Text + "','" + c1 + "','" + c2 + "','" + c3 + "','" + c4 + "','" + TextBox7.Text + "')";
        con.Open();
        SqlCommand cmd = new SqlCommand(com, con);
        cmd.ExecuteNonQuery();
        con.Close();

        con = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=Election;Integrated Security=True");
        com = "Insert into Vote (EId,ETopic,EC1,EC2,EC3,EC4) values ('" + TextBox6.Text + "','" + TextBox1.Text + "','0','0','0','0')";
        con.Open();
        cmd = new SqlCommand(com, con);
        cmd.ExecuteNonQuery();
        con.Close();
        Session["Add"] = "Data";
        Response.Redirect("Add.aspx");
        
    }
}
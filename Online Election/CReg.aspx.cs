using System;
using System.Web.UI;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.IO;
using System.Data;
using System.Text;
using System.Web.UI.WebControls;

public partial class CReg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=Election;Integrated Security=True";
        con.Open();
        SqlCommand cmd;
        string com = "select top 1 UserId From Details ORDER BY UserId Desc;";

        cmd = new SqlCommand(com, con);
        object count = cmd.ExecuteScalar();
        if (count != null)
        {
            int i = Convert.ToInt32(count);
            i++;
            TextBox1.Text = i.ToString();

        }
        else
        {
            TextBox1.Text = "1";
        }
        con.Close();
    }

    public string check()
    {
        if (TextBox1.Text == "")
        {
            return "User ID";
        }
        else if (TextBox2.Text == "")
        {
            return "Name";
        }
        else if (TextBox3.Text == "")
        {
            return "Address";
        }
        else if (TextBox4.Text == "")
        {
            return "Mobile No";
        }
        else if (TextBox5.Text == "")
        {
            return "Email";
        }
        else if (TextBox6.Text == "")
        {
            return "Password";
        }
        return "OK";
    }

    public string passCheck()
    {
        if (TextBox6.Text != TextBox7.Text)
        {
            return "wrong";
        }
        return "OK";
    }

    public string checkID()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=Election;Integrated Security=True";
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from Details where Mobile='" + TextBox4.Text + "'", con);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            con.Close();
            return "wrong";
        }
        else
        {
            con.Close();
            return "OK";
        }
    }
     public string checkEmail()
     {
         SqlConnection con = new SqlConnection();
         con.ConnectionString = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=Election;Integrated Security=True";
         con.Open();
         SqlCommand cmd = new SqlCommand("Select * from Details where Email='" + TextBox5.Text + "'", con);
         SqlDataReader s;
         s = cmd.ExecuteReader();
         if (s.HasRows)
         {
             con.Close();
             return "wrong";
         }
         else
         {
             con.Close();
             return "OK";
         }
     }

     /* private string Encrypt(string clearText)
     {
         string EncryptionKey = "MAKV2SPBNI99212";
         byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
         using (Aes encryptor = Aes.Create())
         {
             Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
             encryptor.Key = pdb.GetBytes(32);
             encryptor.IV = pdb.GetBytes(16);
             using (MemoryStream ms = new MemoryStream())
             {
                 using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                 {
                     cs.Write(clearBytes, 0, clearBytes.Length);
                     cs.Close();
                 }
                 clearText = Convert.ToBase64String(ms.ToArray());
             }
         }
         return clearText;
     }

    private string Decrypt(string cipherText)
    {
        string EncryptionKey = "MAKV2SPBNI99212";
        byte[] cipherBytes = Convert.FromBase64String(cipherText);
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(cipherBytes, 0, cipherBytes.Length);
                    cs.Close();
                }
                cipherText = Encoding.Unicode.GetString(ms.ToArray());
            }
        }
        return cipherText;
    }

    protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
{
    if (e.Row.RowType == DataControlRowType.DataRow)
    {
        e.Row.Cells[2].Text = Decrypt(e.Row.Cells[2].Text);
    }
}*/

/* protected void Load(object sender, EventArgs e)
{
    if (!this.IsPostBack)
    {
        string constr = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM Details"))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    DataTable dt = new DataTable();
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    sda.Fill(dt);
                   gvUsers.DataSource = dt;
                    /gvUsers.DataBind();
                }
            }
        }
    }
}*/
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Default2.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (check() == "OK")
        {
         if (passCheck() == "OK")
                {
           if (checkID() == "OK")
                    {
                        SqlConnection con = new SqlConnection();
                        con.ConnectionString = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=Election;Integrated Security=True";
                        con.Open();
                        SqlCommand cmd = new SqlCommand("insert into Details(UserId,Name,Address,Pass,Email,Mobile) values (@UserId,@Name,@Address,@Pass,@Email,@Mobile);", con);
                        cmd.Parameters.AddWithValue("@UserId", TextBox1.Text);
                        cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
                        cmd.Parameters.AddWithValue("@Address", TextBox3.Text);
                        cmd.Parameters.AddWithValue("@Pass", (TextBox6.Text.Trim()));
                        cmd.Parameters.AddWithValue("@Mobile", TextBox4.Text);
                        cmd.Parameters.AddWithValue("@Email", TextBox5.Text);
                        cmd.ExecuteReader();
                        con.Close();

                        con.Open();
                        cmd = new SqlCommand("ALTER TABLE Election ADD User" + TextBox1.Text + " varchar(50)", con);
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Session["Add"] = "Data";
                        Response.Redirect("Default2.aspx");
                        Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('User Registered ');", true);
                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert(' Please Check Your ID, This Mobile No is already Registered ');", true);
                    }
                }

                else
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Password Not Matched ');", true);
                }
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Please Enter " + check() + "');", true);
            }
        }
    }

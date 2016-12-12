using System;
using System.Data.SqlClient;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            if (Session["id"] != null)
            {
                this.username.Text = string.Format("Welcome {0}", Session["id"].ToString());
            }
        }


        if (Convert.ToString(Session["fname"]) == "admin")
        {
            Panel3.Visible = true;
            Panel2.Visible = false;
            Panel1.Visible = false;
            
        }
        else if (Convert.ToString(Session["fname"]) == "user")
        {
            Panel2.Visible = true;
            Panel1.Visible = false;
            Panel3.Visible = false;

        }
        else
        {
            Panel1.Visible = true;
            Panel3.Visible = false;
            Panel2.Visible = false;
        }
        /*if (Session["Name"] == null)

        {

            Response.Redirect("Default2.aspx"); // based on your page

        }

        lblUserName.Text = Session["Name"].ToString();*/
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        Session.Abandon();
        Response.Redirect("Default2.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Default2.aspx");
    }
}

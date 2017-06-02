using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["user"]!=null)
        {
            Response.Redirect("Company.aspx");
        }
        if(!IsPostBack)
        {
            LoginStatus.Visible = false;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string table;
        if(TextBoxUsername.Text.StartsWith("admin"))
        {
            table = "Admin";
        }
        else
        {
            table = "students";
        }
        SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ToString());
        SqlCommand cmd = new SqlCommand("select uid,password from " + table + " where username=@username",con);
        cmd.Parameters.AddWithValue("username", TextBoxUsername.Text);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if(dr.Read())
        {
            if(dr["password"].ToString()==TextBoxPassword.Text)
            {
                Session["user"] = Convert.ToInt32(dr["uid"].ToString());
                Session["name"] = TextBoxUsername.Text;
                if(table=="Admin")
                {
                    Session["type"] = "admin";
                }
                else
                {
                    Session["type"] = "student";
                }
                Response.Redirect("Company.aspx");
            }
            else
            {
                LoginStatus.Visible = true;
                LoginStatus.Text = "Incorrect username or password";
                LoginStatus.ForeColor = System.Drawing.Color.Red;
            }
        }
        else
        {
            LoginStatus.Visible = true;
            LoginStatus.Text = "Incorrect username or password";
            LoginStatus.ForeColor = System.Drawing.Color.Red;
        }
    }


    
}
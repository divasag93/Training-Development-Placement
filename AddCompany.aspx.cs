using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1.Account
{
    public partial class AddCompany : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["type"]!=null&&Session["type"]=="admin")
            {
                Label1.Visible = false;
            }
            else
            {
                Response.Redirect("Company.aspx");
            }
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Company.aspx");
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            if (TextBoxCname.Text.Length > 4)
            {
                Label1.Visible = false;
                SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ToString());
                SqlCommand cmd = new SqlCommand("select cid from Company where name=@name",con);
                cmd.Parameters.AddWithValue("name", TextBoxCname.Text);
                con.Open();
                object j = cmd.ExecuteScalar();
                con.Close();
                int i = j == null ? 0 : (int)j;
                if(i!=0)
                {
                    Label1.Text = "Already exists";
                    Label1.Visible = true;
                }
                else
                {
                    SqlCommand cmmd = new SqlCommand();
                    cmmd.CommandText = "insert into Company values(@name,@about,@domain)";
                    cmmd.Connection = con;
                    cmmd.Parameters.AddWithValue("name", TextBoxCname.Text);
                    cmmd.Parameters.AddWithValue("about", TextBoxAbout.Text);
                    cmmd.Parameters.AddWithValue("domain", TextBoxWebsite.Text);
                    con.Open();
                    int k = cmmd.ExecuteNonQuery();
                    if(k==1)
                    {
                        Label1.Visible = true;
                        Label1.Text = "Added Successfully";
                        Label1.ForeColor = System.Drawing.Color.Green;
                    }
                    else
                    {
                        Label1.Visible = true;
                        Label1.Text = "Error! can't add!";
                        Label1.ForeColor = System.Drawing.Color.Red;
                    }
                }

            }
            else
            {
                Label1.Text = "Comapny name should contain more than 4 alphabets";
                Label1.Visible = true;
            }
        }
    }
}
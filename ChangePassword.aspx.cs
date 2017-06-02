using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1.Account
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack&&Session["user"]!=null)
            {
                TextBoxConfirm.Enabled = TextBoxNewPassword.Enabled = Add.Enabled= false;
                Label1.Visible = false;
            }
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Company.aspx");
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            Label1.Visible = false;
            SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ToString());
            SqlCommand cmd = new SqlCommand("update "+Session["table"].ToString()+" set password=@password where uid=@uid;", con);
            cmd.Parameters.AddWithValue("password", TextBoxConfirm.Text);
            cmd.Parameters.AddWithValue("uid",Convert.ToInt64(Session["user"].ToString()));
            con.Open();
            int i = cmd.ExecuteNonQuery();
            Label1.Visible=true;
            if(i==1)
            {
                Label1.Text = "Password updated";
                Label1.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                Label1.Text = "Error! could not change the password";
                Label1.ForeColor = System.Drawing.Color.Green;
            }
        }

        protected void TextBoxCurrent_TextChanged(object sender, EventArgs e)
        {
            
            if (TextBoxCurrent.Text.Length >= 5)
            {
                SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ToString());
                string table;
                if (Session["type"] == "admin")
                {
                    table = "Admin";
                }
                else table = "students";
                Session["table"] = table;
                SqlCommand cmd = new SqlCommand("select uid from " + table + " where password=@password", con);
                cmd.Parameters.AddWithValue("password", TextBoxCurrent.Text);
                con.Open();
                object id =cmd.ExecuteScalar();
                con.Close();
                if (id!=null&&Session["user"].ToString() == id.ToString())
                {
                    TextBoxConfirm.Enabled = TextBoxNewPassword.Enabled = true;
                    TextBoxCurrent.Enabled = false;
                    Add.Enabled = true;
                    Label1.Visible = false;
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "Wrong Password";
                    TextBoxCurrent.Focus();
                    Label1.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WebApplication1.Account
{
    public partial class StudentLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            alert.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ToString();
            cn.Open();
            string str = "select * from students where username='" + username.Value + "' and password='" + password.Value + "'";
            SqlCommand cmd = new SqlCommand(str, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["type"] = "student";
                Session["name"] = dr["fname"].ToString();
                Session["user"] = Convert.ToInt32(dr["uid"].ToString());
                Response.Redirect("Company.aspx");
            }
            else
            {
                alert.Visible = true;
                Label1.Text = "OOPs! Check your Username & Password";

            }

            cn.Close();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["user"] = "students";
            Response.Redirect("ForgotPassword.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("SignUpStudent.aspx");
        }
     
    }
}
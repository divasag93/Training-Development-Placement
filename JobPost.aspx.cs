using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1.Account
{
    public partial class JobPost : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && Session["type"] != null && Session["type"] == "admin")
            {
                Label1.Visible = false ;
                TextBoxPosition.Enabled = TextBoxSalary.Enabled = TextBoxLocation.Enabled = TextBoxJD.Enabled = Post.Enabled = true;
                SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ToString());
                SqlCommand cmd = new SqlCommand("select cid,name from Company",con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                
                if(dr.HasRows)
                {
                    ListItem li = new ListItem("Select Company","0");
                    DropDownList1.Items.Add(li);
                    while(dr.Read())
                    {
                        ListItem li1 = new ListItem(dr["name"].ToString(), dr["cid"].ToString());
                        DropDownList1.Items.Add(li1);
                    }
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "Please first save some company details";
                    Label1.ForeColor = System.Drawing.Color.Red;
                    TextBoxPosition.Enabled = TextBoxSalary.Enabled = TextBoxLocation.Enabled = TextBoxJD.Enabled = Post.Enabled = false;
                }
                con.Close();
            }
            else if (!IsPostBack) Response.Redirect("Company.aspx");
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Company.aspx");
        }

        protected void Post_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ToString());
            SqlCommand cmd = new SqlCommand("insert into Jobs values(@cid,@cname,@position,@salary,@location,@jd)", con);
            cmd.Parameters.AddWithValue("cid", Convert.ToInt64(DropDownList1.SelectedValue));
            cmd.Parameters.AddWithValue("cname", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("position", TextBoxPosition.Text);
            cmd.Parameters.AddWithValue("salary", Convert.ToInt64(TextBoxSalary.Text));
            cmd.Parameters.AddWithValue("location", TextBoxLocation.Text);
            cmd.Parameters.AddWithValue("jd", TextBoxJD.Text);
            
            {
                con.Open();
                int i = cmd.ExecuteNonQuery();
                con.Close();
                if (i == 1)
                {
                    Label1.Text = "Job posted! Press cancel";
                    Label1.Visible = true;
                    Post.Enabled = false;
                    Label1.ForeColor = System.Drawing.Color.Green;
                }
            }
        }
    }
}
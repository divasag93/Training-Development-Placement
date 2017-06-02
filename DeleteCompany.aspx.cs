using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1.Account
{
    public partial class DeleteCompany : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && Session["type"] != null && Session["type"] == "admin")
            {
                Label1.Visible = false;
                SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ToString());
                SqlCommand cmd = new SqlCommand("Select name from Company", con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    ListItem li = new ListItem();
                    li.Value = li.Text = "Select Company";
                    DropDownList1.Items.Add(li);
                    while (dr.Read())
                    {
                        ListItem li1 = new ListItem();
                        li1.Value = li1.Text = dr["name"].ToString();
                        DropDownList1.Items.Add(li1);
                    }
                    Delete.Enabled = false;
                }
                else
                {
                    DropDownList1.Enabled = false;
                    Label1.Text = "No company to delete";
                    Label1.Visible = true;
                }
            }
            else if(!IsPostBack) Response.Redirect("Company.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(DropDownList1.SelectedValue=="Select Company")
            {
                Label1.Visible = true;
                Delete.Enabled = false;
            }
            else
            {
                DropDownList1.SelectedValue = DropDownList1.SelectedValue;
                Label1.Visible = false;
                Delete.Enabled = true;
            }
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Company.aspx");
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            Label1.Visible = false;
            SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ToString());
            SqlCommand cmd = new SqlCommand("delete from Jobs where cname=@name", con);
            cmd.Parameters.AddWithValue("name", DropDownList1.SelectedValue);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            SqlConnection conn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ToString());
            SqlCommand cmmd = new SqlCommand("delete from Company where name=@name",conn);
            cmmd.Parameters.AddWithValue("name", DropDownList1.SelectedValue);
            conn.Open();
            i = cmmd.ExecuteNonQuery();
            conn.Close();
            if(i==1)
            {
                Response.Redirect("Company.aspx");
            }
            else
            {
                Label1.Text = "Error deleting the specified company";
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Visible = true;
            }
        }
    }
}
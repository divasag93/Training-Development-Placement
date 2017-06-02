using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1.Account
{
    public partial class Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelApply.Visible = false;
            ButtonApply.Visible = true;
            int j = Convert.ToInt32(Request.QueryString["jid"]);
            if (Session["user"] != null)
            {
                object l;
                using (SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ToString()))
                {
                    SqlCommand cmd = new SqlCommand("select * from Registrations where uid=@uid and jid=@jid", con);

                    cmd.Parameters.AddWithValue("uid", Convert.ToInt32(Session["user"].ToString()));
                    cmd.Parameters.AddWithValue("jid", j);
                    con.Open();
                    l = cmd.ExecuteScalar();
                    con.Close();
                }
                if(func())
                {

                }
                else if (l != null)
                {
                    LabelApply.Visible = true;
                    ButtonApply.Enabled = false;
                }
            }
            else
            {
                LabelApply.Visible = true;
                ButtonApply.Enabled = false;
                LabelApply.Text = "Login as a student to apply";
                LabelApply.ForeColor = System.Drawing.Color.Red;
            }
            SqlConnection conn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ToString());
            SqlCommand cmmd = new SqlCommand("select * from Jobs where jid=@jid",conn);
            cmmd.Parameters.AddWithValue("jid", j);
            conn.Open();
            SqlDataReader dr=cmmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                LabelCompanyName.Text = dr["cname"].ToString();
                LabelPosition.Text = dr["position"].ToString();
                LabelJobLocation.Text = dr["location"].ToString();
                LabelSalary.Text = "₹" + dr["salary"].ToString();
                Label6.Text = dr["jd"].ToString();
                int yu = Convert.ToInt32(dr["cid"].ToString());
                conn.Close();
                function(yu);
                Session["jid"] = j;
            }
            else
            {
                LabelApply.Text = "Invalid job request";
                LabelApply.ForeColor = System.Drawing.Color.Red;
                LabelApply.Visible = true;
            }
        }

       private bool func()
        {
            using (SqlConnection conn1 = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ToString()))
            {
                SqlCommand cmdd = new SqlCommand("select count(uid) from Placements where uid=@uid", conn1);
                cmdd.Parameters.AddWithValue("uid", Convert.ToInt32(Session["user"].ToString()));
                conn1.Open();
                object i = cmdd.ExecuteScalar();
                int j = i == null ? 0 : (int)i;
                if (j > 1)
                {
                    LabelApply.Text = "You are already selected for more than 1 company";
                    LabelApply.ForeColor = System.Drawing.Color.Red;
                    LabelApply.Visible = true;
                    ButtonApply.Enabled = false;
                    return true;
                }
                return false;
            }
        }

        private void function(int yu)
        {
            using (SqlConnection conn1 = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ToString()))
            {
                SqlCommand cmmd1 = new SqlCommand("select * from Company where cid=@cid", conn1);
                cmmd1.Parameters.AddWithValue("cid", yu);
                SqlDataAdapter da = new SqlDataAdapter(cmmd1);
                System.Data.DataSet ds = new System.Data.DataSet();
                da.Fill(ds);
                LinkButtonURL.Text = ds.Tables[0].Rows[0][3].ToString();
                Label5.Text = ds.Tables[0].Rows[0][2].ToString();

            }
        }
        protected void Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Company.aspx");
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ToString());
            SqlCommand cmd = new SqlCommand("insert into Registrations values(@uid,@jid)",conn);
            cmd.Parameters.AddWithValue("uid", Convert.ToInt32(Session["user"].ToString()));
            cmd.Parameters.AddWithValue("jid", Convert.ToInt32(Session["jid"].ToString()));
            conn.Open();
            int j = cmd.ExecuteNonQuery();
            if(j==1)
            {
                ButtonApply.Enabled = false;
                LabelApply.Visible = true;
                try
                {

                }
                catch
                {

                }
                finally
                {
                    conn.Close();
                }
            }
            else
            {
                LabelApply.Text = "Some error occured while registering";
                LabelApply.ForeColor = System.Drawing.Color.Red;
                LabelApply.Visible = true;
            }
        }
    }
}
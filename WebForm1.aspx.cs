using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1.Account
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            NoJobsLabel.Visible = false;
            Session["user"] = 1;
            if ((!IsPostBack) && Session["user"] == null)
            {
                 Response.Redirect("home.aspx");
            }
            else if(Session["user"]!=null)
            {
                SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ToString());
                SqlCommand cmd = new SqlCommand("Select * from Job", con);
                SqlDataReader dr,ds;
                con.Open();
                dr = cmd.ExecuteReader();
                if(dr.HasRows)
                {
                    SqlConnection conn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ToString());
                    int i = 0;
                    while(dr.Read())
                    {
                        SqlCommand cmmd = new SqlCommand();
                        Label position=new Label();
                        position.Text = "<br><br>" + dr["position"].ToString() + "<pre>\t\t\t</pre>";
                        Panel1.Controls.AddAt(i++, position);
                        Label location=new Label();
                        location.Text = dr["location"].ToString() + "<pre>\t\t\t</pre>";
                        Panel1.Controls.AddAt(i++,location);
                        Label salary=new Label();
                        salary.Text = dr["salary"].ToString() + "<pre>\t\t\t</pre>";
                        Panel1.Controls.AddAt(i++,salary);
                        int id=Convert.ToInt32(dr["cid"].ToString());
                        cmmd.CommandText="Select name from Company where cid=@cid";
                        cmmd.Parameters.AddWithValue("cid",id);
                        cmmd.Connection = conn;
                        conn.Open();
                        ds=cmmd.ExecuteReader();
                        /*Label cname = new Label();
                        cname.ForeColor = System.Drawing.Color.Green;
                        cname.Text=ds["name"].ToString();
                        Panel1.Controls.Add(cname);*/
                        LinkButton details = new LinkButton();
                        details.Text = "Show Details";
                        details.PostBackUrl = "Details.aspx?jid=" + dr["jid"].ToString();
                        Panel1.Controls.AddAt(i++,details);
                        ds = null;
                        conn.Close();
                    }
                }
                else
                {
                    NoJobsLabel.Text = "Sorry, as of now there is no job posting.";
                    NoJobsLabel.ForeColor = System.Drawing.Color.Red;
                    NoJobsLabel.Visible = true;
                }
            }
        }
    }
}
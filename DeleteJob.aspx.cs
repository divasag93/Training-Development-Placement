using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1.Account
{
    public partial class DeleteJob : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible=false;
            if(Session["user"]!=null&&((string)Session["type"])=="admin")
            {
                int i = Convert.ToInt32((string)Request.QueryString["jid"]);
                SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ToString());
                SqlCommand cmd = new SqlCommand("delete from Jobs where jid=@jid", con);
                cmd.Parameters.AddWithValue("jid", i);
                con.Open();
                int j = cmd.ExecuteNonQuery();
                con.Close();
                if(j==1)
                {
                    Response.Redirect("Company.aspx");
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "There was some error deleteing the job post it might have already deleted or such post never existed";
                    Label1.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                Response.Redirect("Company.aspx");
            }
        }
    }
}
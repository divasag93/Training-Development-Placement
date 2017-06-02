using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1.Account
{
    public partial class Company : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            NoJobsLabel.Visible = JobApplyLabel.Visible = false;
            Panel2.Visible = true;
            LinkButton home = new LinkButton();
            home.Text = "Home |";
            home.ForeColor = System.Drawing.Color.White;
            home.PostBackUrl = "index.aspx";
            int j = 0;
            Panel2.Controls.AddAt(j++, home);
            
            LinkButton help=new LinkButton();
            help.Text=" Help |";
            help.PostBackUrl="help.aspx";
            Panel2.Controls.AddAt(j++,help);
            help.ForeColor = System.Drawing.Color.White;
            if (Session["user"] == null)
            {
                JobApplyLabel.Visible=true;
                LinkButton register=new LinkButton();
                register.Text=" Register |";
                register.PostBackUrl="SignUpStudent.aspx";
                register.ForeColor = System.Drawing.Color.White;
                Panel2.Controls.AddAt(j++,register);
                LinkButton signin =new LinkButton();
                signin.Text=" Login";
                signin.PostBackUrl="StudentLogin.aspx";
                signin.ForeColor = System.Drawing.Color.White;
                Panel2.Controls.AddAt(j++,signin);
            }
            else if(Session["type"].ToString()=="admin")
            {
                LinkButton AddCompany =new LinkButton();
                AddCompany.Text=" Add Company |";
                AddCompany.PostBackUrl="AddCompany.aspx";
                AddCompany.ForeColor = System.Drawing.Color.White;
                Panel2.Controls.AddAt(j++,AddCompany);
                LinkButton DeleteCompany=new LinkButton();
                DeleteCompany.Text=" Delete Company |";
                DeleteCompany.PostBackUrl="DeleteCompany.aspx";
                DeleteCompany.ForeColor = System.Drawing.Color.White;
                Panel2.Controls.AddAt(j++,DeleteCompany);
                LinkButton PostNewJob=new LinkButton();
                PostNewJob.Text=" Post New Job |";
                PostNewJob.PostBackUrl="JobPost.aspx";
                PostNewJob.ForeColor = System.Drawing.Color.White;
                Panel2.Controls.AddAt(j++,PostNewJob);
                LinkButton ChangePassword=new LinkButton();
                ChangePassword.Text=" Change Password |";
                ChangePassword.PostBackUrl="ChangePassword.aspx";
                ChangePassword.ForeColor = System.Drawing.Color.White;
                Panel2.Controls.AddAt(j++,ChangePassword);
                LinkButton Logout=new LinkButton();
                Logout.Text=" Logout";
                Logout.PostBackUrl="LogoutUser.aspx";
                Logout.ForeColor = System.Drawing.Color.White;
                Logout.OnClientClick = "return confirm(\"Are you sure you want to logout?\")";
                Panel2.Controls.AddAt(j++,Logout);
            }
            else
            {
                LinkButton MyJobs=new LinkButton();
                MyJobs.Text="My Jobs |";
                MyJobs.PostBackUrl="Applied.aspx";
                MyJobs.ForeColor = System.Drawing.Color.White;
                Panel2.Controls.AddAt(j++,MyJobs);
                LinkButton ChangePassword=new LinkButton();
                ChangePassword.Text=" Change Password |";
                ChangePassword.PostBackUrl="ChangePassword.aspx";
                ChangePassword.ForeColor = System.Drawing.Color.White;
                Panel2.Controls.AddAt(j++,ChangePassword);
                LinkButton Logout=new LinkButton();
                Logout.Text=" Logout";
                Logout.PostBackUrl="LogoutUser.aspx";
                Logout.ForeColor = System.Drawing.Color.White;
                Logout.OnClientClick = "return confirm(\"Are you sure you want to logout?\")";
                Panel2.Controls.AddAt(j++,Logout);
            }
                SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ToString());
                SqlCommand cmd = new SqlCommand("Select * from Jobs", con);
                SqlDataReader dr;
                con.Open();
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    int i = 0;
                    while (dr.Read())
                    {
                        Label cname = new Label();
                        cname.Text = "<tr align=\"justify\"><td class=\"auto-style2\" align=\"center\" bgcolor=\"#CCCCFF\"><strong>" + dr["cname"].ToString() + "</strong></td>";
                        Panel1.Controls.AddAt(i++,cname);
                        Label position = new Label();
                        position.Text = "<td class=\"auto-style2\" align=\"center\" bgcolor=\"#CCCCFF\">" + dr["position"].ToString() + "</td>";
                        Panel1.Controls.AddAt(i++, position);
                        Label location = new Label();
                        location.Text = "<td class=\"auto-style2\" align=\"center\" bgcolor=\"#CCCCFF\">" + dr["location"].ToString() + "</td>";
                        Panel1.Controls.AddAt(i++, location);
                        Label salary = new Label();
                        salary.Text = "<td class=\"auto-style2\" align=\"center\" bgcolor=\"#CCCCFF\">" + dr["salary"].ToString() + "</td>";
                        Panel1.Controls.AddAt(i++, salary);
                        Label temp1 = new Label();
                        temp1.Text = "<td class=\"auto-style2\" align=\"center\" bgcolor=\"#CCCCFF\">";
                        Panel1.Controls.AddAt(i++,temp1);
                        LinkButton action = new LinkButton();
                        if (Session["type"]==null||Session["type"].ToString() != "admin")
                        {
                            action.Text = "Show Details";
                            action.PostBackUrl = "Details.aspx?jid=" + dr["jid"].ToString();
                        }
                        else
                        {
                            action.Text = "Delete";
                            action.PostBackUrl = "DeleteJob.aspx?jid=" + dr["jid"].ToString();
                            action.OnClientClick = "return confirm(\"Are you sure you want to delete this job post?\")";
                        }
                        Panel1.Controls.AddAt(i++, action);
                        Label temp2 = new Label();
                        temp2.Text = "</td></tr>";
                        Panel1.Controls.AddAt(i++,temp2);
                    }
                }
                else
                {
                    NoJobsLabel.Text = "Sorry, as of now there is no job posting.";
                    NoJobsLabel.ForeColor = System.Drawing.Color.Red;
                    NoJobsLabel.Visible = true;
                }
            }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
        
        }
        }
    }


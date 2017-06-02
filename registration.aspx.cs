using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Drawing;
using System.Net.Mail;

public partial class registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label1.Visible = false;
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection connection = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ToString());
        SqlCommand cmd;
        SqlDataReader dr;
        SqlConnection connection1 = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ToString());
        SqlCommand cmd1 = new SqlCommand("Select uid from students where username=@username",connection1) ;
        cmd1.Parameters.AddWithValue("username", TxtUserName.Text);
        connection1.Open();
        object j1 = cmd1.ExecuteScalar();
        connection1.Close();
        int i1 = j1 == null ? 0 : (int)j1;
        if (i1 != 0)
        {
            MsgLb.Text = "Username already exists";
            MsgLb.Visible = true;
            MsgLb.ForeColor = Color.Red;
        }
        else MsgLb.Visible = false;
        if (DropDownList1.SelectedIndex == 0)
        {
            Label1.Text = "Please select a branch";
            Label1.ForeColor = Color.Red;
            Label1.Visible = true;
            DropDownList1.Focus();
        }
        else
        {
            Label1.Visible = false;
            MsgLb.Visible = false;
            cmd = new SqlCommand("select uid from students where username=@username", connection);
            connection.Open();
            cmd.Parameters.AddWithValue("username", TxtUserName.Text);
            object j = cmd.ExecuteScalar();
            int i = (j == null) ? 0 : (int)j;
            connection.Close();
            if (i == 0)
            {
                cmd = new SqlCommand("insert into students values(@fname,@mname,@lname,@username,@password,@bid,@email,@eid,@mobile)", connection);
                cmd.Parameters.AddWithValue("fname", TxtFname.Text);
                cmd.Parameters.AddWithValue("mname",TxtMname.Text);
                cmd.Parameters.AddWithValue("lname", TxtLname.Text);
                cmd.Parameters.AddWithValue("username", TxtUserName.Text);
                cmd.Parameters.AddWithValue("password", TxtPassword.Text);
                cmd.Parameters.AddWithValue("bid", DropDownList1.SelectedIndex);
                cmd.Parameters.AddWithValue("email", Txtemail.Text);
                cmd.Parameters.AddWithValue("eid", TxtEnroll.Text);
                cmd.Parameters.AddWithValue("mobile", Convert.ToInt64(TxtMobile.Text));
                connection.Open();
                int ind = cmd.ExecuteNonQuery();
                connection.Close();
                if (ind == 1)
                {
                    MsgLb.Visible = true;
                    MsgLb.Text = "You have been registered successfully!!";
                    MsgLb.ForeColor = System.Drawing.Color.Green;
                    //sendmail(TxtUserName.Text, Txtemail.Text);
                }
            }
            else
            {
                MsgLb.Visible = true;
                MsgLb.Text = "Username already exist!";
                this.MsgLb.ForeColor = Color.Red;
                TxtUserName.Text = "";
                TxtUserName.Focus();
            }
        }
    }
    protected void sendmail(string username, string email)
    {
        MailMessage mail = new MailMessage("saxena.ankur47@gmail.com", email);
        mail.Subject = "Welcome to Training and Placement Cell!";
        mail.Body = "Hi You have successfully registered with us";
        SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
        client.Credentials = new System.Net.NetworkCredential()
        {
            UserName = "saxena.ankur47@gmail.com",
            Password = "uni@123que"
        };
        client.EnableSsl = true;
        try
        {
            client.Send(mail);
        }
        catch(SmtpException)
        {
        }
    }
}
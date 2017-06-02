using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;



namespace WebApplication1.Account
{
    public partial class SignUpStudent : System.Web.UI.Page
    {
        Email em = new Email();
        returnbrsem ret = new returnbrsem();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            alert.Visible = false;
            alert1.Visible = false;
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            validate v = new validate();
            
            
                SqlConnection cn = new SqlConnection();
                cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ToString();
               
                string str = "insert into students values(@finame,@miname,@lname,@username,@password,@bid,@email,@mobileno,@dob,@address,@per10,@per12,@perPF,@sname,@college,@enrollmentno)";
                SqlCommand cmd = new SqlCommand(str, cn);
                cmd.Parameters.AddWithValue("finame", frname.Value);
                object r = miname.Value != null ? miname.Value : null;
                cmd.Parameters.AddWithValue("miname", r);
                cmd.Parameters.AddWithValue("lname", lname.Value);
                
                string pass = RandomUtil.GetRandomString();
                cmd.Parameters.AddWithValue("password", pass);
                cmd.Parameters.AddWithValue("dob", dob.Text);
                cmd.Parameters.AddWithValue("address", address.Text);
                cmd.Parameters.AddWithValue("sname", sname.Text);
                cmd.Parameters.AddWithValue("college", cname.Text);
                SqlParameter p11 = new SqlParameter("enrollmentno", rollno.Text);
                if(DropDownList1.SelectedIndex==0)
                {
                    alert.Visible = true;
                    Label2.Text = "Select a branch";
                }
                else
                {
                    cmd.Parameters.AddWithValue("bid", DropDownList1.SelectedIndex);
                }
                if(v.isusernameexist(username.Text))
                {
                    alert.Visible = true;
                    Label2.Text = "OOPs! Username already exist";
                }
                else
                {
                    SqlParameter p10=new SqlParameter("username", username.Text);
                    cmd.Parameters.Add(p10);
                }
                if (v.isenrollmentidexist(rollno.Text))
                {
                    alert.Visible = true;
                    Label2.Text = "OOPs! Enrollment number already exist";
                }
                else if (rollno.Text.Length == 10)
                {
                    cmd.Parameters.Add(p11);
                }
                else
                {
                    alert.Visible = true;
                    Label2.Text = "Roll number is not in correct format it should be of length 10.";
                }
                if (v.ispnoexist(pno.Value))
                {
                    alert.Visible = true;
                    Label2.Text = "OOPs! Phone number already exist";
                }
                else
                {
                    SqlParameter p9 = new SqlParameter("mobileno", Convert.ToInt64(pno.Value));
                    cmd.Parameters.Add(p9);
                }
                if (!v.isinStudent(email.Text))
                {
                    SqlParameter p10 = new SqlParameter("email", email.Text);
                    cmd.Parameters.Add(p10);
                }
                else
                {
                    alert.Visible = true;
                    Label2.Text = "OOPs! E-mail address already exist";
                }
                if(v.isvalidper(Convert.ToDouble(per10.Text)))
                {
                    SqlParameter p12 = new SqlParameter("per10", Convert.ToDouble(per10.Text));
                    cmd.Parameters.Add(p12);
                }
                else
                {
                    alert.Visible = true;
                    Label2.Text = "OOps! Percentage is not in correct format";
                    per10.Text = "";
                    per10.Focus();
                }
                if(v.isvalidper(Convert.ToDouble(per12.Text)))
                {
                    SqlParameter p13 = new SqlParameter("per12", Convert.ToDouble(per12.Text));
                    cmd.Parameters.Add(p13);
                }
                else
                {
                    alert.Visible = true;
                    Label2.Text = "OOps! Percentage is not in correct format";
                    per12.Text = "";
                    per12.Focus();
                }
                if (v.isvalidper(Convert.ToDouble(perPF.Text)))
                {
                    SqlParameter p14 = new SqlParameter("perPF", Convert.ToDouble(perPF.Text));
                    cmd.Parameters.Add(p14);
                }
                else
                {
                    alert.Visible = true;
                    Label2.Text = "OOps! Percentage is not in correct format";
                    perPF.Text = "";
                    perPF.Focus();
                }
                if (!alert.Visible)
                {
                    cn.Open();
                    int i = cmd.ExecuteNonQuery();
                    cn.Close();
                    if (i == 1)
                    {
                        Label1.Visible = true;
                        try
                        {
                            sendmail(frname.Value,username.Text, pass, email.Text);
                        }
                        catch (SmtpException)
                        {
                            alert.Visible = true;
                            Label2.Text = "Network error could not send the email to the email address";
                            Label2.Visible = true;
                        }
                        finally
                        {
                            alert1.Visible = true;
                            Label1.Text = "You have been registered!";
                        }
                    }
                }
                
            
        }

        protected void sendmail(string name, string username, string password, string email)
        {
            MailMessage mail = new MailMessage("divasag93@gmail.com", email);
            mail.Subject = "Login credentials for TDP";
            mail.Body = "Hi " + name + ",\nGreetings!\nThank you for being a part.\nWe have created your profile, below are the credentials to login:\nUsername: " + username + "\nPassword: " + password + "\nYou can change the password once you login\nRegards,\nAdmin";
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
            client.Credentials = new System.Net.NetworkCredential()
            {
                UserName = "divasag93@gmail.com",
                Password = "Becalm##"
            };
            client.EnableSsl = true;
            client.Send(mail);
        }


       
    }
}
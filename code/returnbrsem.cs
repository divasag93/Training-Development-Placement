using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

    public class returnbrsem
    {
        string na=string.Empty;
        string em = string.Empty;
        public string brsem(string rollno)
        {
            string br=string.Empty;
            string sem = string.Empty;
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cn"].ToString();
            cn.Open();
            string str = "select * from AddStudent where RollNo='" + rollno + "'";
            SqlCommand cmd = new SqlCommand(str, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                br = dr[7].ToString();
                sem = dr[12].ToString();
            }
            return (br + "." + sem);
        }
        public string name(string rollno)
        {
            
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cn"].ToString();
            cn.Open();
            string str = "select * from AddStudent where RollNo='" + rollno + "'";
            SqlCommand cmd = new SqlCommand(str, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                 na = dr[1].ToString();
            }
            return (na);
        }
        public string tname(string tid)
        {

            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cn"].ToString();
            cn.Open();
            string str = "select * from AddTeacher where TeacherId='" + tid + "'";
            SqlCommand cmd = new SqlCommand(str, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                na = dr[2].ToString();
            }
            return (na);
        }
        public string email(string rollno)
        {

            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cn"].ToString();
            cn.Open();
            string str = "select * from AddStudent where RollNo='" + rollno + "'";
            SqlCommand cmd = new SqlCommand(str, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                em = dr[10].ToString();
            }
            return (em);
        }
        public string temail(string tid)
        {

            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cn"].ToString();
            cn.Open();
            string str = "select * from AddTeacher where TeacherId='" + tid + "'";
            SqlCommand cmd = new SqlCommand(str, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                em = dr[6].ToString();
            }
            return (em);
        }
    }

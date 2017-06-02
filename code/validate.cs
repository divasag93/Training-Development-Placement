using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;


    public class validate
    {
        public bool setvalue = false;
        public bool setvalue1 = false;
        
        public bool isinStudent(string id)
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ToString();
            SqlCommand cmd = new SqlCommand("select * from students where email='" + id + "' ", cn);
            DataSet ds = new DataSet();
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            SqlCommandBuilder cmdb = new SqlCommandBuilder(ad);
            ad.Fill(ds);

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if (dr[7].ToString() == id)

                    return true;
            }
            return false;
        }
        public bool ispnoexist(string pno)
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ToString();
            SqlCommand cmd = new SqlCommand("select * from students where mobileno='" + pno + "' ", cn);
            DataSet ds = new DataSet();
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            SqlCommandBuilder cmdb = new SqlCommandBuilder(ad);
            ad.Fill(ds);

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if (dr[8].ToString() == pno)

                    return true;
            }
            return false;
        }

        public bool isvalidper(double per)
        {
            if (per > 0 && per < 100)
                return true;
            else return false;
        }


       
        public bool isenrollmentidexist(string rollno)
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ToString();
            SqlCommand cmd = new SqlCommand("select * from students where enrollmentid='" + rollno + "' ", cn);
            DataSet ds = new DataSet();
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            SqlCommandBuilder cmdb = new SqlCommandBuilder(ad);
            ad.Fill(ds);

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if (dr[16].ToString() == rollno)

                    return true;
            }
            return false;
        }


        public bool isusernameexist(string rollno)
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ToString();
            SqlCommand cmd = new SqlCommand("select * from students where username='" + rollno + "' ", cn);
            DataSet ds = new DataSet();
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            SqlCommandBuilder cmdb = new SqlCommandBuilder(ad);
            ad.Fill(ds);

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if (dr[4].ToString() == rollno)
                    return true;
            }
            return false;
        }
       
    }
   

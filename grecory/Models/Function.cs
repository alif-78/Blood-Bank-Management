using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace grecory.Models
{
    public class Function
    {
        private SqlConnection Con;
        private SqlCommand cmd;
        private DataTable dt;
        private SqlDataAdapter sda;
        private string ConnString;

        public Function()
        {
            ConnString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\aLiF\Documents\bloodAspDb.mdf;Integrated Security=True;Connect Timeout=30";
            Con = new SqlConnection(ConnString);
            cmd = new SqlCommand();
            cmd.Connection = Con;
        }

        public DataTable getData(string Query)
        {
            dt = new DataTable();
            sda = new SqlDataAdapter(Query, ConnString);
            sda.Fill(dt);
            return dt;
        }
        public int SetData(string Query)
        {
            int Cnt = 0;
            if (Con.State == ConnectionState.Closed)
            {
                Con.Open();
            }
            cmd.CommandText = Query;
            Cnt = cmd.ExecuteNonQuery();
            Con.Close();
            return Cnt;
        }

       
    }
}
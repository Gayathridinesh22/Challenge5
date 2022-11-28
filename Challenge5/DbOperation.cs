using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;


namespace Challenge5
{
    public class DbOperation
    {
        public SqlConnection con = new SqlConnection();
        public SqlCommand cmd = new SqlCommand();


        public DbOperation()
        {
            con.ConnectionString = "Data Source=NTP-LAP-645;Initial Catalog=Employee;Integrated Security=True;Pooling=False";
            cmd.Connection = con;
        }
        public SqlConnection Getcon()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            return con;
        }
        public void dbclose()
        {
            con.Close();
        }
        public int exenonquery(string Sql)
        {
            Getcon();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = Sql;
            int i = cmd.ExecuteNonQuery();
            return i;
        }
        public object exescalar(string sql)
        {
            Getcon();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = sql;
            object ob = cmd.ExecuteScalar();
            return ob;
        }
        public SqlDataReader exereader(string sql)
        {
            Getcon();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = sql;
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
        }
        public DataSet exedataset(String sql)
        {
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = sql;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        public DataTable exedatatable(string sql)
        {
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = sql;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public void fillgrid(string sql, GridView dv)
        {
            dv.DataSource = exedataset(sql);
            dv.DataBind();
        }
        public void fillddl(string sql, DropDownList ddl, string txt, string val)
        {
            ddl.DataTextField = txt;
            ddl.DataValueField = val;
            ddl.DataSource = exedataset(sql);
            ddl.DataBind();
            ddl.Items.Insert(0, new ListItem("---select---", "0"));
        }
    }
}
    
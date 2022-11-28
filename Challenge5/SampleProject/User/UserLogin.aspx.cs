using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Challenge5.SampleProject.User
{
    public partial class UserLogin : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            int Student_Id = Convert.ToInt32(Session["studentid"]);
            string sql = "select * from studentreg where studentid='" + Student_Id + "'";

            DataTable dt = db.exedatatable(sql);
            Label2.Text = dt.Rows[0]["name"].ToString();
            Label4.Text = dt.Rows[0]["email"].ToString();
            Label6.Text = dt.Rows[0]["phone"].ToString();
            Label8.Text = dt.Rows[0]["gender"].ToString();
            Label10.Text = dt.Rows[0]["dob"].ToString();

        }
    }
}
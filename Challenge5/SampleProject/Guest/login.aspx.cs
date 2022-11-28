using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Challenge5.SampleProject.Guest
{
    public partial class login : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = txtusername.Text;
            string password = txtpassword.Text;


            string sql = "select s.*,l.* from studentreg s inner join log l on l.lid=s.lid  WHERE username='" + username + "' AND password='" + password + "'";

            DataTable dt = db.exedatatable(sql);
            if (dt.Rows.Count > 0)
            {
                if (dt.Rows[0]["role"].ToString() == "Admin")
                {
                    Response.Redirect("../Admin/AdminDefault.aspx");
                }
                else if (dt.Rows[0]["role"].ToString() == "user")
                {
                    if (dt.Rows[0]["status"].ToString() == "Confirmed")
                    {
                        Session["studentid"] = dt.Rows[0]["studentid"].ToString();

                        Response.Redirect("../User/UserLogin.aspx");
                    }
                    else if (dt.Rows[0]["status"].ToString() == "blocked")
                    {
                        Response.Write("<script>alert(' User blocked');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert(' User not verified');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid Credentials');</script>");
                }
            }
        }
    }
}
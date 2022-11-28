using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Challenge5.Employee
{
    public partial class Insertdata : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = "insert into Challenge5 values('" + txtname.Text + "','" + txtemail.Text + "','" + txtphone.Text + "','" + txtage.Text + "')";
            int i = db.exenonquery(sql);
            if (i == 1)
            {
                Response.Write("Successfully Inserted");
            }
            else
            {
                Response.Write("Insertion Failed");
            }
        }
    }
}
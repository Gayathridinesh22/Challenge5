using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Challenge5.Employee
{
    public partial class test : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            string _id = Request.QueryString["Employee_Id"].ToString();

            DataTable dt = db.exedatatable("select * from Challenge5");
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if ((dt.Rows[i]["Employee_Id"].ToString() == _id))
                {
                    Label2.Text = dt.Rows[i]["Name"].ToString();
                    Label4.Text = dt.Rows[i]["Email"].ToString();
                    Label6.Text = dt.Rows[i]["Phone"].ToString();
                    Label8.Text = dt.Rows[i]["Age"].ToString();
                }
            }    
        }

    }
}
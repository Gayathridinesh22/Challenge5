using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Challenge5.SampleProject.Admin
{
    public partial class ConfirmStudent : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                db.fillgrid("select s.*,l.* from studentreg s inner join log l on s.lid=l.lid where l.status='Not Confirmed' and role='user'", GridView1);
                GridView1.DataBind();
            }
        }
        protected void Gridview1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string s = GridView1.DataKeys[e.RowIndex].Value.ToString();
            db.exenonquery("update log set status='Confirmed' where lid=" + s + "");
            db.fillgrid("select s.*,l.* from studentreg s inner join log l on s.lid=l.lid where l.status='Not Confirmed'and role='user'", GridView1);
        }
    }
}

       
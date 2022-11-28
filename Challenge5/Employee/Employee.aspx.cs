using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Challenge5.Employee
{
    public partial class Employee : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = db.exedataset("select * from Challenge5");
                GridView1.DataBind();
            }
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataSource = db.exedataset("select * from Challenge5");
            GridView1.DataBind();
        }
        protected void Gridview1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string Employee_Id = GridView1.DataKeys[e.RowIndex].Value.ToString();

            TextBox txtName = new TextBox();
            txtName = (TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0];

            TextBox txtemail = new TextBox();
            txtemail = (TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0];

            TextBox txtphone = new TextBox();
            txtphone = (TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0];

            TextBox txtage = new TextBox();
            txtage = (TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0];
            db.exenonquery("update Challenge5 set Name='" + txtName.Text + "',Email='" + txtemail.Text + "',Phone='" + txtphone.Text + "',Age='" + txtage.Text + "' where Employee_Id='" + Employee_Id + "'");

            GridView1.EditIndex = -1;
            GridView1.DataSource = db.exedataset("select * from Challenge5");
            GridView1.DataBind();
        }
        protected void GridView1_RowCancelEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GridView1.DataSource = db.exedataset("select * from Challenge5");
            GridView1.DataBind();
        }
        protected void Gridview1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string _id = GridView1.DataKeys[e.RowIndex].Value.ToString();
            db.exenonquery("delete from Challenge5 where Employee_Id='" + _id + "'");
            GridView1.DataSource = db.exedataset("Select * from Challenge5");
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HtmlInputCheckBox chk;
            foreach (GridViewRow dr in GridView1.Rows)
            {
                chk = (HtmlInputCheckBox)dr.FindControl("ch");
                if (chk.Checked)
                {
                    db.exenonquery("delete from Challenge5 where Employee_Id='" + chk.Value + "'");
                }
            }
            db.fillgrid("Select * from Challenge5", GridView1);
        }
    }
}

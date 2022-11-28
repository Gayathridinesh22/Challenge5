using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Challenge5.SampleProject.Guest
{
    public partial class UserRegister : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i = 1; i <= 31; i++)
            {
                ddlday.Items.Add(i.ToString());
            }
            for (int i = 1; i <= 12; i++)
            {
                ddlmonth.Items.Add(i.ToString());
            }
            for (int i = 1998; i <= DateTime.Now.Year; i++)
            {
                ddlyear.Items.Add(i.ToString());
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                object ob = db.exescalar("insert into log values('" + txtuname.Text + "','" + txtpassword.Text + "','user','Not Confirmed');select @@IDENTITY");
                db.dbclose();
                //if (ob.ToString() != null)
                //{
                string dob = ddlday.SelectedValue + "/" + ddlmonth.SelectedValue + "/" + ddlyear.SelectedValue;
                //}
                int i = db.exenonquery("insert into studentreg values('" + txtname.Text + "','" + txtemail.Text + "','" + txtphn.Text + "','" + rblgender.SelectedValue + "','" + dob + "','" + ob + "')");
                db.dbclose();
                if (i == 1)
                {
                    Response.Write("Registration has been successfull");
                }
                else
                {
                    Response.Write("You have invalid attempted");
                }
                ddlday.ClearSelection();
                ddlmonth.ClearSelection();
                ddlyear.ClearSelection();
                rblgender.ClearSelection();
                txtname.Text = "";
                txtemail.Text = "";
                txtphn.Text = "";
                txtuname.Text = "";
                txtpassword.Text = "";
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PRJ
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("user_login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("user_registration.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("about_us.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
                string url = DropDownList1.SelectedValue;
                if (url == "Info_page.aspx")
                {
                    Response.Redirect("Info_page.aspx");
                }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            string url = DropDownList2.SelectedValue;
            if (url == "Info_page.aspx")
            {
                Response.Redirect("Info_page.aspx");
            }
        }
    }
}
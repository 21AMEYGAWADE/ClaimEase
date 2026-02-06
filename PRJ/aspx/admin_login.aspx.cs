using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PRJ
{
    public partial class admin_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [Obsolete]
        protected void Button1_Click(object sender, EventArgs e)
        {
            string username,password;
            username=TextBox1.Text;
            password=TextBox2.Text;
            if (FormsAuthentication.Authenticate(username, password)) 
            {
                Response.Redirect("admin_home.aspx");
            }
        }
    }
}
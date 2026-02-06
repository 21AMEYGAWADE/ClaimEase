using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PRJ
{
    public partial class user_login : System.Web.UI.Page
    {
        String gmail, password;
        SqlConnection cn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();

        protected void Button1_Click(object sender, EventArgs e)
        {
            gmail=TextBox1.Text;
            password=TextBox2.Text;

            cn.Open();
            cmd.Connection = cn;

            // SQL Query to check if user exists
            cmd.CommandText = "SELECT COUNT(*) FROM registration_details WHERE gmail ='" + gmail + "' AND password = '" + password + "'";
            cmd.Parameters.AddWithValue("@Username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox2.Text); // Should be hashed in real-world applications

            // Execute query
            int count = (int)cmd.ExecuteScalar();

            if (count > 0)
            {
                Label1.Text = "Login Successful!";
                Label1.ForeColor = System.Drawing.Color.Green;
                Session["usergmail"]=gmail;
                Response.Redirect("user_home.aspx?gmail="+gmail); // Redirect to homepage after login
            }
            else
            {
                Label1.Text = "Invalid Username or Password!";
                Label1.ForeColor = System.Drawing.Color.Red;
            }

            // Clean up
            cmd.Dispose();
            cn.Close();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            cn.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Amey Gawade\source\repos\PRJ\PRJ\App_Data\CLAIMEASE_DB.mdf"";";
        }

    }
}
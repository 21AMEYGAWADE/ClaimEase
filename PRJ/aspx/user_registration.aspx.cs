using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PRJ
{
    public partial class user_registration : System.Web.UI.Page
    {
        object result;
        int userid,age;
        String firstname, contact, gmail, password,lastname;
        SqlConnection cn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
            cn.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Amey Gawade\source\repos\PRJ\PRJ\App_Data\CLAIMEASE_DB.mdf"";";
            cn.Open();
            cmd.Connection = cn;
            cmd.CommandText = "SELECT MAX(userid) FROM registration_details;";
            result=cmd.ExecuteScalar();

            userid = (result != DBNull.Value) ? Convert.ToInt32(result) : 0;
            userid = userid + 1; 
            cmd.Dispose();
            cn.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            firstname = TextBox4.Text;
            gmail = TextBox1.Text;
            password = TextBox3.Text;
            lastname = TextBox6.Text;
            age=Convert.ToInt32(TextBox5.Text);
            contact = TextBox7.Text;

            if(firstname!="" && gmail!="" && password!="")
            {
                cn.Open();
                cmd.Connection = cn;
                cmd.CommandText = "insert into registration_details values ('" + firstname + "','" + gmail + "','" + password + "',"+userid+",'"+lastname+"',"+age+",'"+contact+"');";
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                cn.Close();
                Session["usergmail"] = gmail;
                Response.Redirect("user_home.aspx?gmail=" + gmail);
            }
        }
    }
}
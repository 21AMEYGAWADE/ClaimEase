using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PRJ
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection cn=new SqlConnection();
        SqlCommand cmd = new SqlCommand();

        public string userid,type,fname,lname,remark,date;
        public int amount,policynumber;
        public object result;

        protected void Page_Load(object sender, EventArgs e)
        {
            cn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\CLAIMEASE_DB.mdf;Integrated Security=True";
            userid =Request.QueryString["userid"];
            TextBox1.Text = userid;
            string query = "SELECT MAX(policynumber) FROM claim_details";
            cn.Open();
            cmd.Connection = cn;
            cmd.CommandText = query;
            result=cmd.ExecuteScalar();
            policynumber = Convert.ToInt32(result);
            policynumber += 1;
            cn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            type = DropDownList1.SelectedValue;
            fname = TextBox2.Text;
            lname = TextBox3.Text;
            amount = Convert.ToInt32(TextBox4.Text);
            remark = TextBox5.Text;
            date = TextBox6.Text;

            cn.Open() ; 
            cmd.Connection= cn;
            cmd.CommandText = "INSERT INTO claim_details values('" + userid + "','" + fname + "','" + lname + "'," + policynumber + ",'" + type + "'," + amount + ",'" + remark + "','Pending');";
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            cn.Close() ;

            string message = "Hello!\nYour Claim is submitted.";
            string script = $"alert('{message}');";
            ClientScript.RegisterStartupScript(this.GetType(), "alertScript", script, true);

            DropDownList1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            cn.Open();
            cmd.Connection = cn;
            cmd.CommandText = "INSERT INTO claim_status_details values('" + userid + "','" + fname + "','" + lname + "'," + policynumber + ",'" + type + "'," + amount + ",'" + remark + "','Pending');";
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            cn.Close();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PRJ.aspx
{
    public partial class myaccount : System.Web.UI.Page
    {

        String firstname, lastname, gmail,data,gm,age1,contact1,status;
        public int contact, userid, age;
        public object st;
        public string statusQuery = "SELECT status FROM claim_details WHERE userid = @UserId";


        SqlConnection cn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            gmail=(String)Session["usergmail"];
            cn.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Amey Gawade\source\repos\PRJ\PRJ\App_Data\CLAIMEASE_DB.mdf"";";
            LoadUserData(gmail);

            cn.Open();
            cmd.Connection = cn;
            cmd.CommandText = "Select 1 from claim_details where userid="+userid;
            st = cmd.ExecuteScalar();
            if(st==null)
            {
                Label14.Text = "Not Submitted any claim";
            }
            else
            {
                using (SqlCommand statusCmd = new SqlCommand(statusQuery, cn))
                {
                    statusCmd.Parameters.AddWithValue("@UserId", userid);
                    object result = statusCmd.ExecuteScalar();

                    if (result != null)
                    {
                        status = Convert.ToString("Your claim is "+result); // Actual status from DB
                        Label14.Text = status;
                    }
                    else
                    {
                        status = "Unknown"; // Just in case status is NULL
                    }
                }
            }

            cn.Close();

        }
        public void LoadUserData(string gmail)
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\Amey Gawade\\source\\repos\\PRJ\\PRJ\\App_Data\\CLAIMEASE_DB.mdf\";";
            string query = "SELECT * FROM registration_details WHERE gmail = @gmail";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, connection))
                {
                    cmd.Parameters.AddWithValue("@gmail", gmail);

                    connection.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read()) // If user exists
                        {
                            userid = (int)reader["userid"]; // Example additional field
                            firstname = reader["firstname"].ToString();
                            lastname= reader["lastname"].ToString();
                            age1 = reader["age"].ToString();
                            contact1 = reader["contact"].ToString();

                            if(lastname==null)
                            {
                                TextBox4.Text = "";
                            }
                            else
                            {
                                TextBox4.Text = lastname;
                            }
                            if(age1.ToString()==null || age1.ToString()=="0")
                            {
                                TextBox2.Text = "0";
                            }
                            else
                            {
                                TextBox2.Text = age1.ToString();
                            }
                            if(contact1.ToString()==null)
                            {
                                TextBox5.Text="0";
                            }
                            else
                            {
                                TextBox5.Text = contact1.ToString();
                            }


                            TextBox1.Text = userid.ToString();
                            TextBox3.Text=firstname;
                            TextBox6.Text=gmail;



                            amey.Text=firstname+gmail+userid;
                        }
                        else
                        {
                            amey.Text = "User not found!";
                        }
                    }
                    connection.Close();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("user_home.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string age_upd=TextBox2.Text;
            amey.Text+=age_upd;

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
    }
}
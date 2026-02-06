using System;
using System.Drawing;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace PRJ.aspx
{
    public partial class life_insurance : System.Web.UI.Page
    {
        int age, pinCode;
        public string RazorpayKey = "";
        string name, gender, smokerStatus,phone;

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("user_home.aspx");
        }

        SqlConnection cn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            cn.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Amey Gawade\source\repos\PRJ\PRJ\App_Data\CLAIMEASE_DB.mdf"";";
            RazorpayKey = ConfigurationManager.AppSettings["RazorpayKey"];
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            name = txtName.Text;
            gender = rbMale.Checked ? "Male" : "Female";
            smokerStatus = rbSmokerYes.Checked ? "Yes" : "No";
            age = Convert.ToInt32(txtAge.Text);
            pinCode = Convert.ToInt32(txtPinCode.Text);
            phone = txtPhone.Text;

            if (phone.Length < 10)
            {
                Label2.Text = "Invalid Phone Number";
                Label2.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                cn.Open();
                cmd.Connection = cn;
                cmd.CommandText = "insert into term_life_insurance_details values ('" + name + "','" + gender + "','" + smokerStatus + "'," + age + "," + pinCode + "," + phone + ");";
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                cn.Close();

                if (hdnPaymentStatus.Value == "success")
                {
                    // Process the form data (e.g., save to database, API call)
                    lblMessage.Text = $"Thank you, {name}! Your insurance quote is being processed.";
                    formPanel.Visible = true;


                    txtName.Text = "";
                    txtAge.Text = "";
                    txtPhone.Text = "";
                    txtPinCode.Text = "";
                    Response.Write("<script>alert('Payment confirmed and form submitted successfully!');</script>");
                }
                else {
                    Response.Write("<script>alert('Payment not completed. Please try again.');</script>");
                }
            }   
            
        }

    }
}
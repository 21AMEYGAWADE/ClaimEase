using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace PRJ.aspx
{
    public partial class health_insurance : System.Web.UI.Page
    {
        public string RazorpayKey = "";
        string insuredPerson, phone,fullName,dob,gender,height,weight,familyHistoryDetails;
        string hasFamilyHistory, medicalConditions, medicationStatus,medications, treatmentStatus;
        int age, pinCode;

        SqlConnection cn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
            cn.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Amey Gawade\source\repos\PRJ\PRJ\App_Data\CLAIMEASE_DB.mdf"";";
            RazorpayKey = ConfigurationManager.AppSettings["RazorpayKey"];
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("user_home.aspx");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            insuredPerson = rbSelf.Checked ? "Self" :
                                   rbSpouse.Checked ? "Spouse" :
                                   rbChild.Checked ? "Child" :
                                   rbParent.Checked ? "Parent" : "Parent In-Law";

            age = Convert.ToInt32(txtAge.Text);
            phone = txtPhone.Text;
            pinCode = Convert.ToInt32(txtPinCode.Text);

            fullName = txtFullName.Text;
            dob = txtDOB.Text;
            gender = rbMale.Checked ? "Male" : rbFemale.Checked ? "Female" : "Other";
            height = txtHeight.Text;
            weight = txtWeight.Text;
            hasFamilyHistory = rdoYes.Checked ? "Yes" : "No";
            familyHistoryDetails = txtFamilyHistoryDetails.Text;
            medicationStatus = rbMedYes.Checked ? "Yes" : "No";
            treatmentStatus = rbTreatmentYes.Checked ? "Yes" : "No";


            if (phone.Length < 10)
            {
                Label2.Text = "Invalid Phone Number";
                Label2.ForeColor = System.Drawing.Color.Red;
            }

            medicalConditions = "";

            if (chkDiabetes.Checked) medicalConditions += "Diabetes, ";
            if (chkBloodPressure.Checked) medicalConditions += "High Blood Pressure, ";
            if (chkHeartDisease.Checked) medicalConditions += "Heart Disease, ";
            if (chkAsthma.Checked) medicalConditions += "Asthma or Lung Disease, ";
            if (chkCancer.Checked) medicalConditions += "Cancer, ";
            if (chkMentalHealth.Checked) medicalConditions += "Mental Health Disorders, ";
            if (chkAutoimmune.Checked) medicalConditions += "Autoimmune Disorders, ";

            if (chkOther.Checked)
            {
                medicalConditions +="None";
            }
            if (string.IsNullOrEmpty(medicalConditions))
            {
                medicalConditions = "";
            }

            medications = rbMedYes.Checked && !string.IsNullOrWhiteSpace(txtMedications.Text) ? txtMedications.Text : "None";


            if (age>=18 && fullName!="" && height!="" && weight!="" && hasFamilyHistory!="" &&medicalConditions!="" && medicationStatus!="" && treatmentStatus!="")
            {
                cn.Open();
                cmd.Connection = cn;
                cmd.CommandText = "insert into health_insurance_details values (" + age + ",'" + phone + "'," + pinCode + ",'" + fullName + "','" + dob + "','" + gender + "'," + height + "," + weight + ",'" + familyHistoryDetails + "','" + medicalConditions + "','" + medicationStatus + "','" + treatmentStatus + "');";
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                cn.Close();
                if (hdnPaymentStatus.Value == "success")
                {
                    // Process form submission (store data, validate, send API request, etc.)
                    lblMessage.Text = $"Thank you! We are processing your insurance quote for {insuredPerson}.";
                    formPanel.Visible = true;
                    Label2.Text = "";


                    

                    txtAge.Text = "";
                    txtPhone.Text = "";
                    txtPinCode.Text = "";
                    txtFullName.Text = "";
                    txtDOB.Text = "";
                    txtHeight.Text = "";
                    txtWeight.Text = "";
                    txtMedications.Text = "";
                    txtFamilyHistoryDetails.Text = "";
                    chkAsthma.Checked = false;
                    chkAutoimmune.Checked = false;
                    chkBloodPressure.Checked = false;
                    chkCancer.Checked = false;
                    chkDiabetes.Checked = false;
                    chkHeartDisease.Checked = false;
                    chkMentalHealth.Checked = false;
                    chkOther.Checked = false;
                    Response.Write("<script>alert('Payment confirmed and form submitted successfully!');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Payment not completed. Please try again.');</script>");
                }
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PRJ.aspx
{
    public partial class admin_home : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection();
        SqlCommand cmd= new SqlCommand();
        SqlDataReader dr;

        public int user_id, policynumber, claimamount,userId;
        public string firstname, typeofclaim, description;

        

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName =="show")
            {
                int index=int.Parse(e.CommandArgument.ToString());
                GridViewRow row = GridView1.Rows[index];

                user_id = int.Parse(row.Cells[0].Text);
                firstname = row.Cells[1].Text;
                policynumber = int.Parse(row.Cells[2].Text);
                typeofclaim = row.Cells[3].Text;
                claimamount = int.Parse(row.Cells[4].Text);
                description = row.Cells[5].Text;
                
                Label5.Text=user_id.ToString();
                Label7.Text=firstname.ToString();
                Label9.Text=policynumber.ToString();
                Label11.Text=typeofclaim.ToString();
                Label13.Text=claimamount.ToString();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            cn.ConnectionString = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = ""C:\Users\Amey Gawade\source\repos\PRJ\PRJ\App_Data\CLAIMEASE_DB.mdf"";";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            user_id =Convert.ToInt32(Label5.Text);
            string connStr = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = ""C:\Users\Amey Gawade\source\repos\PRJ\PRJ\App_Data\CLAIMEASE_DB.mdf"";";
            using (SqlConnection con = new SqlConnection(connStr))
            {
                con.Open();
                SqlTransaction transaction = con.BeginTransaction();

                try
                {
                    // Delete from claim_status_details
                    SqlCommand deleteCmd = new SqlCommand(
                        "DELETE FROM claim_status_details WHERE userid = @userid", con, transaction);
                    deleteCmd.Parameters.AddWithValue("@userid", user_id);
                    deleteCmd.ExecuteNonQuery();

                    // Update status in claim_details
                    SqlCommand updateCmd = new SqlCommand(
                        "UPDATE claim_details SET status = @status WHERE userid = @userid", con, transaction);
                    updateCmd.Parameters.AddWithValue("@status", "Approved");
                    updateCmd.Parameters.AddWithValue("@userid", user_id);
                    updateCmd.ExecuteNonQuery();

                    transaction.Commit();

                    Label5.Text = "";
                    Label7.Text = "";
                    Label9.Text = "";
                    Label11.Text = "";
                    Label13.Text = "";

                }
                catch (Exception ex)
                {
                    transaction.Rollback();
                    // Optional: handle error
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            user_id = Convert.ToInt32(Label5.Text);
            string connStr = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = ""C:\Users\Amey Gawade\source\repos\PRJ\PRJ\App_Data\CLAIMEASE_DB.mdf"";";
            using (SqlConnection con = new SqlConnection(connStr))
            {
                con.Open();
                SqlTransaction transaction = con.BeginTransaction();

                try
                {
                    // Delete from claim_status_details
                    SqlCommand deleteCmd = new SqlCommand(
                        "DELETE FROM claim_status_details WHERE userid = @userid", con, transaction);
                    deleteCmd.Parameters.AddWithValue("@userid", user_id);
                    deleteCmd.ExecuteNonQuery();

                    // Update status in claim_details
                    SqlCommand updateCmd = new SqlCommand(
                        "UPDATE claim_details SET status = @status WHERE userid = @userid", con, transaction);
                    updateCmd.Parameters.AddWithValue("@status", "Rejected");
                    updateCmd.Parameters.AddWithValue("@userid", user_id);
                    updateCmd.ExecuteNonQuery();

                    transaction.Commit();

                    Label5.Text = "";
                    Label7.Text = "";
                    Label9.Text = "";
                    Label11.Text = "";
                    Label13.Text = "";

                }
                catch (Exception ex)
                {
                    transaction.Rollback();
                    // Optional: handle error
                }
            }
        }

    }
}
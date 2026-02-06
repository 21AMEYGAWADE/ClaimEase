using PRJ.aspx;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PRJ
{
    public partial class user_home : System.Web.UI.Page
    {
        string selectedValue="";
        object result;
        public int userid;
        public string gmail;

        SqlConnection cn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
            gmail = Request.QueryString["gmail"];
            cn.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Amey Gawade\source\repos\PRJ\PRJ\App_Data\CLAIMEASE_DB.mdf"";";
            cn.Open();
            cmd.Connection = cn;
            cmd.CommandText = "SELECT userid FROM registration_details WHERE gmail ='"+gmail+"';";
            result = cmd.ExecuteScalar();
            userid = (result != DBNull.Value) ? Convert.ToInt32(result) : 0;
            cmd.Dispose();
            cn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["usergmail"] = gmail;
            Response.Redirect("myaccount.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectedValue = DropDownList1.SelectedValue;
            if (selectedValue=="life_insurance.aspx")
            {
                Response.Redirect("life_insurance.aspx");
            }
            if (selectedValue=="health_insurance.aspx")
            {
                Response.Redirect("health_insurance.aspx");
            }
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = DropDownList3.SelectedIndex;
            if (index == 0)
            {
                Response.Redirect("claim_page.aspx?userid="+userid);
            }
            else if (index == 1)
            {

            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("about_us.aspx");
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            string url = DropDownList2.SelectedValue;
            if(url== "Info_page.aspx")
            {
                Response.Redirect("Info_page.aspx");
            }
            
        }
    }
}
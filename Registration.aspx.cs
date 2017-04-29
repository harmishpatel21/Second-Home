using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void register_Click(object sender, EventArgs e)
    {
        string conStr = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(conStr);
        cn.Open();

        //SqlConnection cn;
        
       // cn = new SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\\SEM 4\\Web Technology\\WT lab\\Second-Home-master\\App_Data\\Database.mdf;Integrated Security=True");
        //cn.Open();
        
        
        
        
       // string sid, hid, r_id, s_name, dob1, college1,contact_no1,parents_c_no1, joining_date1;
        //s_name = username.Text;
        //dob1 = dob.Text;
        //string pass = passwd.Text;
        //college1 = college.Text;
        //contact_no1 = contact_no.Text;
        //parents_c_no1 = parentsno.Text;
        //joining_date1 = joindate.Text;
        //string hostel;
        
          //  cn.Open();
        string h = "insert into student(s_id,h_id,r_id,s_name,password,dob,college,contact_no,parents_c_no,joining_date) values('"+sid.Text+"','" + hostel.Text + "','" + room.Text + "','" + username.Text + "','" + passwd.Text + "','" + dob.Text + "','" + college.Text + "','" + contact_no.Text + "','" + parentsno.Text + "','" + joindate.Text + "')";
            SqlCommand cmd = new SqlCommand(h, cn);
            int a = cmd.ExecuteNonQuery();
            cn.Close();
            // Response.Redirect("Default.aspx");
            if (a > 0)
            {
                Response.Redirect("login.aspx");
            }
    }
    protected void hostel_SelectedIndexChanged(object sender, EventArgs e)
    {
    }

    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}
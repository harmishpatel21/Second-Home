using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class updateProfile : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
         Response.Redirect("login.aspx");

        }
        if (Request.Cookies["name"] == null) { Response.Redirect("login.aspx"); }

        string conStr = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        cn = new SqlConnection(conStr);
        
        cn.Open();
        string ind = Session["name"].ToString();
        //int ind = 1;
        string query = "select * from student where s_name='" + ind + "'";
        SqlDataAdapter da = new SqlDataAdapter(query, cn);
        //   DataTable dt = new DataTable();
        DataSet ds = new DataSet();
        da.Fill(ds, "student");
        DataTable dt = ds.Tables[0];
        cn.Close();
        //Binding TextBox From dataTable  
        //Label1.Text = dt.Rows[0]["s_id"].ToString();
        username.Text = dt.Rows[0]["s_name"].ToString();
        passwd.Text = dt.Rows[0]["password"].ToString();
        //email.Text = dt.Rows[0]["email"].ToString();
        dob.Text = dt.Rows[0]["dob"].ToString();
        joindate.Text = dt.Rows[0]["joining_date"].ToString();
        //hostel.Text = dt.Rows[0]["s_name"].ToString();
        //room.Text = dt.Rows[0]["s_name"].ToString();
        parentsno.Text = dt.Rows[0]["parents_c_no"].ToString();
        contact_no.Text = dt.Rows[0]["contact_no"].ToString();
        college.Text = dt.Rows[0]["college"].ToString();
        
        




    }
    protected void register_Click(object sender, EventArgs e)
    {
        //SqlConnection cn;
        cn = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=\"F:\\college\\college\\sem4\\wt\\Visual studio websites\\WebSite1\\App_Data\\Database2.mdf\";Integrated Security=True");
        //int ind = Session[sid];
        int ind = 1;
        
        cn.Open();
        
        string sql = "UPDATE student SET s_name='" + username.Text + "',dob='" + dob.Text + "',college='" + college.Text + "',contact_no='" + contact_no.Text + "',parents_c_no='" + parentsno.Text + "',joining_date='" + joindate.Text + "' WHERE s_id='" + ind + "'";
        //string sql = "UPDATE student SET hid='" + hid + "',rid='" + r_id + "',s_name='" + s_name + "',dob='" + dob + "',college='" + college + "',contact_no='" + contact_no + "',parents_c_no='" + parents_c_no + "',joining_date='" + joining_date + " WHERE sid='" + ind + "'";
        SqlCommand cmd = new SqlCommand(sql, cn);
        int a = cmd.ExecuteNonQuery();
        cmd.Dispose();
        cn.Close();
        if (a > 0)
        {
            Response.Redirect("updateProfile.aspx");
        }
        else {
            Label1.Text = "update unsecces";
        }

    }
}
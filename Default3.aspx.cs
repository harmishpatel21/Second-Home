using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"]==null) {
            Response.Redirect("login.aspx");
        
        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        
        hostelop h = new hostelop();
        DataSet ds=h.dbselect(Places.Text);
        ShowData.DataSource = ds;
        ShowData.DataMember = "hostel";
        ShowData.DataBind();

        
        
    }
    protected void DS_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}
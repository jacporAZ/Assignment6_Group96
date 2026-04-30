using System;
using System.Web.Security;

namespace Assignment5_Group96
{
    public partial class Staff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["StaffAuthenticated"] == null || !(bool)Session["StaffAuthenticated"])
            {
                Response.Redirect("~/StaffLogin.aspx");
                return;
            }

            if (!IsPostBack)
            {
                lblWelcome.Text = "Welcome, staff user: " + Session["StaffUsername"];
            }
        }

        protected void btnShowStaffInfo_Click(object sender, EventArgs e)
        {
            lblStaffInfo.Text = "Staff access verified. This protected page is available only after staff login.";
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Remove("StaffAuthenticated");
            Session.Remove("StaffUsername");

            FormsAuthentication.SignOut();
            Response.Redirect("~/Default.aspx");
        }
    }
}
using System;
using System.Web.Security;
using System.Xml.Linq;

namespace Assignment5_Group96
{
    public partial class StaffLogin : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            string filePath = Server.MapPath("~/App_Data/Staff.xml");
            XDocument doc = XDocument.Load(filePath);

            bool isValid = false;

            foreach (XElement user in doc.Descendants("User"))
            {
                string storedUsername = user.Element("Username")?.Value;
                string storedPassword = user.Element("Password")?.Value;

                if (username == storedUsername && password == storedPassword)
                {
                    isValid = true;
                    break;
                }
            }

            if (isValid)
            {
                Session["StaffAuthenticated"] = true;
                Session["StaffUsername"] = username;

                FormsAuthentication.SetAuthCookie(username, false);
                Response.Redirect("~/Staff.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid staff username or password.";
            }
        }
    }
}
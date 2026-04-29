using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using crypto;
namespace eventWeb
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            string hash = crypto.crypto.hashPass(TextBox1.Text);
            Label1.Text = hash;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string key = TextBox2.Text;
            string password = TextBox3.Text; 

            string encrypted = crypto.crypto.encryptPass(password, key);
            Label2.Text = encrypted;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string key = TextBox4.Text;
            string encrypted = TextBox5.Text;
            string decrypted = crypto.crypto.decryptPass(encrypted, key);
            Label3.Text = decrypted;
        }
    }
}
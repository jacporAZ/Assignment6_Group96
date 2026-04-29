using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eventWeb
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string club1 = DropDownList1.SelectedValue;
            string club2 = DropDownList2.SelectedValue;
            string club3 = DropDownList3.SelectedValue;
            string fullSelection = club1 + ", " + club2 + ", " + club3;
            Label1.Text = fullSelection; 
            var history = Session["SessionHistory"] as List<string> ?? new List<string>(); 

            history.Add(fullSelection + " Shown interest at " + DateTime.Now.ToString("HH:mm:ss"));
            Session["SessionHistory"] = history;
            ShowSessionContents();
        }

        private void ShowSessionContents()
        {
            var history = Session["SessionHistory"] as List<string>;
            if (history == null || history.Count == 0) 
            {
                Label2.Text = "No previous selections.";
                return;
            }

            string previous = "Num of Selections " + history.Count;

            foreach (var club in history) {
                previous += " " + club + "</br>";
            }

            Label2.Text = previous;
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Remove("SessionHistory");
            Label2.Text = "Session history cleared.";
            ShowSessionContents();
        }
    }
}
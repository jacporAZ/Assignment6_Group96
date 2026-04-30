using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Assignment5_Group96.ClubServiceProxy;

namespace Assignment5_Group96
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        private ClubService service = new ClubService();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string[] clubs = service.GetClubs();
            StringBuilder sb = new StringBuilder();

            foreach (string club in clubs) {
                sb.Append("<li>" + club + "</li>");
            }
          
            Label1.Text = sb.ToString();
        }



        protected void Button3_Click(object sender, EventArgs e)
        {
            var clubMemberCount = service.getClubMembers(DropDownList1.SelectedValue); 
            Label3.Text = "Number of members in " + DropDownList1.SelectedValue + ": " + clubMemberCount;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string clubInfo = service.getClubInfo(DropDownList2.SelectedValue);
            Label2.Text = clubInfo;
        }
    }
}
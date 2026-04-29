using System;
using System.Web;
using System.Web.UI;

namespace Assignment5_Group96
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Show initial instructions only when the page loads for the first time.
            if (!IsPostBack)
            {
                lblOutput.Text = "Ready for testing.";
                litDetails.Text = "<p class='small-note'>Click any TryIt button to test a component.</p>";
                lblServiceResult.Text = "";
            }
        }

        protected void btnTestSession_Click(object sender, EventArgs e)
        {
            // Save a sample value in session state and display it.
            string sessionValue = "Session test saved at " + DateTime.Now.ToString("hh:mm:ss tt");
            Session["Assignment5SessionTest"] = sessionValue;

            lblOutput.Text = "Session component test completed successfully.";
            litDetails.Text =
                "<p><strong>Session Key:</strong> Assignment5SessionTest</p>" +
                "<p><strong>Stored Value:</strong> " + Server.HtmlEncode(sessionValue) + "</p>" +
                "<p><strong>Session ID:</strong> " + Server.HtmlEncode(Session.SessionID) + "</p>";

            lblServiceResult.Text = "";
        }

        protected void btnTestCookie_Click(object sender, EventArgs e)
        {
            // Create a cookie, set an expiration time, and show the stored value.
            string cookieValue = "Cookie set at " + DateTime.Now.ToString("hh:mm:ss tt");

            HttpCookie testCookie = new HttpCookie("Assignment5Cookie");
            testCookie.Value = cookieValue;
            testCookie.Expires = DateTime.Now.AddMinutes(30);

            Response.Cookies.Add(testCookie);

            lblOutput.Text = "Cookie component test completed successfully.";
            litDetails.Text =
                "<p><strong>Cookie Name:</strong> Assignment5Cookie</p>" +
                "<p><strong>Cookie Value:</strong> " + Server.HtmlEncode(cookieValue) + "</p>" +
                "<p><strong>Expires:</strong> " + testCookie.Expires.ToString("MM/dd/yyyy hh:mm:ss tt") + "</p>";

            lblServiceResult.Text = "";
        }

        protected void btnShowRequestInfo_Click(object sender, EventArgs e)
        {
            // Display simple request and browser information for testing.
            string currentUrl = Request.Url.AbsoluteUri;
            string browser = Request.Browser.Browser + " " + Request.Browser.Version;
            string sessionId = Session.SessionID;

            lblOutput.Text = "Request information displayed successfully.";
            litDetails.Text =
                "<p><strong>Current URL:</strong> " + Server.HtmlEncode(currentUrl) + "</p>" +
                "<p><strong>Browser:</strong> " + Server.HtmlEncode(browser) + "</p>" +
                "<p><strong>Session ID:</strong> " + Server.HtmlEncode(sessionId) + "</p>" +
                "<p><strong>Server Time:</strong> " + DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss tt") + "</p>";

            lblServiceResult.Text = "";
        }

        protected void btnCallService_Click(object sender, EventArgs e)
        {
            try
            {
                // Read the user input and call the remote web service method.
                int num = Convert.ToInt32(txtNumber.Text);

                MathService service = new MathService();
                int result = service.Square(num);

                lblServiceResult.Text = "Square = " + result;

                lblOutput.Text = "Remote service test completed successfully.";
                litDetails.Text =
                    "<p><strong>Service Name:</strong> MathService</p>" +
                    "<p><strong>Method:</strong> Square</p>" +
                    "<p><strong>Input:</strong> " + num + "</p>" +
                    "<p><strong>Output:</strong> " + result + "</p>";
            }
            catch
            {
                // Show a friendly message if the user enters invalid input.
                lblServiceResult.Text = "Invalid input. Please enter a valid integer.";
            }
        }
    }
}
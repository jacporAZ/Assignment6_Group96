using System.Web.Services;

namespace Assignment5_Group96
{
    /// <summary>
    /// Simple remote service used in Assignment 5
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    public class MathService : WebService
    {
        [WebMethod]
        public int Square(int num)
        {
            // Return the square of the integer input.
            return num * num;
        }
    }
}
using System;
using System.Web.Services;

namespace Assignment5_Group96
{
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    public class StudyService : WebService
    {
        [WebMethod]
        public string GetLetterGrade(double score)
        {
            if (score < 0 || score > 100)
            {
                return "Invalid";
            }

            if (score >= 90) return "A";
            if (score >= 80) return "B";
            if (score >= 70) return "C";
            if (score >= 60) return "D";
            return "E";
        }
    }
}
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace eventWeb
{
    [WebService(Namespace = "tmpUri")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]

    public class ClubService : System.Web.Services.WebService
    {
        [WebMethod(Description = "Returns clubs as list")]
        public string[] GetClubs() => new[] {
            "Robotics Club", "Video Game Club", "Horse Club", "Cooking Club", "Chess Club"
        };

        [WebMethod(Description = "Returns the details of the clubs")]
        public string getClubInfo(string ClubName) { 
            var clubs = new Dictionary<string, string> {
                { "Robotics Club", "Tuesday at 7pm, @MU" },
                { "Video Game Club", "Wednesday at 4pm, @PSL 101" },
                { "Horse Club", "Monday at 2pm, @SDFC" },
                { "Cooking Club", "Friday at 3pm, @GLV" },
                { "Chess Club", "Thursday at 12pm, @FUL 102" }
            };
            return clubs[ClubName]; 
        }
        [WebMethod(Description = "Returns the number of members in a club")]
        public int getClubMembers(string ClubName) { 
            var clubMembers = new Dictionary<string, int> {
                { "Robotics Club", 32 },
                { "Video Game Club", 67 },
                { "Horse Club", 12 },
                { "Cooking Club", 17 },
                { "Chess Club", 34 }
            };
            return clubMembers[ClubName];
        }
    }
}

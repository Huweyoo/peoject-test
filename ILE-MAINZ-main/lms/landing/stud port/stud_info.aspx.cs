using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testingssss.stud_port
{
    public partial class stud_info : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void dropdownToggle_Click(object sender, EventArgs e)
        {
            // Handle logout logic here
            Response.Redirect("logout.aspx"); // Example: redirect to logout page
        }
    }
}
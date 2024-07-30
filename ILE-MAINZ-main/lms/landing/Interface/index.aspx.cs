using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testingssss.Interface
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnroll_Click(object sender, EventArgs e)
        {
            modal.Style["display"] = "block"; 
        }

        protected void btnYes_Click(object sender, EventArgs e)
        {
            Response.Redirect("/landing/Interface/form/enrolled.aspx");
        }
        protected void btnNo_Click(object sender, EventArgs e)
        {
            Response.Redirect("/landing/Interface/form/not-enrolled.aspx");
        }
    }
}
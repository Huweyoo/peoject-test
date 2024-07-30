using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testingssss.stud_port
{
    public partial class dash : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }

        private void BindGridView()
        {
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[4] { new DataColumn("SubjectName"), new DataColumn("Grades"), new DataColumn("Teacher"), new DataColumn("Status") });

            // Sample data - replace with your actual data source
            for (int i = 0; i < 11; i++)
            {
                dt.Rows.Add("SIA102", "5", "Quirra Nadera", "Ongoing");
            }

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void dropdownToggle_Click(object sender, EventArgs e)
        {

        }
    }
}
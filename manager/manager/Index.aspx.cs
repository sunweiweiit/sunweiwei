using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace manager
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string name = Request["name"];
            //lname.Text = name;
            //Session["logname"] = lname.Text;
            lname.Text = Session["name"].ToString();

        }
    }
}
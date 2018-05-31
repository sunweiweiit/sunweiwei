using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace manager
{
    public partial class Log1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lname.Text = Session["name"].ToString();
        }
    }
}
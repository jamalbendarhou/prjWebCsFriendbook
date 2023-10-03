using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjWebCsFriendbook
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConnexion_Click(object sender, EventArgs e)
        {
            Response.Redirect("connexion.aspx");
        }

        protected void btnInscrire_Click(object sender, EventArgs e)
        {
            Response.Redirect("inscrire.aspx");
        }
    }
}
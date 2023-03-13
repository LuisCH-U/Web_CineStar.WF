using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webOmpe_WF
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkPresidenciales_Click(object sender, EventArgs e)
        {
            Session["id"] = null;
            Response.Redirect("presidenciales.aspx");
        }

        protected void lnkActas_Click(object sender, EventArgs e)
        {
            Session["id"] = null;
            Response.Redirect("actas.aspx");
        }

        protected void lnkParticipacion_Click(object sender, EventArgs e)
        {
            Session["id"] = null;
            Response.Redirect("participacion.aspx");
        }
    }
}
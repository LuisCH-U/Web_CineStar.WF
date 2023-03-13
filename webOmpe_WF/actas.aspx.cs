using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webOmpe_WF
{
    public partial class actas : System.Web.UI.Page
    {
        dao.daoOnpe daoOnpe = new dao.daoOnpe();
        //string id;

        protected void Page_Load(object sender, EventArgs e)
        {
            bool bID = Session["id"] == null;

            pnlResultado.Visible = !bID;
            pnlUbigeo.Visible = !bID;
            pnlError.Visible = !bID;
            //pnlLinks.Visible = !bID;
            //id = Request.QueryString["id"];
            //if (id != null && Session["id"] != null && Session["idd"] == null) getDepartamentos();
            //else if (id != null && Session["id"] != null && Session["idd"] != null) getProvincias();
        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            //pnlActa.DataBind();
            //fvActa.DataSource = daoOnpe.getActas(txtMesa.Text);
            //fvActa.DataBind();   
            //pnlActa.Visible = true;

            pnlResultado.Visible = true;
            pnlUbigeo.Visible = false;

            
            
            fvActa.DataSource = daoOnpe.getActas(txtMesa.Text);
            fvActa.DataBind();
            pnlActa.Visible = true;

            pnlError.Visible = fvActa.DataItemCount == 0;
            pnlResultado.Visible = !pnlError.Visible;
        }
    }
}
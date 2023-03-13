using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using webOmpe_WF.dao;

namespace webOmpe_WF
{
    public partial class participacion : System.Web.UI.Page
    {
        dao.daoOnpe daoOnpe=new dao.daoOnpe();
        string id;

        protected void Page_Load(object sender, EventArgs e)
        {
            bool bID = Session["id"] == null;

            pnlBotones.Visible = !bID;
            pnlLinks.Visible = bID;
            pnlResultados.Visible = !bID;

            id = Request.QueryString["id"];
            if (id != null && Session["id"] != null && Session["idd"]== null ) getDepartamentos();
            else if (id != null && Session["id"] != null && Session["idd"] != null) getProvincias();
        }

        

        protected void lnkExtranjero_Click(object sender, EventArgs e)
        {
            pnlBotones.Visible = true;
            pnlLinks.Visible= false;
            Session["id"] = "Extranjero";
            Session["idd"] = null;
            pnlResultados.Visible = true;


            lblDPD.Text = "CONTINENTE";
            rptRegistros.DataSource = daoOnpe.getVotos("Extranjero");
            rptRegistros.DataBind();
        }

        protected void lnkPeru_Click(object sender, EventArgs e)
        {
            pnlBotones.Visible = true;
            pnlLinks.Visible= false;
            pnlResultados.Visible = true;
            Session["id"]= "Peru";
            Session["idd"] = null;

            lblDPD.Text = "DEPARTAMENTO";
            rptRegistros.DataSource =daoOnpe.getVotos("Peru");
            rptRegistros.DataBind();

        }
        private void getDepartamentos()
        {
            Session["idd"] = "PROVINCIA";

            lblDPD.Text = Session["id"].Equals("Peru") ?"PROVINCIA" : "PAIS";
            rptRegistros.DataSource = daoOnpe.getVotos("Departamento",id);
            rptRegistros.DataBind();
        }
        private void getProvincias()
        {
            Session["idd"] = "Distrito";

            lblDPD.Text = Session["id"].Equals("Peru") ? "DISTRITO" : "CIUDAD";
            rptRegistros.DataSource = daoOnpe.getVotos("Provincia",id);
            rptRegistros.DataBind();
        }
    }
}
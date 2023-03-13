using System;

namespace webOmpe_WF.dao
{
    
    public class daoOnpe
    {
        db.Db db = new db.Db("cnOnpe");

        internal object getVotos( string DPD, string id = null)
        {
            db.Sentencia("usp_getVotos" + DPD + ( id == null ? "" : " '" + id + " '") ) ;
            return db.GetDataTable();
        }
        
        internal object getActas(string id)
        {
            db.Sentencia("usp_getGrupoVotacion '" + id + "'");
            //db.Sentencia("usp_getGrupoVotacion");
            return db.GetDataTable();
        }
        ////internal object getVotosPeru()
        ////{
        ////    db.Sentencia("usp_getVotosPeru");
        ////    return db.GetDataTable();
        ////}

        ////internal object getVotosDepartamentos(string id)
        ////{
        ////    db.Sentencia("usp_getVotosDepartamento  '" + id + "'");
        ////    return db.GetDataTable();
        ////}

        ////internal object getVotosProvincias(string id)
        ////{
        ////    db.Sentencia("usp_getVotosProvincia  '" + id + "'");
        ////    return db.GetDataTable();
        ////}

    }
}
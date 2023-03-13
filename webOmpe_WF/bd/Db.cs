using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace webOmpe_WF.db
{
    public class Db
    {
        SqlConnection cn=null;
        SqlCommand cmd=null;
        SqlDataAdapter da=null;

        public Db(string cnString)
        {
            cn = new SqlConnection(ConfigurationManager.ConnectionStrings[cnString].ConnectionString);
        }

        internal void Sentencia(string sql)
        {
            if (cn == null) return;
            cmd = new SqlCommand(sql,cn);        
        }
        
        internal DataTable GetDataTable()
        {
            if (cn == null) return null;
            da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt.Rows.Count==0 ? null : dt;    
        }

        internal object getCampo()
        {
            if (cn == null) return null;    

            if (cn.State == ConnectionState.Closed) cn.Open();  
            return cmd.ExecuteScalar();
        
        }
    }
}
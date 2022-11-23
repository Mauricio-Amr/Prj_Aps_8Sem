using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace APS.Objetos
{
    public class Usuario
    {
        #region Propriedades
        public string Email { get; set; }
        public string Senha { get; set; }
        #endregion

        #region ConnectionStrings
        public readonly string strConexao = ConfigurationManager.ConnectionStrings["APS_Base"].ConnectionString;
        #endregion

        public bool Logar(string email, string senha)
        {
            SqlConnection conn = new SqlConnection(strConexao);
            conn.Open();

            SqlCommand cmd = new SqlCommand("Select * from Usuarios where Email = '" + email + "' AND Senha = '" + senha + "'", conn);

            SqlDataReader dr = cmd.ExecuteReader();

            bool result = false;
            while (dr.Read())
            {
                result = dr.GetBoolean(0);
            }

            return result;
        }
    }
}
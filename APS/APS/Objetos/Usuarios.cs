using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace APS.Objetos
{
    public class Usuarios
    {
        #region Prop
        public string Email { get; set; }
        public string Senha { get; set; }
        #endregion

        #region ConnectionStrings
        public readonly string strConexao = ConfigurationManager.ConnectionStrings["APS"].ConnectionString;
        #endregion

        public int ValidaUsuario(string email, string senha)
        {
            SqlConnection conn = new SqlConnection(strConexao);
            conn.Open();

            SqlCommand cmd = new SqlCommand("Select TipoUsuario from Usuarios where Email = '" + email + "' AND Senha = '" + senha + "'", conn);

            SqlDataReader dr = cmd.ExecuteReader();

            int tipoUsuario = 0;
            while (dr.Read())
            {
                tipoUsuario = dr.GetInt32(0);
            }

            return tipoUsuario;
        }

        public void CadastraPrimeiroAcessoAluno(string email)
        {
            SqlConnection conn = new SqlConnection(strConexao);
            conn.Open();

            SqlCommand cmd = new SqlCommand("insert into Usuarios values ('" + email + "', 'APS2022', '1')", conn);

            SqlDataReader dr = cmd.ExecuteReader();
        }

        public void CadastraPrimeiroAcessoProfessor(string email)
        {
            SqlConnection conn = new SqlConnection(strConexao);
            conn.Open();

            SqlCommand cmd = new SqlCommand("insert into Usuarios values ('" + email + "', 'APS2022', '2')", conn);

            SqlDataReader dr = cmd.ExecuteReader();
        }
    }
}
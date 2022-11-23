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
        public int Id { get; set; }
        public string Email { get; set; }
        public string Senha { get; set; }
        public int TipoUsuario { get; set; }
        #endregion

        #region ConnectionStrings
        public readonly string strConexao = ConfigurationManager.ConnectionStrings["APS"].ConnectionString;
        #endregion

        public Usuarios ValidaUsuario(string email, string senha)
        {
            SqlConnection conn = new SqlConnection(strConexao);
            conn.Open();

            SqlCommand cmd = new SqlCommand("Select * from Usuarios where Email = '" + email + "' AND Senha = '" + senha + "'", conn);

            SqlDataReader dr = cmd.ExecuteReader();

            Usuarios usuario = new Usuarios();
            while (dr.Read())
            {
                usuario.Id = dr.GetInt32(0);
                usuario.Email = dr.GetString(1);
                usuario.Senha = dr.GetString(2);
                usuario.TipoUsuario = dr.GetInt32(3);
            }

            return usuario;
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
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;

namespace APS.Objetos
{
    public class Professor
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public string Endereco { get; set; }
        public int Numero { get; set; }
        public string Telefone { get; set; }
        public string Disciplina { get; set; }
        public string Campus { get; set; }
        public string Email { get; set; }

        public readonly string strConexao = ConfigurationManager.ConnectionStrings["APS"].ConnectionString;

        public void Cadastra_professor(string nome, string endereco, int numero, string telefone, string disciplina, string campus, string email)
        {
            SqlConnection conn = new SqlConnection(strConexao);
            conn.Open();


            SqlCommand cmd = new SqlCommand(@"insert into Professor values ('" +
                                            nome + "', '" +
                                            endereco + "', " +
                                            numero + ", '" +
                                            telefone + "', '" +
                                            disciplina + "', '" +
                                            campus + "', '" +
                                            email + "')", conn);
            SqlDataReader dr = cmd.ExecuteReader();
        }

        public Professor ObterProfessor(int IdUsuario)
        {
            SqlConnection conn = new SqlConnection(strConexao);
            conn.Open();

            SqlCommand cmd = new SqlCommand(@"select distinct p.* from Usuarios u
                                                inner join Professor p on p.Email = u.Email
                                                where u.Id = " + IdUsuario, conn);

            SqlDataReader dr = cmd.ExecuteReader();

            Professor prof = new Professor();
            while (dr.Read())
            {
                prof.Id = dr.GetInt32(0);
                prof.Nome = dr.GetString(1);
                prof.Endereco = dr.GetString(2);
                prof.Numero = dr.GetInt32(3);
                prof.Telefone = dr.GetString(4);
                prof.Disciplina = dr.GetString(5);
                prof.Campus = dr.GetString(6);
                prof.Email = dr.GetString(7);
            }

            return prof;
        }
    }
}
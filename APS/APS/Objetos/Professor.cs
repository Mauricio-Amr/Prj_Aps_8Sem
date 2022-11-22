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

        public readonly string strConexao = ConfigurationManager.ConnectionStrings["APS"].ConnectionString;

        public void Cadastra_professor(string nome, string endereco, int numero, string telefone, string disciplina, string campus)
        {
            SqlConnection conn = new SqlConnection(strConexao);
            conn.Open();


            SqlCommand cmd = new SqlCommand(@"insert into Professor values ('" +
                                            nome + "', '" +
                                            endereco + "', " +
                                            numero + ", '" +
                                            telefone + "', '" +
                                            disciplina + "', '" +
                                            campus + "')", conn);
            SqlDataReader dr = cmd.ExecuteReader();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace APS.Objetos
{
    public class Universidade
    {
        public int Id_Universidade { get; set; }
        public string Cnpj { get; set; }
        public string Nome { get; set; }
        public string Endereco { get; set; }
        public int Numero { get; set; }
        public string Telefone { get; set; }
        public string Disciplina { get; set; }
        public string Campus { get; set; }


        public readonly string strConexao = ConfigurationManager.ConnectionStrings["APS"].ConnectionString;

        public void Cadastra_Universidade(string cnpj, string nome, string endereco, int numero, string telefone, string disciplina, string campus)
        {
            SqlConnection conn = new SqlConnection(strConexao);
            conn.Open();


            SqlCommand cmd = new SqlCommand(@"insert into Universidade values ('" +
                                            cnpj + "', '" +
                                            nome + "', " +
                                            endereco + "', " +
                                            numero + ", '" +
                                            telefone + "', '" +
                                            disciplina + "', '" +
                                            campus + "')", conn);
            SqlDataReader dr = cmd.ExecuteReader();
        }
    }
}
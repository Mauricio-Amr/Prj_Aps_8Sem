using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace APS.Objetos
{
    public class Cad_aluno
    {

        public string nome { get; set; }
        public string telefone { get; set; }
        public string email { get; set; }

        public string cep { get; set; }

        public string rua { get; set; }
        public int num { get; set; }

        public string bairro { get; set; }

        public string cidade { get; set; }

        public string estado { get; set; }

        public string curso { get; set; }

        public readonly string strConexao = ConfigurationManager.ConnectionStrings["APS"].ConnectionString;

        Conexao conexao = new Conexao();
        SqlCommand cmd = new SqlCommand();
        public String mensagem;

        public void Cadastra_aluno(string nome, string telefone, string email, string cep, string rua, string num, string bairro, string cidade, string estado, string curso)
        {
            SqlConnection conn = new SqlConnection(strConexao);
            conn.Open();


            SqlCommand cmd = new SqlCommand(@"insert into Aluno (Nome, Numero, Telefone, Senha, Rua, Bairro, Cidade, Estado, Curso, Email) values ('" +
                                            nome + "', '" +
                                            num + "', '" +
                                            telefone + "', '" +
                                            "'APS2022', '" +
                                            rua + "', '" +
                                            bairro + "', '" +
                                            cidade + "', '" +
                                            estado + "', '" +
                                            curso + "', '" +
                                            email + "')", conn);
            SqlDataReader dr = cmd.ExecuteReader();
        }

    }
}




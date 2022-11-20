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

        //public void Cadastra_aluno(String nome, String telefone, String email, String cep, String rua, String num, String bairro, String cidade, String estado, String curso)
        //{

        //    //1 comando  Sql -- sql command
        //    cmd.CommandText = "insert into Aluno (Nome,Telefone, Email, Cep, Rua, Num, Bairro, Cidade, Estado, Senha, Curso) values (@nome, @telefone, @email, @cep, @rua, @num, @bairro, " +
        //       "@cidade, @estado,@senha, @cusro)";

        //    //2 parametros


        //    cmd.Parameters.AddWithValue("@nome", nome);
        //    cmd.Parameters.AddWithValue("@@telefone", telefone);
        //    cmd.Parameters.AddWithValue("@email", email);
        //    cmd.Parameters.AddWithValue("@cep", cep);
        //    cmd.Parameters.AddWithValue("@rua", rua);
        //    cmd.Parameters.AddWithValue("@num", num);
        //    cmd.Parameters.AddWithValue("@bairro", bairro);
        //    cmd.Parameters.AddWithValue("@curso", curso);
        //    cmd.Parameters.AddWithValue("@senha", "Aps2022");

        //    try
        //    {
        //        //conectar ao  banco de dados
        //        cmd.Connection = conexao.conectar();
        //        //executar comando
        //        cmd.ExecuteNonQuery();
        //        //desconectar
        //        conexao.desconectar();
        //        this.mensagem = "Cadastrado com sucesso sua senha é Aps2022";

        //    }

        //    catch (SqlException e)
        //    {
        //        this.mensagem = "Cadastro não efetuado erro " + e.Message;
        //    }


        //}
        public void Cadastra_aluno(string nome, string telefone, string email, string cep, string rua, string num, string bairro, string cidade, string estado, string curso)
        {
            SqlConnection conn = new SqlConnection(strConexao);
            conn.Open();

            SqlCommand cmd = new SqlCommand(@"insert into Aluno (Nome, Numero, Telefone, Rua, Bairro, Cidade, Estado, Curso, Email) values ('" +
                                            nome + "', '" +
                                            num + "', '" +
                                            telefone + "', '" +
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




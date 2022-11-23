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
        public int Id { get; set; }
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

        public string Senha { get; set; }
        public int RA { get; set; }

        public readonly string strConexao = ConfigurationManager.ConnectionStrings["APS"].ConnectionString;

        Conexao conexao = new Conexao();
        SqlCommand cmd = new SqlCommand();
        public String mensagem;

        public void Cadastra_aluno(string nome, string telefone, string email, string cep, string rua, string num, string bairro, string cidade, string estado, string curso, int ra)
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
                                            email + "', " +
                                            ra + ")", conn);
            SqlDataReader dr = cmd.ExecuteReader();
        }

        public Cad_aluno ObterAluno(int IdUsuario)
        {
            SqlConnection conn = new SqlConnection(strConexao);
            conn.Open();

            SqlCommand cmd = new SqlCommand(@"select distinct a.* from Usuarios u
                                                inner join Aluno a on a.Email = u.Email
                                                where u.Id = " + IdUsuario, conn);

            SqlDataReader dr = cmd.ExecuteReader();

            Cad_aluno aluno = new Cad_aluno();
            while (dr.Read())
            {
                aluno.Id = dr.GetInt32(0);
                aluno.nome = dr.GetString(1);
                aluno.num = dr.GetInt32(2);
                aluno.telefone = dr.GetString(3);
                aluno.rua = dr.GetString(5);
                aluno.bairro = dr.GetString(6);
                aluno.cidade = dr.GetString(7);
                aluno.estado = dr.GetString(8);
                aluno.curso = dr.GetString(9);
                aluno.email = dr.GetString(10);
                aluno.RA = dr.GetInt32(11);
            }

            return aluno;
        }

        public List<Cad_aluno> ObterTodosAlunos()
        {
            SqlConnection conn = new SqlConnection(strConexao);
            conn.Open();

            SqlCommand cmd = new SqlCommand(@"select distinct a.* from Usuarios u
                                                inner join Aluno a on a.Email = u.Email", conn);

            SqlDataReader dr = cmd.ExecuteReader();

            List<Cad_aluno> alunos = new List<Cad_aluno>();
            while (dr.Read())
            {
                Cad_aluno aluno = new Cad_aluno();
                aluno.Id = dr.GetInt32(0);
                aluno.nome = dr.GetString(1);
                aluno.num = dr.GetInt32(2);
                aluno.telefone = dr.GetString(3);
                aluno.rua = dr.GetString(5);
                aluno.bairro = dr.GetString(6);
                aluno.cidade = dr.GetString(7);
                aluno.estado = dr.GetString(8);
                aluno.curso = dr.GetString(9);
                aluno.email = dr.GetString(10);
                aluno.RA = dr.GetInt32(11);

                alunos.Add(aluno);
            }

            return alunos;
        }

        public int RetornaProximoRA()
        {
            SqlConnection conn = new SqlConnection(strConexao);
            conn.Open();

            SqlCommand cmd = new SqlCommand(@"select MAX(RA) + 1 from Aluno", conn);

            SqlDataReader dr = cmd.ExecuteReader();

            int retorno = 0;
            while (dr.Read())
            {
                retorno = dr.GetInt32(0);
            }

            return retorno;
        }


    }
}




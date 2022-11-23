using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace APS.Objetos
{
    public class Disciplina
    {
        public int Id { get; set; }
        public string Curso { get; set; }
        public string Nome { get; set; }
        public string CargaHR { get; set; }
        public string Professor { get; set; }
        public string Campus { get; set; }

        public readonly string strConexao = ConfigurationManager.ConnectionStrings["APS"].ConnectionString;

        public void Cadastra_disciplina(string curso, string nome, int cargaHR, string professor, string campus)
        {
            SqlConnection conn = new SqlConnection(strConexao);
            conn.Open();


            SqlCommand cmd = new SqlCommand(@"insert into Disciplinas values ('" +
                                            curso + "', '" +
                                            nome + "', " +
                                            cargaHR + ", '" +
                                            professor + "', '" +
                                            campus + "')", conn);
            SqlDataReader dr = cmd.ExecuteReader();
        }

        public List<Disciplina> ObterDisciplinas(int IdUsuario)
        {
            SqlConnection conn = new SqlConnection(strConexao);
            conn.Open();

            SqlCommand cmd = new SqlCommand(@"select distinct d.* from Usuarios u
                                                inner join Aluno a on a.Email = u.Email
                                                inner join Disciplinas d on d.Curso = a.Curso
                                                where u.Id = " + IdUsuario, conn);

            SqlDataReader dr = cmd.ExecuteReader();

            List<Disciplina> disciplinas = new List<Disciplina>();
            Disciplina disc = new Disciplina();
            while (dr.Read())
            {
                disc.Id = dr.GetInt32(0);
                disc.Curso = dr.GetString(1);
                disc.Nome = dr.GetString(2);
                disc.CargaHR = dr.GetString(3);
                disc.Professor = dr.GetString(4);
                disc.Campus = dr.GetString(5);

                disciplinas.Add(disc);
            }

            return disciplinas;
        }
    }
}
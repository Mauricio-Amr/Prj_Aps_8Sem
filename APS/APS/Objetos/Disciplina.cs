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
        public Notas_e_faltas NotasEFaltas { get; set; }
        public Cad_aluno Aluno { get; set; }

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

            SqlCommand cmd = new SqlCommand(@"select distinct d.*, nf.* from Usuarios u
                                                inner join Aluno a on a.Email = u.Email
                                                inner join Disciplinas d on d.Curso = a.Curso
                                                inner join NotasFaltas nf on nf.Id_Aluno = a.Id and nf.Id_Disciplina = d.Id
                                                where u.Id = " + IdUsuario, conn);

            SqlDataReader dr = cmd.ExecuteReader();

            List<Disciplina> disciplinas = new List<Disciplina>();
            while (dr.Read())
            {
                Notas_e_faltas nf = new Notas_e_faltas();
                Disciplina disc = new Disciplina();
                disc.NotasEFaltas = nf;

                disc.Id = dr.GetInt32(0);
                disc.Curso = dr.GetString(1);
                disc.Nome = dr.GetString(2);
                disc.CargaHR = dr.GetString(3);
                disc.Professor = dr.GetString(4);
                disc.Campus = dr.GetString(5);
                disc.NotasEFaltas.Id = dr.GetInt32(6);
                disc.NotasEFaltas.Id_aluno = dr.GetInt32(7);
                disc.NotasEFaltas.Id_diciplina = dr.GetInt32(8);
                disc.NotasEFaltas.Np_1 = dr.GetValue(9) != null ? Convert.ToInt32(dr.GetValue(9)) : 0;
                disc.NotasEFaltas.Np_2 = dr.GetValue(10) != null ? Convert.ToInt32(dr.GetValue(10)) : 0;
                disc.NotasEFaltas.Exame = dr.GetValue(11) != null ? Convert.ToInt32(dr.GetValue(11)) : 0;
                disc.NotasEFaltas.Faltas = dr.GetValue(12) != null ? Convert.ToInt32(dr.GetValue(12)) : 0;

                disciplinas.Add(disc);
            }

            return disciplinas;
        }

        public List<Disciplina> ObterDisciplinasENotas()
        {
            SqlConnection conn = new SqlConnection(strConexao);
            conn.Open();

            SqlCommand cmd = new SqlCommand(@"select distinct d.*, nf.*, a.* from Usuarios u
                                                inner join Aluno a on a.Email = u.Email
                                                inner join Disciplinas d on d.Curso = a.Curso
                                                inner join NotasFaltas nf on nf.Id_Aluno = a.Id and nf.Id_Disciplina = d.Id", conn);

            SqlDataReader dr = cmd.ExecuteReader();

            List<Disciplina> disciplinas = new List<Disciplina>();
            while (dr.Read())
            {
                Notas_e_faltas nf = new Notas_e_faltas();
                Cad_aluno aluno = new Cad_aluno();
                Disciplina disc = new Disciplina();
                disc.NotasEFaltas = nf;
                disc.Aluno = aluno;

                disc.Id = dr.GetInt32(0);
                disc.Curso = dr.GetString(1);
                disc.Nome = dr.GetString(2);
                disc.CargaHR = dr.GetString(3);
                disc.Professor = dr.GetString(4);
                disc.Campus = dr.GetString(5);
                disc.NotasEFaltas.Id = dr.GetInt32(6);
                disc.NotasEFaltas.Id_aluno = dr.GetInt32(7);
                disc.NotasEFaltas.Id_diciplina = dr.GetInt32(8);
                disc.NotasEFaltas.Np_1 = dr.GetValue(9) != null ? Convert.ToInt32(dr.GetValue(9)) : 0;
                disc.NotasEFaltas.Np_2 = dr.GetValue(10) != null ? Convert.ToInt32(dr.GetValue(10)) : 0;
                disc.NotasEFaltas.Exame = dr.GetValue(11) != null ? Convert.ToInt32(dr.GetValue(11)) : 0;
                disc.NotasEFaltas.Faltas = dr.GetValue(12) != null ? Convert.ToInt32(dr.GetValue(12)) : 0;
                disc.Aluno.Id = dr.GetInt32(13);
                disc.Aluno.nome = dr.GetString(14);
                disc.Aluno.num = dr.GetInt32(15);
                disc.Aluno.telefone = dr.GetString(16);
                disc.Aluno.rua = dr.GetString(18);
                disc.Aluno.bairro = dr.GetString(19);
                disc.Aluno.cidade = dr.GetString(20);
                disc.Aluno.estado = dr.GetString(21);
                disc.Aluno.curso = dr.GetString(22);
                disc.Aluno.email = dr.GetString(23);
                disc.Aluno.RA = dr.GetInt32(24);

                disciplinas.Add(disc);
            }

            return disciplinas;
        }
    }
}
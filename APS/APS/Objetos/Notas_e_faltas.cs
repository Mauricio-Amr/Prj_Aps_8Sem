using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace APS.Objetos
{
    public class Notas_e_faltas
    {
        public int Id { get; set; }
        public int Id_aluno { get; set; }
        public int Id_diciplina { get; set; }
        public int Np_1 { get; set; }
        public int Np_2 { get; set; }
        public int? Exame { get; set; }

        public int Faltas { get; set; }

        public readonly string strConexao = ConfigurationManager.ConnectionStrings["APS"].ConnectionString;

        public Notas_e_faltas ObterNotasEFaltas(int IdAluno)
        {
            SqlConnection conn = new SqlConnection(strConexao);
            conn.Open();

            SqlCommand cmd = new SqlCommand(@"select distinct nf.* from Aluno a
                                                inner join Disciplinas d on d.Curso = a.Curso
                                                inner join NotasFaltas nf on nf.Id_Aluno = a.Id and nf.Id_Disciplina = d.Id
                                                where a.Id = " + IdAluno, conn);

            SqlDataReader dr = cmd.ExecuteReader();

            Notas_e_faltas nf = new Notas_e_faltas();
            while (dr.Read())
            {
                nf.Id = dr.GetInt32(0);
                nf.Id_aluno = dr.GetInt32(1);
                nf.Id_diciplina = dr.GetInt32(2);
                nf.Np_1 = dr.GetInt32(3);
                nf.Np_2 = dr.GetInt32(4);
                nf.Exame = dr.GetInt32(5);
                nf.Faltas = dr.GetInt32(6);
            }

            return nf;
        }

        public void SalvaNotaFalta(int id_Aluno, int id_Disciplina, int nP1, int nP2, int exame, int faltas)
        {
            SqlConnection conn = new SqlConnection(strConexao);
            conn.Open();


            SqlCommand cmd = new SqlCommand(@"insert into NotasFaltas values (" +
                                            id_Aluno + ", " +
                                            id_Disciplina + ", " +
                                            nP1 + ", " +
                                            nP2 + ", " +
                                            exame + ", " +
                                            faltas + ")", conn);
            SqlDataReader dr = cmd.ExecuteReader();
        }

    }
}
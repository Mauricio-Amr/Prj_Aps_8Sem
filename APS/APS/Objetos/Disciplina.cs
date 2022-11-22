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


            SqlCommand cmd = new SqlCommand(@"insert into Disciplina values ('" +
                                            curso + "', '" +
                                            nome + "', " +
                                            cargaHR + ", '" +
                                            professor + "', '" +
                                            campus + "')", conn);
            SqlDataReader dr = cmd.ExecuteReader();
        }
    }
}
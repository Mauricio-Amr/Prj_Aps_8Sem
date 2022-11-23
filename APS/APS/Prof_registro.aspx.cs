using APS.Objetos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace APS
{
    public partial class Prof_registro : System.Web.UI.Page
    {
        protected Professor _prof;
        protected List<Disciplina> _disciplinas;
        protected List<Cad_aluno> _aluno;
        protected void Page_Load(object sender, EventArgs e)
        {
            int idUsuario = Convert.ToInt32(Request.QueryString["Id"]);

            Professor professor = new Professor();
            _prof = professor.ObterProfessor(idUsuario);

            Disciplina disc = new Disciplina();
            _disciplinas = disc.ObterDisciplinasENotas();

            Cad_aluno cadAluno = new Cad_aluno();
            _aluno = cadAluno.ObterTodosAlunos();
        }

        protected void btn_salvar_nota_Click(object sender, EventArgs e)
        {
            Notas_e_faltas nf = new Notas_e_faltas();
            nf.SalvaNotaFalta(_aluno[0].Id, _disciplinas[0].Id, Convert.ToInt32(inputNp1.Text.Replace(",", "")), Convert.ToInt32(inputNP2.Text.Replace(",", "")), 0, 0);

        }
    }
}
using APS.Objetos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace APS
{
    public partial class Aluno_registro : System.Web.UI.Page
    {
        protected Cad_aluno _aluno;
        protected List<Disciplina> _disciplinas;
        protected Notas_e_faltas _notasFaltas;
        protected void Page_Load(object sender, EventArgs e)
        {
            int idUsuario = Convert.ToInt32(Request.QueryString["Id"]);


            Disciplina disc = new Disciplina();
            _disciplinas = disc.ObterDisciplinas(idUsuario);

            Cad_aluno cadAluno = new Cad_aluno();
            _aluno = cadAluno.ObterAluno(idUsuario);
        }
    }
}
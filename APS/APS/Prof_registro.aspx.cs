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
            //Professor prof = new Professor();
            //prof.Cadastra_professor(txtNome.Text, txtEndereco.Text, Convert.ToInt32(txtNumero.Text), txtTelefone.Text, txtDisciplina.Text, txtCampus.Text, txtEmail.Text);

            //Usuarios usuario = new Usuarios();
            //usuario.CadastraPrimeiroAcessoProfessor(txtEmail.Text);
        }
    }
}
using APS.Objetos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace APS
{
    public partial class Cadastro_diciplina : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_cadastra_disciplina_Click(object sender, EventArgs e)
        {
            Disciplina disc = new Disciplina();
            disc.Cadastra_disciplina(txtCurso.Text, txtDisciplina.Text, Convert.ToInt32(txtCargaHR.Text), txtProfessor.Text, txtCampus.Text);
        }
    }
}
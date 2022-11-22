using APS.Objetos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace APS
{
    public partial class Cadastro_professor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_cadastra_professor_Click(object sender, EventArgs e)
        {
            Professor prof = new Professor();
            prof.Cadastra_professor(txtNome.Text, txtEndereco.Text, Convert.ToInt32(txtNumero.Text), txtTelefone.Text, "", "");

            Usuarios usuario = new Usuarios();
            usuario.CadastraPrimeiroAcessoProfessor(txtEmail.Text);
        }
    }
}
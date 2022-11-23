using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using APS.Objetos;

namespace APS
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_cadastra_aluno_Click(object sender, EventArgs e)
        {


            Cad_aluno cad = new Cad_aluno();
            int RA_Novo = cad.RetornaProximoRA();
            cad.Cadastra_aluno(CA_Nome.Text, CA_telefone.Text, CA_email.Text, Ca_cep.Text, CA_rua.Text, CA_num.Text, CA_bairro.Text, CA_cidade.Text, CA_estado.Text, CA_curso.Text, RA_Novo);

            Usuarios usuario = new Usuarios();
            usuario.CadastraPrimeiroAcessoAluno(CA_email.Text);
        }
      
    }
}
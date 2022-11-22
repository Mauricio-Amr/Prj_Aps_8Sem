using APS.Objetos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace APS
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_cadastra_uni_Click(object sender, EventArgs e)
        {
            Universidade uni = new Universidade();
            uni.Cadastra_Universidade(txtCnpj.Text, txtNome.Text, txtEndereco.Text, Convert.ToInt32(txtNumero.Text), txtTelefone.Text, "", txtCampus.Text);
        }
    }
}
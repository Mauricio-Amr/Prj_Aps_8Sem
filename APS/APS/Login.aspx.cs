using APS.Objetos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace APS
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        #region Click

        protected void btnLogar_Click(object sender, EventArgs e)
        {
            Usuarios usuario = new Usuarios();
            usuario = usuario.ValidaUsuario(inputEmail.Text, inputPassword.Text);

            if (usuario.TipoUsuario > 0)
            {
                switch (usuario.TipoUsuario)
                {
                    case 1:
                        Response.Redirect("Aluno_registro.aspx?Id=" + usuario.Id);
                        break;
                    case 2:
                        Response.Redirect("Prof_registro.aspx?Id=" + usuario.Id);
                        break;
                    case 3:
                        Response.Redirect("Cadastro_universidade.aspx?Id=" + usuario.Id);
                        break;

                }
            }
            
        }

        #endregion
    }
}
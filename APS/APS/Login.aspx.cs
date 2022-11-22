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
            Usuarios obj = new Usuarios();
            var nivelUsuario = obj.ValidaUsuario(inputEmail.Text, inputPassword.Text);

            if (nivelUsuario > 0)
            {
                switch (nivelUsuario)
                {
                    case 1:
                        Response.Redirect("Aluno_registro.aspx");
                        break;
                    case 2:
                        Response.Redirect("Prof_registro.aspx");
                        break;
                    case 3:
                        Response.Redirect("Cadastro_universidade.aspx");
                        break;

                }
            }
            
        }

        #endregion
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using APS.Objetos;

namespace APS.Objetos
{
         
       
    public class Conexao
    {
        #region ConnectionStrings
        public readonly string strConexao = ConfigurationManager.ConnectionStrings["APS"].ConnectionString;
        #endregion

        SqlConnection con = new SqlConnection();

        //construtor
        public Conexao()
        {
           con.ConnectionString = strConexao;
        }

        //metodo conectar
        public SqlConnection conectar()
        {
            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open(); 
            }
            return con;
        }
        //metodo desconectar
        public void desconectar() 
        {
            if (con.State == System.Data.ConnectionState.Open)
            {
                con.Close();
            }
           
        }


    }

   
}
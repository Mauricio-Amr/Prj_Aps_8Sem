using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace APS.Objetos
{
    public class Notas_e_faltas
    {
        public int Id { get; set; }
        public int Id_aluno { get; set; }
        public int Id_diciplina { get; set; }
        public int Np_1 { get; set; }
        public int Np_2 { get; set; }
        public int Exame { get; set; }

        public int Faltas { get; set; }


    }
}
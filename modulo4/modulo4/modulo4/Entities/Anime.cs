using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace modulo4.Entities
{
    public class Anime
    {
        public string Nome { get; set; }
        public int Nota { get; set; }
        public int Ep { get; set; }

        public Anime(string nome, int nota, int ep)
        {
            Nome = nome;
            Nota = nota;
            Ep = ep;
        }
    }
}
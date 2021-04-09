using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace modulo4.Entities
{
    public class Filme
    {
        public string Nome { get; set; }
        public int nota { get; set; }

        public Filme(string nome, int nota)
        {
            Nome = nome;
            this.nota = nota;
        }
    }
}
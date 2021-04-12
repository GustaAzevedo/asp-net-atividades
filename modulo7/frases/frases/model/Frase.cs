using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace frases.model
{
    public class Frase
    {
        public int Id { get; set; }
        public String Text { get; set; }
        public Autor Autor { get; set; }
        public Categoria Categoria { get; set; }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Threading.Tasks;

namespace ProyectoMVC.Models
{
    [Table("Autor")]
    public class Autor{
        [Key]
        public int Id { get; set; }
        public string NombreCompleto { get; set; }
        public ICollection<Publicacion> Publicaciones { get; set; }
    }

    [Table("Categoria")]
    public class Categoria {
        [Key]
        public int Id { get; set; }
        public string NombreCategoria { get; set; }
        public ICollection<Publicacion> Publicaciones { get; set; }
    }

    [Table("Comentario")]
    public class Comentario {
        [Key]
        public int Id { get; set; }
        public Publicacion Publicacion { get; set; }
        [Key] [ForeignKey("Publicacion")]
        public int IdPublicacionPKFK { get; set; }
        public string Texto { get; set; }
    }

    [Table("Publicacion")]
    public class Publicacion { 
        [Key]
        public int Id { get; set; }
        public string Fecha { get; set; }
        public string Titulo { get; set; }
        public string LinkImg { get; set; }
        public string Resumen { get; set; }

        public Autor Autor { get; set; }
        [ForeignKey("Autor")]
        public int AutorFK { get; set; }

        public Categoria Categoria { get; set; }
        [ForeignKey("Categoria")]
        public int CategoriaFK { get; set; }
        public ICollection<Comentario> Comentarios { get; set; }
    }


}
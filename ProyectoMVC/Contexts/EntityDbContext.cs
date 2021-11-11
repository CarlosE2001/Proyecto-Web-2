using System;
using System.Data;
using System.Threading;
using System.Threading.Tasks;

using Microsoft.Extensions.Logging;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Storage;
using ProyectoMVC.Models;

namespace ProyectoMVC.Contexts
{
    public class EntityDbContext : ApplicationDbContext{
        public EntityDbContext(DbContextOptions options, ILogger<EntityDbContext> logger) : base(options, logger){
        }

        public DbSet<Autor> Autor { get; set; }
        public DbSet<Categoria> Categoria { get; set; }
        public DbSet<Comentario> Comentario { get; set; }
        public DbSet<Publicacion> Publicacion { get; set; }

    }
}
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Owin;
using Owin;
using ProyectoMVC.Contexts;
using System.Configuration;

[assembly: OwinStartupAttribute(typeof(ProyectoMVC.Startup))]
namespace ProyectoMVC
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddDbContext<EntityDbContext>(options => options.UseSqlServer(System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString));
        }
    }
}

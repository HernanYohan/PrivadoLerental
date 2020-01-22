using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(PrivadoInmobiliaria.Startup))]
namespace PrivadoInmobiliaria
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

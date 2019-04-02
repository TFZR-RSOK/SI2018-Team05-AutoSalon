using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AutoSalonFrontend.Startup))]
namespace AutoSalonFrontend
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

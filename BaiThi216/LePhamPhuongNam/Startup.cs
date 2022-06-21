using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(LePhamPhuongNam.Startup))]
namespace LePhamPhuongNam
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}

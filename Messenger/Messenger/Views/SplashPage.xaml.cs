using System.Threading.Tasks;
using Xamarin.Forms;

namespace Messenger.Views
{
    public partial class SplashPage : ContentPage
    {
        public SplashPage()
        {
            InitializeComponent();
            Start();
        }

        private async void Start()
        {
            await Task.Delay(1000); // Espera 2 segundos
            Application.Current.MainPage = new NavigationPage(new MainMenuPage());
        }
    }
}

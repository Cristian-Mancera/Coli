using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Messenger.Views;
using Messenger.ViewModels;

namespace Messenger
{
    public partial class App : Application
    {

        public App ()
        {
            InitializeComponent();

            MainPage = new NavigationPage(new MainMenuPage())
            {
                BarBackgroundColor = (Color)Current.Resources["Primary"],
                BarTextColor = Color.White
            };
            if (Application.Current.Properties.ContainsKey("UsuarioNombre"))
            {
                MainPage = new NavigationPage(new MainMenuPage());
            }
            else
            {
                MainPage = new NavigationPage(new LoginPage());
            }


        }

        protected override void OnStart ()
        {
        }

        protected override void OnSleep ()
        {
        }

        protected override void OnResume ()
        {
        }
    }
}

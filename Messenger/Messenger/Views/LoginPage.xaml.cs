using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Messenger.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class LoginPage : ContentPage
	{
		public LoginPage ()
		{
			InitializeComponent ();
		}

        private async void OnContinuarClicked(object sender, EventArgs e)
        {
            string nombre = NombreEntry.Text?.Trim();
            string numero = NumeroEntry.Text?.Trim();

            if (!string.IsNullOrEmpty(nombre) && !string.IsNullOrEmpty(numero))
            {
                Application.Current.Properties["UsuarioNombre"] = nombre;
                Application.Current.Properties["UsuarioNumero"] = numero;
                await Application.Current.SavePropertiesAsync();

                await Navigation.PushAsync(new MainMenuPage()); // Ir al menú principal
            }
            else
            {
                await DisplayAlert("Error", "Por favor complete ambos campos.", "OK");
            }
        }

    }
}
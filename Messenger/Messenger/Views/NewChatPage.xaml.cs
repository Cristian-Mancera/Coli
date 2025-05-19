using System;
using Xamarin.Forms;

namespace Messenger.Views
{
    public partial class NewChatPage : ContentPage
    {
        public NewChatPage()
        {
            InitializeComponent();
        }

        private async void OnCreateClicked(object sender, EventArgs e)
        {
            string chatName = ChatNameEntry.Text?.Trim();

            if (string.IsNullOrEmpty(chatName))
            {
                await DisplayAlert("Error", "Por favor, ingresa un nombre para el chat.", "OK");
                return;
            }

            // Aquí podrías agregar el chat a una lista, base de datos, etc.
            MessagingCenter.Send(this, "NuevoChat", chatName); // Para comunicarte con MainMenuPage, si deseas

            await Navigation.PopAsync(); // Regresa a la página anterior
        }
    }
}

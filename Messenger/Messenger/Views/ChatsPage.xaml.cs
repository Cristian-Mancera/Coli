using Messenger.Models;
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
    public partial class ChatsPage : ContentPage
    {
        private ConexionBD _db = new ConexionBD();

        public ChatsPage()
        {
            InitializeComponent();
            CargarChats();
        }

        private async void CargarChats()
        {
            ChatsListView.ItemsSource = await _db.ObtenerChats();
        }

        private async void OnChatSelected(object sender, SelectedItemChangedEventArgs e)
        {
            if (e.SelectedItem is Chat chat)
            {
                await Navigation.PushAsync(new MensajePage(chat.Id));
            }
        }
    }
}
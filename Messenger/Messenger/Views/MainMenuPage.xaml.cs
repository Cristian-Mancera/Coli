using System.Collections.ObjectModel;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Messenger.Models;
using System.Linq;
using System;
using System.Threading.Tasks;

namespace Messenger.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class MainMenuPage : ContentPage
    {
        ObservableCollection<Chat> chats = new ObservableCollection<Chat>();

        public MainMenuPage()
        {
            InitializeComponent();

            // Datos de prueba
            chats.Add(new Chat { Nombre = "chat 1" });

            ChatsCollectionView.ItemsSource = chats;
        }

        private void OnAddChatClicked(object sender, EventArgs e)
        {
            chats.Add(new Chat { Nombre = $"chat {chats.Count + 1}" });
        }

        private async void OnChatSelected(object sender, SelectionChangedEventArgs e)
        {
            var collection = sender as CollectionView;

            var chatSeleccionado = e.CurrentSelection.FirstOrDefault() as Chat;
            if (chatSeleccionado == null)
                return;

            // Limpiar selección para que se pueda volver a seleccionar el mismo chat después
            collection.SelectedItem = null;

            // Navegar a la página del chat
            await Navigation.PushAsync(new MensajePage(chatSeleccionado.Id));
        }

    }
}

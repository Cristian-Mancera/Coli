using Messenger.ViewModels;
using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Messenger.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class MensajePage : ContentPage
    {
        private ChatViewModel _viewModel;

        public MensajePage(string chatId)
        {
            InitializeComponent();
            _viewModel = new ChatViewModel(chatId);
            BindingContext = _viewModel;
        }

        protected override async void OnAppearing()
        {
            base.OnAppearing();
            await _viewModel.ConectarWebSocketAsync();
            await _viewModel.CargarMensajes();
        }
     

        protected override async void OnDisappearing()
        {
            base.OnDisappearing();
            await _viewModel.DesconectarWebSocketAsync();
        }
    }
}

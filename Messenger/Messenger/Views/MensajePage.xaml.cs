using Messenger.ViewModels;
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
    public partial class MensajePage : ContentPage
    {
        private ChatViewModel _viewModel;

        public MensajePage(string chatId)
        {
            InitializeComponent();
            _viewModel = new ChatViewModel();
            BindingContext = _viewModel;
            _viewModel.CargarMensajes();
        }

    }
}
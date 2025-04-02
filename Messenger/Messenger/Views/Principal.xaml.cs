using Messenger.Models;
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
	public partial class Principal : ContentPage
	{
		public Principal ()
		{
			InitializeComponent ();

            var chatViewModel = new ChatViewModel();


            chatViewModel.PropertyChanged += (sender, e) =>
            {
                if (e.PropertyName == nameof(chatViewModel.Mensajes))
                {

                    chatViewModel.MostrarMensajes();
                }
            };

            // Simulamos enviar un mensaje
            Console.WriteLine("Enviando mensaje...");
            chatViewModel.EnviarMensajeCommand.Execute(null);

            // Esperamos más entradas
            Console.WriteLine("\nPresiona cualquier tecla para enviar otro mensaje...");
            Console.ReadKey();

            Console.WriteLine("Enviando otro mensaje...");
            chatViewModel.EnviarMensajeCommand.Execute(null);

            Console.WriteLine("\nPresiona cualquier tecla para salir...");
            Console.ReadKey();
        }
	}
}
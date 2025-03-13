using Messenger.ViewModels;
using System;
using System.Collections.Generic;
using System.Text;

namespace Messenger.Views
{
    class main
    {
        static void Main()
        {
            
            var chatViewModel = new ChatViewModel();

            
            chatViewModel.PropertyChanged += (sender, e) =>
            {
                if (e.PropertyName == nameof(chatViewModel.Mensajes))
                {
                    
                    chatViewModel.MostrarMensajes();
                }
            };

            Console.WriteLine("Enviando mensaje...");
            chatViewModel.EnviarMensajeCommand.Execute(null);  

           
            Console.WriteLine("\nPresiona cualquier tecla para enviar otro mensaje...");
            Console.ReadKey();

            Console.WriteLine("Enviando otro mensaje...");
            chatViewModel.EnviarMensajeCommand.Execute(null); 

            Console.WriteLine("\nPresiona cualquier tecla para salir...");
            Console.ReadKey();
        }
    }
}

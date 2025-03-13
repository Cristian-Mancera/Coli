using Messenger.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;


namespace Messenger.ViewModels
{
    class ChatViewModel : BaseViewModel
    {
        private ConexionBD _ConexionBD;
        private ObservableCollection<Mensaje> _mensajes;
        public ICommand EnviarMensajeCommand { get; }

        public ObservableCollection<Mensaje> Mensajes
        {
            get => _mensajes;
            set => SetProperty(ref _mensajes, value);
        }

        public ChatViewModel()
        {
            _ConexionBD = new ConexionBD();
            _mensajes = new ObservableCollection<Mensaje>();
            CargarMensajes();

            
            Mensajes = new ObservableCollection<Mensaje>();

           
            EnviarMensajeCommand = new Command(EnviarMensaje);
        }


        public async Task CargarMensajes()
        {
            var mensajes = await _ConexionBD.ObtenerMensajes("chat1");
            Mensajes.Clear();

            foreach (var mensaje in mensajes)
            {
                Mensajes.Add(mensaje);
            }
        }



        // SIMULACION
        private void EnviarMensaje()
        {

            var mensaje = new Mensaje
            {
                UsuarioId = 1,
                Texto = "¡Hola! Este es un mensaje de prueba.",
                ChatId = "chat1",
                FechaEnvio = DateTime.Now
            };


            Mensajes.Add(mensaje);
            OnPropertyChanged(nameof(Mensajes));
        }

        //Imprimir mensajes
        public void MostrarMensajes()
        {
            Console.WriteLine("\nMensajes:");
            foreach (var mensaje in Mensajes)
            {
                Console.WriteLine($"[{mensaje.FechaEnvio}] {mensaje.Texto} (Usuario {mensaje.UsuarioId})");
            }
        }
    }
}

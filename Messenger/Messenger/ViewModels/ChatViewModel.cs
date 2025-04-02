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
    public class ChatViewModel : BaseViewModel
    {
        private ConexionBD _ConexionBD;
        private ObservableCollection<Mensaje> _mensajes;
        private string _nuevoMensaje;

        public ICommand EnviarMensajeCommand { get; }

        public ObservableCollection<Mensaje> Mensajes
        {
            get => _mensajes;
            set => SetProperty(ref _mensajes, value);
        }

        public string NuevoMensaje
        {
            get => _nuevoMensaje;
            set => SetProperty(ref _nuevoMensaje, value);
        }

        public ChatViewModel()
        {
            _ConexionBD = new ConexionBD();
            _mensajes = new ObservableCollection<Mensaje>();
            CargarMensajes();

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

        private async void EnviarMensaje()
        {
            if (string.IsNullOrWhiteSpace(NuevoMensaje)) return;

            var mensaje = new Mensaje
            {
                UsuarioId = 1,
                Texto = NuevoMensaje,
                ChatId = "chat1",
                FechaEnvio = DateTime.Now
            };

            
            await _ConexionBD.InsertMensaje(mensaje);

            
            Mensajes.Add(mensaje);
            NuevoMensaje = ""; 
        }
    }
}


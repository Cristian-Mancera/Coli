using Messenger.Models;
using Newtonsoft.Json;
using System;
using System.Collections.ObjectModel;
using System.Net.WebSockets;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;
using Microsoft.CSharp;

namespace Messenger.ViewModels
{
    public class ChatViewModel : BaseViewModel
    {
        private ConexionBD _ConexionBD;
        private ClientWebSocket _webSocket;
        private CancellationTokenSource _cts;
        private string _nuevoMensaje;
        private string _chatId;

        public ICommand EnviarMensajeCommand { get; }

        public ObservableCollection<Mensaje> Mensajes { get; set; }

        public string NuevoMensaje
        {
            get => _nuevoMensaje;
            set => SetProperty(ref _nuevoMensaje, value);
        }

        public ChatViewModel(string chatId)
        {
            _ConexionBD = new ConexionBD();
            _chatId = chatId;
            Mensajes = new ObservableCollection<Mensaje>();

            EnviarMensajeCommand = new Command(async () => await EnviarMensaje());
        }

        public async Task ConectarWebSocketAsync()
        {
            if (_webSocket != null && _webSocket.State == WebSocketState.Open)
                return; // Ya conectado

            _webSocket = new ClientWebSocket();
            _cts = new CancellationTokenSource();

            try
            {
                var uri = new Uri("ws://192.168.5.105:8080"); 
                await _webSocket.ConnectAsync(uri, _cts.Token);
                _ = RecibirMensajes();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al conectar WebSocket: " + ex.Message);
            }
        }

        public async Task DesconectarWebSocketAsync()
        {
            if (_webSocket != null && _webSocket.State == WebSocketState.Open)
            {
                _cts.Cancel();

                try
                {
                    await _webSocket.CloseAsync(WebSocketCloseStatus.NormalClosure, "Cerrando conexión", CancellationToken.None);
                }
                catch
                {
                    // Ignorar excepciones al cerrar
                }

                _webSocket.Dispose();
                _webSocket = null;
            }
        }

        class MensajeRecibido
        {
            public string Nombre { get; set; }
            public string Texto { get; set; }
        }

        private async Task RecibirMensajes()
        {
            var buffer = new byte[1024];

            try
            {
                while (_webSocket.State == WebSocketState.Open)
                {
                    var result = await _webSocket.ReceiveAsync(new ArraySegment<byte>(buffer), _cts.Token);

                    if (result.MessageType == WebSocketMessageType.Close)
                    {
                        await _webSocket.CloseAsync(WebSocketCloseStatus.NormalClosure, string.Empty, CancellationToken.None);
                    }
                    else
                    {
                        var mensajeTexto = Encoding.UTF8.GetString(buffer, 0, result.Count);

                        // Deserializar el JSON que contiene Nombre y Texto
                        var mensajeJson = JsonConvert.DeserializeObject<MensajeRecibido>(mensajeTexto);

                        if (mensajeJson != null)
                        {
                            var mensaje = new Mensaje
                            {
                                UsuarioId = 0, // o puedes usar otro campo si lo manejas
                                Texto = $"{mensajeJson.Nombre}: {mensajeJson.Texto}",
                                ChatId = _chatId,
                                FechaEnvio = DateTime.Now
                            };

                            Device.BeginInvokeOnMainThread(() =>
                            {
                                Mensajes.Add(mensaje);
                            });
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al recibir mensaje WebSocket: " + ex.Message);
            }
        }


        private async Task EnviarMensaje()
        {
            if (string.IsNullOrWhiteSpace(NuevoMensaje)) return;

            var mensaje = new Mensaje
            {
                UsuarioId = 1, // Puedes cambiar según usuario real
                Texto = NuevoMensaje,
                ChatId = _chatId,
                FechaEnvio = DateTime.Now
            };

            await _ConexionBD.InsertMensaje(mensaje);
            Mensajes.Add(mensaje);

            try
            {
                if (_webSocket?.State == WebSocketState.Open)
                {
                    string nombre = Application.Current.Properties.ContainsKey("UsuarioNombre")
                        ? Application.Current.Properties["UsuarioNombre"]?.ToString()
                        : "Anónimo";

                    string numero = Application.Current.Properties.ContainsKey("UsuarioNumero")
                        ? Application.Current.Properties["UsuarioNumero"]?.ToString()
                        : "000";

                    var mensajeJson = new
                    {
                        Nombre = nombre,
                        Numero = numero,
                        Texto = NuevoMensaje,
                        ChatId = _chatId
                    };

                    string json = JsonConvert.SerializeObject(mensajeJson);
                    var bytes = Encoding.UTF8.GetBytes(json);
                    var buffer = new ArraySegment<byte>(bytes);

                    await _webSocket.SendAsync(buffer, WebSocketMessageType.Text, true, _cts.Token);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al enviar mensaje WebSocket: " + ex.Message);
            }

            NuevoMensaje = "";
        }

        public async Task CargarMensajes()
        {
            var mensajesBD = await _ConexionBD.ObtenerMensajes(_chatId);
            Mensajes.Clear();
            foreach (var m in mensajesBD)
                Mensajes.Add(m);
        }
    }
}

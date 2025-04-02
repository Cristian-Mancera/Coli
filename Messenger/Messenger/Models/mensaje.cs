using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace Messenger.Models
{
    class Mensaje
    {
        [PrimaryKey, AutoIncrement]
        public int Id { get; set; }  
        public int UsuarioId { get; set; }  
        public string Texto { get; set; }  
        public DateTime FechaEnvio { get; set; }  
        public string ChatId { get; set; }  

        public Mensaje() { }

        public Mensaje(int usuarioId, string texto, string chatId)
        {
            UsuarioId = usuarioId;
            Texto = texto;
            FechaEnvio = DateTime.Now;
            ChatId = chatId;
        }
    }
}

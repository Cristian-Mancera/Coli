using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace Messenger.Models
{
    class Chat
    {
        [PrimaryKey]
        public string Id { get; set; }  
        public string Nombre { get; set; }

        [Ignore] 
        public List<Mensaje> Mensajes { get; set; }

        public Chat()
        {
            Mensajes = new List<Mensaje>();
        }

        public Chat(string id, string nombre)
        {
            Id = id;
            Nombre = nombre;
            Mensajes = new List<Mensaje>();
        }
    }
}

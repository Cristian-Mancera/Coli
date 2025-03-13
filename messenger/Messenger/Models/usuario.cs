using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace Messenger.Models
{
    class Usuario
    {
        [PrimaryKey, AutoIncrement]
        public int Id { get; set; } 
        public string Nombre { get; set; }  
        public string Email { get; set; } 
        public string FotoPerfilUrl { get; set; }  

        
        public Usuario() { }

        public Usuario(string nombre, string email, string fotoPerfilUrl)
        {
            Nombre = nombre;
            Email = email;
            FotoPerfilUrl = fotoPerfilUrl;
        }




    }
}

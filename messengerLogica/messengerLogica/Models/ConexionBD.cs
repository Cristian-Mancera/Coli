using SQLite;
using System;
using System.Collections.Generic;
using System.IO;
using System.Threading.Tasks;

namespace Messenger.Models
{
    class ConexionBD
    {
        private SQLiteAsyncConnection _database;

        public ConexionBD()
        {
            // Utilizamos el directorio del sistema, en lugar de Xamarin.Essentials
            var databasePath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "mensajeria.db3");

            _database = new SQLiteAsyncConnection(databasePath);

            // Crear las tablas si no existen
            _database.CreateTableAsync<Usuario>().Wait();
            _database.CreateTableAsync<Mensaje>().Wait();
            _database.CreateTableAsync<Chat>().Wait();
        }

        public Task<int> InsertUsuario(Usuario usuario)
        {
            return _database.InsertAsync(usuario);
        }

        public Task<List<Usuario>> ObtenerUsuarios()
        {
            return _database.Table<Usuario>().ToListAsync();
        }

        public Task<int> InsertMensaje(Mensaje mensaje)
        {
            return _database.InsertAsync(mensaje);
        }

        public Task<List<Mensaje>> ObtenerMensajes(string chatId)
        {
            return _database.Table<Mensaje>().Where(m => m.ChatId == chatId).ToListAsync();
        }

        public Task<int> InsertChat(Chat chat)
        {
            return _database.InsertAsync(chat);
        }

        public Task<List<Chat>> ObtenerChats()
        {
            return _database.Table<Chat>().ToListAsync();
        }
    }
}

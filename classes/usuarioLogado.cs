using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace PetHeaven.classes
{
    public class usuarioLogado
    {
        public String nome { get; set; }
        public String endereco { get; set; }
        public int idUsuario { get; set; }

    }
   public  class program
    {
     public   static void Main()
        {
            List<usuarioLogado> usuarios = ObterUsuariosDoBanco();

            foreach (var usuario in usuarios)
            {
                Console.WriteLine($"ID: {usuario.idUsuario}, Nome: {usuario.nome}, Endereco: {usuario.endereco}");
                // Adicione outras propriedades conforme necessário
            }
        }
       public static List<usuarioLogado> ObterUsuariosDoBanco()
        {
            List<usuarioLogado> usuarios = new List<usuarioLogado>();

            string connectionString = "Data Source=TORIA\\SQLEXPRESS;Initial Catalog=petHeaven;Integrated Security=True";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string sql = "SELECT * FROM usuariosPet"; // Substitua 'Usuarios' pelo nome real da sua tabela
                SqlCommand comm = new SqlCommand(sql, connection);
            //    comm.Parameters.AddWithValue("@email", txtEmail.Text);
             //   comm.Parameters.AddWithValue("@senha", txtSenha.Text);
                SqlCommand command = new SqlCommand(sql, connection);


                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            usuarioLogado usuario = new usuarioLogado();
                            {
                                int ID = Convert.ToInt32(reader["idUusario"]);
                                string Nome = Convert.ToString(reader["nomeUsuario"]);
                                string Endereco = Convert.ToString(reader["enderecoUsuario"]);
                                // Adicione outras propriedades conforme necessário
                            };

                            usuarios.Add(usuario);
                        }
                    
                }
            }

            return usuarios;
        }
    }
}
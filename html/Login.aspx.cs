using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using PetHeaven.classes;



namespace PetHeaven
{
    public partial class Login : System.Web.UI.Page
    {
        public string strcon { get; set; }
        public SqlConnection conn { get; set; }
        usuarioLogado usuar = new usuarioLogado();
        bool isValido;
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            /* strcon = "Data Source=TORIA\\SQLEXPRESS;Initial Catalog=petHeaven;Integrated Security=True";
             conn = new SqlConnection(strcon);
             conn.Open();

             string sql = "SELECT * FROM usuariosPet WHERE emailUsuario = '" + txtEmail.Text + "' AND senhaUsuario='" + txtSenha.Text + "';";
          //   string sql = "SELECT * FROM usuariosPet WHERE emailUsuario = '@email' AND senhaUsuario = '@senha'";
             SqlCommand comm = new SqlCommand(sql, conn);


             comm.Parameters.AddWithValue("@email", txtEmail.Text);
             comm.Parameters.AddWithValue("@senha", txtSenha.Text);
             int x = comm.ExecuteNonQuery();

             if (x == 1)
             {

                 ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "confirmação", "alert('Login realizado!')", true);

             }
             else
             {
                 ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "erro", "alert('Não foi possível identificar o login. Tente novamente.')", true);
             }


             conn.Close();*/

            verificarConta();

        }



        protected void btnCadastrar_Click(object sender, EventArgs e)
        {

        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            //   Response.Redirect("https://www.google.com/");
            Response.Redirect("https://localhost:44370/Index.aspx");
        }

        protected void verificarConta()
        {
            strcon = "Data Source=TORIA\\SQLEXPRESS;Initial Catalog=petHeaven;Integrated Security=True";
            conn = new SqlConnection(strcon);
            conn.Open();

            string sql = "SELECT * FROM usuarioPet WHERE emailUsuario = @email AND senhaUsuario = @senha;";
          
            SqlCommand comm = new SqlCommand(sql, conn);
            comm.Parameters.AddWithValue("@email", txtEmail.Text);
            comm.Parameters.AddWithValue("@senha", txtSenha.Text);

            var resultado = comm.ExecuteScalar();
            conn.Close();
            var salvarLogin = new usuarioLogado();

            Response.Write(resultado);


            if (resultado == null)
             {
                isValido = true;
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "confirmação", "alert('Usuario não localizado.')", true);
                
            }
             else
             {
                isValido = false;
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "confirmação", "alert('Usuário localizado!')", true);
                txtEmail.Text = "";
                txtSenha.Text = "";
            }

        }

     public void loginTeste()
        {
         

        }

    }
}
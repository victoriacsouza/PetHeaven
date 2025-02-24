using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Correios.Net;
using System.Net.Http;
using Newtonsoft.Json;
using static PetHeaven.Views.CadastroUsuario;
using System.Threading.Tasks;
using System.Web.Mvc;
using Newtonsoft.Json.Linq;

namespace PetHeaven.Views
{
    public partial class CadastroUsuario : System.Web.UI.Page
    {
        private object lblMensagem;

        public string strcon { get; set; }
        public SqlConnection conn { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LimparCamposCEP();
            }
        }

        protected void txtCEP_TextChanged(object sender, EventArgs e)
        {
            string cep = txtCEP.Text.Replace("-", "").Trim();

            if (cep.Length == 8)
            {
                BuscarCEP(cep);
            }
            else
            {
                LimparCamposCEP();
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Digite um CEP válido com 8 dígitos.');", true);
            }
        }

        private void BuscarCEP(string cep)
        {
            try
            {
                using (HttpClient client = new HttpClient())
                {
                    HttpResponseMessage response = client.GetAsync($"https://viacep.com.br/ws/{cep}/json/").Result;

                    if (response.IsSuccessStatusCode)
                    {
                        string jsonResponse = response.Content.ReadAsStringAsync().Result;
                        JObject data = JObject.Parse(jsonResponse);

                        if (data["erro"] != null)
                        {
                            LimparCamposCEP();
                            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('CEP não encontrado!');", true);
                        }
                        else
                        {
                            txtEnd.Text = data["logradouro"]?.ToString() ?? "";
                            txtBairro.Text = data["bairro"]?.ToString() ?? "";
                            txtEstado.Text = data["uf"]?.ToString() ?? "";
                        }
                    }
                    else
                    {
                        LimparCamposCEP();
                        ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Falha ao buscar o CEP.');", true);
                    }
                }
            }
            catch (Exception ex)
            {
                LimparCamposCEP();
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", $"alert('Erro ao buscar o CEP: {ex.Message}');", true);
            }
        }

        private void LimparCamposCEP()
        {
            txtEnd.Text = "";
            txtBairro.Text = "";
            txtEstado.Text = "";
        }




        protected void btnCadastrar_Click(object sender, EventArgs e)
        {

            strcon = "Data Source=TORIA\\SQLEXPRESS;Initial Catalog=petHeaven;Integrated Security=True";
            conn = new SqlConnection(strcon);
            conn.Open();

            string sql = "insert into usuariosPet(nomeUsuario, cpfUsuario, nascUsuario, celularUsuario, emailUsuario, senhaUsuario, cepUsuario, enderecoUsuario, compleUsuario, bairroUsuario, estadoUsuario) values " +
                "(@nome, @cpf, @nasc, @cel,  @email, @senha, @cep, @endereco, @complemento, @bairro, @estado)";

            SqlCommand comm = new SqlCommand(sql, conn);

            comm.Parameters.AddWithValue("@nome", txtNome.Text);
            comm.Parameters.AddWithValue("@cpf", txtCPF.Text);
            comm.Parameters.AddWithValue("@nasc", txtNasc.Text);
            comm.Parameters.AddWithValue("@cel", txtCel.Text);
            comm.Parameters.AddWithValue("@cep", txtCEP.Text);
            comm.Parameters.AddWithValue("@endereco", txtEnd.Text);
            comm.Parameters.AddWithValue("@complemento", txtComp.Text);
            comm.Parameters.AddWithValue("@email", txtEmail.Text);
            comm.Parameters.AddWithValue("@senha", txtSenha.Text);
            comm.Parameters.AddWithValue("@bairro", txtBairro.Text);
            comm.Parameters.AddWithValue("@estado", txtEstado.Text);


            int x = comm.ExecuteNonQuery();



            if (x == 1)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "confirmação", "alert('Cadastro realizado com sucesso!')", true);

            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "erro", "alert('Cadastro não realizado!')", true);
            }

            conn.Close();

        }

        protected void confirmarSenha()
        {


        }


        protected void btnVoltar_Click(object sender, EventArgs e)
        {

            Response.Redirect("https://localhost:44370/html/Login.aspx");
        }

        protected void LimparCampos()
        {
            txtNome.Text = "";
            txtCPF.Text = "";
            txtNasc.Text = "";
            txtCel.Text = "";
            txtCEP.Text = "";
            txtEnd.Text = "";
            txtComp.Text = "";
            txtEmail.Text = "";
            txtSenha.Text = "";

        }

        public string FormatCPF()
        {
            string cpf = txtCPF.Text;
            string response = cpf.Trim();
            if (response.Length == 11)
            {
                response = response.Insert(9, "-");
                response = response.Insert(6, ".");
                response = response.Insert(3, ".");
            }
            return response;
        }

        public string FormatCelular()
        {

            string strNumero = txtCel.Text;
            string strMascara = "{0:(00)0000-0000}";
            // converter o texto em número
            long lngNumero = Convert.ToInt64(strNumero);

            while (strNumero.Length == 11)
                strMascara = "{0:(00)00000-0000}";

            return string.Format(strMascara);
        }



        private void textCEP_Leave(object sender, EventArgs e)
        {

        }




        protected void btnCEP_Click(object sender, EventArgs e)
        {

        }



        protected void btnCEP_Click1(object sender, EventArgs e)
        {
            
        }



    }



}


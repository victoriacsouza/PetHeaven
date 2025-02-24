using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;
using System.Text.RegularExpressions;
using System.Net.Configuration;



namespace PetHeaven
{
    public partial class RecuperarSenha : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRecuperar_Click(object sender, EventArgs e)
        {
          System.Net.Mail.MailMessage mailMessage = new System.Net.Mail.MailMessage();
               string assunto = "Redefinição de Senha";
               string destino = txtEmail.Text;
               string corpo = "Para redefinir sua senha clique";
            string complemento = "Caso não tenha solicitado a recuperação, ignore o email.";
          //  string link = @"file:\\C:\Users\Toria\source\repos\PetHeaven\RecuperarSenha.aspx";
            string link = @"https://localhost:44370/RecuperarSenha.aspx";
            
            mailMessage.From = new System.Net.Mail.MailAddress("waldeckantonio@hotmail.com");
               mailMessage.To.Add(new System.Net.Mail.MailAddress(destino));

               mailMessage.Subject = "Pet Heaven " + assunto;
               mailMessage.Body = corpo + $"<a href=\"{link}\"> Aqui. </a>" + complemento;
               mailMessage.IsBodyHtml = true;

               using (var smtp = new System.Net.Mail.SmtpClient())
               {
                   smtp.Host = "smtp-mail.outlook.com";
                   smtp.Port = 587;
                   smtp.EnableSsl = true;
                // smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                // smtp.UseDefaultCredentials = true;
                    smtp.Credentials = new System.Net.NetworkCredential("waldeckantonio@hotmail.com", "Kelysilva01");
                    smtp.Send(mailMessage);
               } 
               try
               {
                   ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "erro", "alert('Email enviado com sucesso.')", true);
               }
               catch
               {
                   ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "erro", "alert('Não foi possível enviar o email.')", true);
               }
               finally
               {

               } 
           

        }
    }
}
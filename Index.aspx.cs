using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PetHeaven
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {

        }

        protected void btnLoginC_Click(object sender, EventArgs e)
        {
            //  string url = @"https://localhost:44370/Login.aspx";
             Response.Redirect("https://localhost:44370/Login.aspx");

           // Response.Redirect("https://www.youtube.com/watch?v=NdIdjQeIpfA");
            
        }
        protected void imgClicavel_Click(object sender, ImageClickEventArgs e)
        {
            // Lógica a ser executada quando a imagem é clicada
            //    Response.Redirect("https://www.youtube.com/watch?v=NdIdjQeIpfA");
        
        }

        protected void btnProd_Click(object sender, EventArgs e)
        {

            Response.Redirect("https://localhost:44370/html/pagProdutos.aspx");
            

        }
    }
}
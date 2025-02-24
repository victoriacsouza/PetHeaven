<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PetHeaven.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
        integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="bar icon" type="png" href="../image/LOGO PETHEAVEN.png">
    <link href="../css/style.css" rel="stylesheet" />
    <title>Login</title>
</head>

<body>
    <header>

        <nav>
            <div class="logo-div">
                <a href="../Index.aspx">
                    <img class="logo-petheaven" src="../image/LOGO PETHEAVEN.png" alt="Logo home" /></a>
            </div>
            <div class="div-input">
                <input class="input-main" type="text" placeholder="O que você procura? " />
                <button class="search-button">
                    <i class="fa-solid fa-magnifying-glass"></i>
                </button>
            </div>
            <div class="navbar">
                <ul class="nav-items">
                    <li>
                        <a href="carrinhoDeCompras.aspx">
                            <img class="shopcart-button" src="../image/Shopcart_Icon.png" alt="Carrinho de compras" />
                        </a>
                    </li>
                    <li>
                        <a href="###">
                            <img class="loved-button" src="../image/lovedButton_Icon.png" alt="Favoritos">
                        </a>
                    </li>
                    <li>

                        <div class="login-button">
                            <a href="Login.aspx">
                                <img class="login-icon" src="../image/loginPerson_Icon.png" alt="Login" />Login ou Cadastre-se</a>
                        </div>

                    </li>
                </ul>
            </div>
        </nav>
    </header>

    <main class="login-information">
        <h1 class="main-login">Login</h1>
        <br/>


        <form runat="server">
            <div>
                <asp:Label ID="lblEmail" runat="server" Text="E-mail:"></asp:Label>
                <!-- <label for="email-login">E-mail:</label> -->
                <br />
                <asp:TextBox ID="txtEmail" runat="server" type="email"></asp:TextBox>

            </div>

            <div>
                <label for="senha-login">Senha:</label>
                <br />
                <asp:TextBox ID="txtSenha" runat="server" type="password"></asp:TextBox>

            </div>

            <asp:LinkButton ID="btnEsqueci" CssClass="btnEsqueci" runat="server" href="RecuperarSenha.aspx">Esqueceu a senha?</asp:LinkButton>

            <div>

                <div>
                    <asp:HyperLink ID="cadastre_se" class="cadastro-login" runat="server" href="CadastroUsuario.aspx">Não possui login? Cadastre-se</asp:HyperLink>
                    <!-- <a href="http://127.0.0.1:5501/html/cadastro.html"> -->
                    <!--  <asp:Button ID="btnCadastrar" runat="server" Text="Cadastre-se" class="cadastro-login" OnClick="btnCadastrar_Click"/>  -->
                </div>


                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="entrar-login" OnClick="btnLogin_Click" />
            </div>




            <div>
                <!-- <a href="http://127.0.0.1:5501/index.html"> -->
                <asp:Button ID="btnVoltar" runat="server" Text="Voltar" class="voltar-login" OnClick="btnVoltar_Click" />


            </div>
        </form>
    </main>

    <footer>
        <div id="footer_content">
            <div id="footer_contacts">
                <h1>Logo</h1>
                <p>Seu Refúgio para
                    <br>
                    Amigos Peludos</p>

                <div id="footer_social_media">
                    <a href="#" class="footer-link" id="instagram">
                        <i class="fa-brands fa-instagram"></i>
                    </a>

                    <a href="#" class="footer-link" id="facebook">
                        <i class="fa-brands fa-facebook-f"></i>
                    </a>

                    <a href="#" class="footer-link" id="whatsapp">
                        <i class="fa-brands fa-whatsapp"></i>
                    </a>
                </div>
            </div>

            <ul class="footer-list">
                <li>
                    <h3>Nossas Políticas</h3>
                </li>
                <li>
                    <a href="#" class="footer-link">Política de Compra</a>
                </li>
                <li>
                    <a href="#" class="footer-link">Política de Privacidade</a>
                </li>
                <li>
                    <a href="#" class="footer-link">Política de Cookie</a>
                </li>
            </ul>

            <ul class="footer-list">
                <li>
                    <h3>Atendimento PetHeaven</h3>
                </li>
                <li>
                    <a href="#" class="footer-link">Meus Pedidos</a>
                </li>
                <li>
                    <a href="#" class="footer-link">Meu Cadastro</a>
                </li>
                <li>
                    <a href="#" class="footer-link">Minha Assinatura</a>
                </li>
            </ul>

            <div id="footer_subscribe">
                <h3>Confira Nossos Serviços e Produtos</h3>

                <p>
                    Cadastre-se e receba nossas promoções e novidades antes
                    <br>
                    de todo mundo.
                </p>

                <div id="input_group">
                    <input type="email" id="email" />
                    <button>
                        <i class="fa-regular fa-envelope"></i>
                    </button>
                </div>
            </div>
        </div>

        <div id="footer_copyright">
            &#169
            2023 all rights reserved
        </div>
    </footer>
</body>
</html>

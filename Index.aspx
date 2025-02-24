<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="PetHeaven.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<html lang="pt-br">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
        integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="bar icon" type="png" href="/image/LOGO PETHEAVEN.png">
    <link rel="stylesheet" href="/css/style.css">
    <link href="css/cssIndex.css" rel="stylesheet" />
    <title>Pet Heaven</title>
</head>
<body>
    <header>

        <nav>
            <div class="logo-div">
                <a href="Index.aspx">
                    <img class="logo-petheaven" src="image/LOGO PETHEAVEN.png" alt="Logo home" /></a>
            </div>
            <div class="div-input">
                <input class="input-main" type="text" placeholder="O que você procura? ">
                <button class="search-button">
                    <i class="fa-solid fa-magnifying-glass"></i>
                </button>
            </div>
            <div class="navbar">
                <ul class="nav-items">
                    <li>
                        <a href="html/carrinhoDeCompras.aspx">
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
                            <a href="html/Login.aspx">
                                <img class="login-icon" src="../image/loginPerson_Icon.png" alt="Login" />Login ou Cadastre-se</a>
                        </div>
                        </li>
                </ul>
            </div>
        </nav>
    </header>
   
    <main>
        <nav class="animais">
           
            <a href="html/animais/cat-section.aspx">
                <img class="gato" src="/image/Ellipse 1.png" alt="gato"></a>

            <a href="html/animais/dog-section.aspx">
                <img class="cachorro" src="/image/Ellipse 2.png" alt="cachorro"></a>

            <a href="html/animais/birds-section.aspx">
                <img class="ave" src="/image/Ellipse 3.png" alt="ave"></a>

            <a href="html/animais/fish-section.aspx">
                <img class="peixe" src="/image/Ellipse 5.png" alt="peixe"></a>

            <a href="html/animais/mouse-section.aspx">
                <img class="roedor" src="/image/Ellipse 4.png" alt="roedor">
            </a>

        </nav>

        <div class="main-container" runat="server">
            <div class="card">
                <div class="card-text">
                    <h2>NOSSOS PRODUTOS</h2>
                    <br/>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sit amet accumsan dolor, eget porta
                    nibh. Pellentesque laoreet felis non odio viverra, vitae blandit ligula sollicitudin. Nulla
                    facilisis velit vitae urna fermentum ultricies. Aenean volutpat, est id posuere luctus, arcu sapien
                    commodo sapien, sed luctus ex metus pulvinar tortor. Donec vel porta metus. Phasellus pellentesque
                    dolor efficitur ipsum scelerisque lacinia. Maecenas massa justo, euismod ut ipsum ac, mattis
                    vehicula orci. Nam metus quam, tempus vel finibus pretium, iaculis in risus.
                    Etiam egestas imperdiet est, venenatis tempus ex venenatis ut. Nulla vel nibh mattis, sodales nisi
                    non, egestas lectus. Suspendisse tincidunt malesuada nunc, at sodales dui sagittis vel.Etiam egestas
                    imperdiet est, venenatis tempus ex venenatis ut. Nulla vel nibh mattis, sodales nisi non, egestas
                    lectus. Suspendisse tincidunt malesuada nunc, at sodales dui sagittis vel.</p>
                    <br/>
               <center>  <div class="pagProd">
                    <a href="html/pagProdutos.aspx">COMPRAR</a>
                </div></center>
                </div>

                <div class="card-one-image">
                    <img src="/image/produtos.png" alt="">
                </div>
            </div>

            <div class="card">
                <div class="card-two-image">
                    <img src="/image/LOGO PETHEAVEN.png" alt="">
                </div>
                <div class="card-text">
                    <h2>HOSPITAL VETERINÁRIO 24 HORAS</h2>
                    <br>
                    ipsum dolor sit amet, consectetur adipiscing elit. Integer sit amet accumsan dolor, eget porta
                    nibh. Pellentesque laoreet felis non odio viverra, vitae blandit ligula sollicitudin. Nulla
                    facilisis velit vitae urna fermentum ultricies. Aenean volutpat, est id posuere luctus, arcu
                    sapien commodo sapien, sed luctus ex metus pulvinar tortor. Donec vel porta metus. Phasellus
                    pellentesque dolor efficitur ipsum scelerisque lacinia. Maecenas massa justo, euismod ut ipsum
                    ac, mattis vehicula orci. Nam metus quam, tempus vel finibus pretium, iaculis in risus.
                    Etiam egestas imperdiet est, venenatis tempus ex venenatis ut. Nulla vel nibh mattis, sodales
                    nisi non, egestas lectus. Suspendisse tincidunt malesuada nunc, at sodales dui sagittis
                    vel.Etiam egestas imperdiet est, venenatis tempus ex venenatis ut. Nulla vel nibh mattis,
                    sodales nisi non, egestas lectus. Suspendisse tincidunt malesuada nunc, at sodales dui sagittis
                    vel.</p>
                    <br>
                    <h3>Procure o hospital mais próximo de você</h3>
                    <button>POLOS</button>
                </div>
            </div>
        </div>
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
                    <input type="email" id="email">
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

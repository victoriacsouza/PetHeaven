<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pagProdutos.aspx.cs" Inherits="PetHeaven.html.pagProdutos" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<html lang="pt-br">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
        integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

  <link rel="bar icon" type="png" href="/image/header-icons/barLogo.png">
    <link rel="stylesheet" href="../css/style.css">
    <title>Brinquedos</title>
</head>
<body>
    <header>

        <nav>
            <div class="logo-div">
                <a href="Index.aspx">
                    <img class="logo-petheaven" src="../image/LOGO PETHEAVEN.png" alt="Logo home" /></a>
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
                            <a href="Login.aspx">
                                <img class="login-icon" src="../image/loginPerson_Icon.png" alt="Login" />Login ou Cadastre-se</a>
                        </div>
                        </li>
                </ul>
            </div>
        </nav>
    </header>
<main id="main-products">
        <h1>Brinquedos</h1>
        <h2>As melhores brinquedos para o seu melhor amigo</h2>

        <div id="product-page-container">
            <div class="produto">
                <img src="../image/brinquedos/brinquedo.png" alt="Mordedor para caes">
                <h3>Mordedor para cães</h3>
                <p>Brinquedo De Vinil Para Cães G</p>
                <p class="price">R$19,99</p>
                <div class="product-button">
                    <button class="favoritar"><img src="../image/header-icons/lovedButton_Icon.png"
                         alt="Favoritar"></button><button class="add-cart">Adicionar ao carrinho</button>
                </div>
            </div>
            <div class="produto">
                <img src="../image/brinquedos/brinquedo1.png" alt="brinquedo">
                <h3>Macaco Amigo</h3>
                <p>Brinquedo Mordedor Pelúcia Macaco Grande Com Apito</p>
                <p class="price">R$49,99</p>
                <div class="product-button">
                    <button class="favoritar"><img src="../image/header-icons/lovedButton_Icon.png"
                            alt="Favoritar"></button><button class="add-cart">Adicionar ao carrinho</button>
                </div>
            </div>
            <div class="produto">
                <img src="../image/brinquedos/brinquedo2.png" alt="Brinquedo">
                <h3>Pet game</h3>
                <p>Pet Games Pet Escova G </p>
                <p class="price">R$79,99</p>
                <div class="product-button">
                    <button class="favoritar"><img src="../image/header-icons/lovedButton_Icon.png"
                            alt="Favoritar"></button><button class="add-cart">Adicionar ao carrinho</button>
                </div>
            </div>
            <div class="produto">
                <img src="../image/brinquedos/brinquedo17.png" alt="brinquedo">
                <h3>Gato Bolinha</h3>
                <p>Mordedor Para Gatos</p>
                <p class="price">R$ 35,99</p>
                <div class="product-button">
                    <button class="favoritar"><img src="../image/header-icons/lovedButton_Icon.png"
                            alt="Favoritar"></button><button class="add-cart">Adicionar ao carrinho</button>
                </div>
            </div>
            <div class="produto">
                <img src="../image/brinquedos/brinquedo4.png" alt="brinquedo">
                <h3>Galinha</h3>
                <p>Brinquedo Napi Mordedor Galinha para Cães P 16cm</p>
                <p class="price">R$ 20,99</p>
                <div class="product-button">
                    <button class="favoritar"><img src="../image/header-icons/lovedButton_Icon.png"
                            alt="Favoritar"></button><button class="add-cart">Adicionar ao carrinho</button>
                </div>
            </div>
            <div class="produto">
                <img src="../image/brinquedos/brinquedo5.png" alt="brinquedo">
                <h3>Lhama Rosa</h3>
                <p>Pelúcia Rosa</p>
                <p class="price">R$19,99</p>
                <div class="product-button">
                    <button class="favoritar"><img src="../image/header-icons/lovedButton_Icon.png"
                            alt="Favoritar"></button><button class="add-cart">Adicionar ao carrinho</button>
                </div>
            </div>
          
            <div class="produto">
                <img src="../image/brinquedos/brinquedo6.png" alt="brinquedo">
                <h3>Corda</h3>
                <p>Corda Para Cães</p>
                <p class="price">R$ 35,99</p>
                <div class="product-button">
                    <button class="favoritar"><img src="../image/header-icons/lovedButton_Icon.png"
                            alt="Favoritar"></button><button class="add-cart">Adicionar ao carrinho</button>
                </div>
            </div>
            <div class="produto">
                <img src="../image/brinquedos/brinquedo7.png" alt="brinquedo">
                <h3>Cordas Coloridas Com Led</h3>
                <p>Cordas para Gato</p>
                <p class="price">R$25,99</p>
                <div class="product-button">
                    <button class="favoritar"><img src="../image/header-icons/lovedButton_Icon.png"
                            alt="Favoritar"></button><button class="add-cart">Adicionar ao carrinho</button>
                </div>
            </div>
            <div class="produto">
                <img src="../image/brinquedos/brinquedo8.png" alt="brinquedo">
                <h3>Bolinha de Lã</h3>
                <p>Bolinha de Lã para gatos</p>
                <p class="price">R$9,99</p>
                <div class="product-button">
                    <button class="favoritar"><img src="../image/header-icons/lovedButton_Icon.png"
                            alt="Favoritar"></button><button class="add-cart">Adicionar ao carrinho</button>
                </div>
            </div>
            <div class="produto">
                <img src="../image/brinquedos/brinquedo9.png" alt="brinquedo">
                <h3>Brinquedo Educativo Para Gatos</h3>
                <p>Bolinha com Corda brilhante</p>
                <p class="price">R$24,99</p>
                <div class="product-button">
                    <button class="favoritar"><img src="../image/header-icons/lovedButton_Icon.png"
                            alt="Favoritar"></button><button class="add-cart">Adicionar ao carrinho</button>
                </div>
            </div>
            <div class="produto">
                <img src="../image/brinquedos/brinqueto10.png" alt="brinquedo">
                <h3>Boneco Amigo</h3>
                <p>Boneco Amigo para seu gato ou cachorro</p>
                <p class="price">R$49,99</p>
                <div class="product-button">
                    <button class="favoritar"><img src="../image/header-icons/lovedButton_Icon.png"
                            alt="Favoritar"></button><button class="add-cart">Adicionar ao carrinho</button>
                </div>
            </div>
            <div class="produto">
                <img src="../image/brinquedos/brinquedo11.png" alt="brinquedo">
                <h3>Brinquedo Argola Interativa p/ Gatos</h3>
                <p>Argola Interativa p/ Gatos</p>
                <p class="price">R$20,99</p>
                <div class="product-button">
                    <button class="favoritar"><img src="../image/header-icons/lovedButton_Icon.png"
                            alt="Favoritar"></button><button class="add-cart">Adicionar ao carrinho</button>
                </div>
            </div>
            <div class="produto">
                <img src="../image/brinquedos/brinquedo12.png" alt="brinquedo">
                <h3>Pelúcia</h3>
                <p>Amigo peludo</p>
                <p class="price">R$19,99</p>
                <div class="product-button">
                    <button class="favoritar"><img src="../image/header-icons/lovedButton_Icon.png"
                            alt="Favoritar"></button><button class="add-cart">Adicionar ao carrinho</button>
                </div>
            </div>
            <div class="produto">
                <img src="../image/brinquedos/brinquedo14.png" alt="brinquedo">
                <h3>Pelúcia</h3>
                <p>Variedade de amigos peludos</p>
                <p class="price">R$12,99</p>
                <div class="product-button">
                    <button class="favoritar"><img src="../image/header-icons/lovedButton_Icon.png"
                            alt="Favoritar"></button><button class="add-cart">Adicionar ao carrinho</button>
                </div>
            </div>
            <div class="produto">
                <img src="../image/brinquedos/brinquedo15.png" alt="brinquedo">
                <h3>Bolinha</h3>
                <p>Bolinha com pena</p>
                <p class="price">R$19,99</p>
                <div class="product-button">
                    <button class="favoritar"><img src="../image/header-icons/lovedButton_Icon.png"
                            alt="Favoritar"></button><button class="add-cart">Adicionar ao carrinho</button>
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

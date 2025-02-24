<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="carrinhoDeCompras.aspx.cs" Inherits="PetHeaven.html.carrinhoDeCompras" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Carrinho de Compras</title>
    <link
        href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css"
        rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
        integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../css/style.css" rel="stylesheet" />
</head>
<body>
    <header>
        <nav>
            <div class="logo-div">
                <a href="../Index.aspx">
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
                        <a href="https://localhost:44370/html/carrinhoDeCompras.aspx">
                            <img class="shopcart-button" src="../image/Shopcart_Icon.png" alt="Carrinho de compras">
                        </a>
                    </li>
                    <li>
                        <a href="###">
                            <img class="loved-button" src="../image/lovedButton_Icon.png" alt="Favoritos">
                        </a>
                    </li>
                    <li class="li-item">
                          <div class="login-button">
                            <a href="Login.aspx">
                                <img class="login-icon" src="../image/loginPerson_Icon.png" alt="Login" />Login ou Cadastre-se</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
        <span>Carrinho de compras </span>
    </header>
    <main>
        <div class="page-title">Seu Carrinho</div>
        <div class="content">
            <section>
                <table>
                    <thead>
                        <tr>
                            <th>Produto</th>
                            <th>Preço</th>
                            <th>Quantidade</th>
                            <th>Total</th>
                            <th>-</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <div class="product">
                                    <img src="/image/image 8.png" alt="" />
                                    <div class="info">
                                        <div class="name">Nome do produto</div>
                                        <div class="category">Categoria</div>
                                    </div>
                                </div>
                            </td>
                            <td>R$ 120</td>
                            <td>
                                <div class="qty">
                                    <button><i class="bx bx-minus"></i></button>
                                    <span>2</span>
                                    <button><i class="bx bx-plus"></i></button>
                                </div>
                            </td>
                            <td>R$ 240</td>
                            <td>
                                <button class="remove"><i class="bx bx-x"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="product">
                                    <img src="/image/image 8.png" alt="" />
                                    <div class="info">
                                        <div class="name">Nome do produto</div>
                                        <div class="category">Categoria</div>
                                    </div>
                                </div>
                            </td>
                            <td>R$ 120</td>
                            <td>
                                <div class="qty">
                                    <button><i class="bx bx-minus"></i></button>
                                    <span>2</span>
                                    <button><i class="bx bx-plus"></i></button>
                                </div>
                            </td>
                            <td>R$ 240</td>
                            <td>
                                <button class="remove"><i class="bx bx-x"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="product">
                                    <img src="/image/image 8.png" alt="" />
                                    <div class="info">
                                        <div class="name">Nome do produto</div>
                                        <div class="category">Categoria</div>
                                    </div>
                                </div>
                            </td>
                            <td>R$ 120</td>
                            <td>
                                <div class="qty">
                                    <button><i class="bx bx-minus"></i></button>
                                    <span>2</span>
                                    <button><i class="bx bx-plus"></i></button>
                                </div>
                            </td>
                            <td>R$ 240</td>
                            <td>
                                <button class="remove"><i class="bx bx-x"></i></button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </section>
            <aside>
                <div class="box">
                    <h2>Resumo da compra </h2>
                    <div class="info">
                        <div><span>Sub-total</span><span>R$ 418</span></div>
                        <div><span>Frete</span><span>Gratuito</span></div>
                        <div>
                            <button>
                                Adicionar cupom de desconto
                  <i class="bx bx-right-arrow-alt"></i>
                            </button>
                        </div>
                    </div>
                    <div class="total-produtos">
                        <span>Total</span>
                        <span>R$ 418</span>
                    </div>
                </div>
                <button>Finalizar Compra</button>
            </aside>
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

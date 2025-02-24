<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testeUsuarioLogado.aspx.cs" Inherits="PetHeaven.testeUsuarioLogado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
  <header>
        <nav>
            <div class="logo-div">
                <a href="Index.aspx">
                    <img class="logo-petheaven" src="image/LOGO PETHEAVEN.png" alt="Logo home" /></a>
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
                        <a href="/html/shop.html">
                            <img class="shopcart-button" src="../image/Shopcart_Icon.png" alt="Carrinho de compras" />
                        </a>
                    </li>
                    <li>
                        <a href="###">
                            <img class="loved-button" src="../image/lovedButton_Icon.png" alt="Favoritos" />
                        </a>
                    </li>
                    <li>
                        <div class="login-button">
                            <a href="Login.aspx">
                                <img class="login-icon" src="image/loginPerson_Icon.png" alt="Login" />Login ou Cadastre-se</a>
                        </div>

                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <a href="classes/usuarioLogado.cs"></a>
    

</body>
</html>

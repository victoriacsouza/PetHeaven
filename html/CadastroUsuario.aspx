<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroUsuario.aspx.cs" Inherits="PetHeaven.Views.CadastroUsuario" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<html lang="pt-br">
<head runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
        integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../css/style.css" rel="stylesheet" />
    <title>Cadastro</title>
</head>
<body>
    <header>
        <nav>
            <div class="logo-div">
                <a href="../Index.aspx">
                    <img class="logo-petheaven" src="../image/LOGO PETHEAVEN.png" alt="Logo home" />
                </a>
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
                            <img class="loved-button" src="../image/lovedButton_Icon.png" alt="Favoritos" />
                        </a>
                    </li>
                    <li>
                        <div class="login-button">
                            <a href="Login.aspx">
                                <img class="login-icon" src="../image/loginPerson_Icon.png" alt="Login" />Login ou Cadastre-se
                            </a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <main class="cadastro-information">
        <h1 class="main-cadastro">Cadastre-se</h1>
        <form runat="server">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            
            <div>
                <label for="nome-cadastro">Nome Completo:</label><br />
                <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
            </div>

            <div>
                <label for="email-cadastro">E-mail:</label><br />
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </div>

            <div>
                <label for="celular-cadastro">Celular:</label><br />
                <asp:TextBox ID="txtCel" runat="server"></asp:TextBox>
                <ajaxToolkit:MaskedEditExtender ID="txtCel_MaskedEditExtender" runat="server" Mask="(99) 99999-9999" TargetControlID="txtCel" />
            </div>

            <div>
                <label for="cpf-cadastro">CPF:</label><br />
                <asp:TextBox ID="txtCPF" runat="server"></asp:TextBox>
                <ajaxToolkit:MaskedEditExtender ID="txtCPF_MaskedEditExtender" runat="server" Mask="999.999.999-99" TargetControlID="txtCPF" />
            </div>

            <div>
                <label for="nasc-cadastro">Data de Nascimento:</label><br />
                <asp:TextBox ID="txtNasc" runat="server" TextMode="Date"></asp:TextBox>
            </div>

            <div>
                <label for="cep-cadastro">CEP:</label><br />
                <asp:TextBox ID="txtCEP" runat="server" AutoPostBack="true" OnTextChanged="txtCEP_TextChanged"></asp:TextBox>
                <ajaxToolkit:MaskedEditExtender ID="txtCEP_MaskedEditExtender" runat="server" Mask="99999-999" TargetControlID="txtCEP" />
                <p class="cep">*Caso não saiba ou lembre, 
                    <a class="link" href="https://buscacepinter.correios.com.br/app/endereco/index.php" target="_blank">pesquise aqui</a>
                </p>
            </div>

            <div>
                <label for="endereco-cadastro">Endereço:</label><br />
                <asp:TextBox ID="txtEnd" runat="server"></asp:TextBox>
            </div>

            <div>
                <label for="complemento-cadastro">Complemento:</label><br />
                <asp:TextBox ID="txtComp" runat="server"></asp:TextBox>
            </div>

            <div>
                <label for="bairro-cadastro">Bairro:</label><br />
                <asp:TextBox ID="txtBairro" runat="server"></asp:TextBox>
            </div>

            <div>
                <label for="estado-cadastro">Estado:</label><br />
                <asp:TextBox ID="txtEstado" runat="server"></asp:TextBox>
            </div>

            <div>
                <label for="senha-cadastro">Senha:</label><br />
                <asp:TextBox ID="txtSenha" runat="server" TextMode="Password"></asp:TextBox>
            </div>

            <div>
                <asp:Button ID="btnCadastrar" class="entrar-cadastro" runat="server" Text="Cadastrar" OnClick="btnCadastrar_Click" />
            </div>

            <div>
                <asp:Button ID="btnVoltar" class="voltar-cadastro" runat="server" Text="Voltar" OnClick="btnVoltar_Click" />
            </div>
        </form>
    </main>

    <footer>
        <div id="footer_content">
            <div id="footer_contacts">
                <h1>Logo</h1>
                <p>Seu Refúgio para<br />Amigos Peludos</p>

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
                <li><h3>Nossas Políticas</h3></li>
                <li><a href="#" class="footer-link">Política de Compra</a></li>
                <li><a href="#" class="footer-link">Política de Privacidade</a></li>
                <li><a href="#" class="footer-link">Política de Cookie</a></li>
            </ul>

            <ul class="footer-list">
                <li><h3>Atendimento PetHeaven</h3></li>
                <li><a href="#" class="footer-link">Meus Pedidos</a></li>
                <li><a href="#" class="footer-link">Meu Cadastro</a></li>
                <li><a href="#" class="footer-link">Minha Assinatura</a></li>
            </ul>

            <div id="footer_subscribe">
                <h3>Confira Nossos Serviços e Produtos</h3>
                <p>Cadastre-se e receba nossas promoções e novidades antes<br />de todo mundo.</p>
                <div id="input_group">
                    <input type="email" id="email" />
                    <button><i class="fa-regular fa-envelope"></i></button>
                </div>
            </div>
        </div>
        <div id="footer_copyright">© 2023 all rights reserved</div>
    </footer>
</body>
</html>

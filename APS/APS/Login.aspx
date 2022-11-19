<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="APS.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <link href="/CSS/Login.css" rel="stylesheet">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Aps 8° Semestre</title>

    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
            }
        }
    </style>

</head>
<body class="text-center">
    <form class="form-signin" id="form1" runat="server">


        <img class="mb-4" src="IMG/login.png" alt="" width="72" height="72">
        <h1 class="h3 mb-3 font-weight-normal">Login</h1>
        <label for="inputEmail" class="sr-only">Email address</label>
        <asp:TextBox runat="server" ID="inputEmail" CssClass="form-control" placeholder="Email"/>
        <label for="inputPassword" class="sr-only">Password</label>
        <asp:TextBox runat="server" ID="inputPassword" CssClass="form-control" placeholder="Senha" TextMode="Password"/>
        <div class="checkbox mb-3">
            <label>
                <input type="checkbox" value="remember-me">Lembre me
            </label>
        </div>
        <asp:Button Text="Logar" runat="server" CssClass="btn btn-lg btn-primary btn-block" ID="btnLogar" OnClick="btnLogar_Click"/>
        <br />
        <br />
        <p>Cadastrar</p>
        <a href ="Cadastro_aluno.aspx">Clique aqui</a>
        <p class="mt-5 mb-3 text-muted">Aps 2022</p>

    </form>

</body>
</html>

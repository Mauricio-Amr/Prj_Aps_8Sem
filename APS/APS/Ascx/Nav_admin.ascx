<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Nav_admin.ascx.cs" Inherits="APS.Ascx.WebUserControl1" %>


<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <h2>Aps 2022 </h2>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
     
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Cadastros
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="../Cadastro_universidade.aspx">Cadastro Universidade</a>
          <a class="dropdown-item" href="../Cadastro_dicisplina.aspx">Cadastro Dicisplina</a>
          <a class="dropdown-item" href="../Cadastro_professor.aspx">Cadastro Professor</a>
          
        </div>
      </li>
      
    </ul>
   
  </div>
</nav>
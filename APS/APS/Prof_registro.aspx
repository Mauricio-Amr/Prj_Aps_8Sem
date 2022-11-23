<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prof_registro.aspx.cs" Inherits="APS.Prof_registro" %>

<%@ Register Src="~/Ascx/Nav_professor.ascx" TagPrefix="uc1" TagName="Nav_professor" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link href="/CSS/Cad_disciplina.css" rel="stylesheet">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Professor_registro</title>
</head>
<body>
    <form class="form-horizontal" id="form1" runat="server">

        <uc1:Nav_professor runat="server" id="Nav_professor" />
        <fildset>
            <div class="card panel-primary">
                <div class="bg-primary card-header">Professor registro</div>
            </div>

            <div class="card card-header">

                <div class="form-group row col-sm-10">
                    <div>
                        <img src="IMG/login.png" class="img-thumbnail" />
                    </div>
                    <div class="form-group row col-sm-8">

                        <div class="col-sm-4">
                            <h2><span class="badge badge-info">Nome: <%=_prof.Nome %></span></h2>
                        </div>

                        <div class="col-sm-11">
                            <h2><span class="badge badge-info">Email: <%=_prof.Email %></span></h2>
                        </div>

                        <%--<div class="col-sm-4">
                            <h3>
                                <span class="badge badge-info">registro</span>
                            </h3>
                        </div>

                        <div class="col-sm-4">
                            <h3>
                                <span class="badge badge-info">data</span>
                            </h3>
                        </div>--%>

                    </div>
                </div>
            </div>

            <div class="card card-header">


                <%--<div class="form-group col-sm-1">
                    <label for="sel1">Select list:</label>
                    <select class="form-control" id="sel1">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                    </select>
                </div>--%>

                <div class=" card card-header">

                    <div class="col-sm-10">
                        <table class="table">
                            <thead class="thead-dark">
                                <tr>
                                    <th>Nome</th>
                                    <th>Email</th>
                                    <th class="col-sm-2">Np1</th>
                                    <th class="col-sm-2">Np2</th>
                                    <th>Salvar</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%foreach (var item in _disciplinas)
                                    { %>
                                        <tr>
                                            <td><%=item.Aluno.nome %></td>
                                            <td><%=item.Aluno.email %></td>
                                            <td><asp:TextBox runat="server" ID="inputNp1" CssClass="form-control" placeholder="NP1" type="text"/></td>
                                            <td><asp:TextBox runat="server" ID="inputNP2" CssClass="form-control" placeholder="NP2" type="text"/></td>
                                            <td><asp:Button Text="Salvar" runat="server" CssClass="btn btn-primary" ID="btnSalvarNota" OnClick="btn_salvar_nota_Click"/></td>
                                        </tr>
                                    <% } %>
                            </tbody>
                    </div>
                </div>


            </div>





        </fildset>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro_professor.aspx.cs" Inherits="APS.Cadastro_professor" %>

<%@ Register Src="~/Ascx/Nav_admin.ascx" TagPrefix="uc1" TagName="Nav_admin" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link href="/CSS/Cad_disciplina.css" rel="stylesheet">
    <title></title>
</head>
<body>
    <form class="form-horizontal" id="form1" runat="server">
        <uc1:Nav_admin runat="server" ID="Nav_admin" />
        <fildset>
            <div class="card panel-primary">
                <div class="bg-primary card-header">Cadastro  Professor</div>
            </div>

            <div class="card card-header">
                <div class="col-sm-10">
                    <div class="form-group  row">

                        <%--<div class="form-group col-sm-1">
                            <label for="Add_professor_id">Id professor</label>
                            <input type="text" class="form-control" id="Add_professor_id" placeholder="">
                        </div>--%>

                        <div class="form-group col-sm-8">
                            <label for="txtNome">Nome</label>
                            <asp:TextBox runat="server" ID="txtNome" CssClass="form-control" placeholder=""  required="" type="text"/>
                        </div>

                    </div>

                    <div class="form-group  row">

                        <div class="form-group col-sm-8">
                            <label for="txtEndereco">Endereço</label>
                            <asp:TextBox runat="server" ID="txtEndereco" CssClass="form-control" placeholder=""  required="" type="text"/>
                        </div>

                        <div class="form-group col-sm-1">
                            <label for="txtNumero">N°</label>
                            <asp:TextBox runat="server" ID="txtNumero" CssClass="form-control" placeholder=""  required="" type="text"/>
                        </div>

                        <div class="form-group col-sm-2">
                            <label for="txtTelefone">Telefone</label>
                            <asp:TextBox runat="server" ID="txtTelefone" CssClass="form-control" placeholder=""  required="" type="text"/>
                        </div>

                        <div class="form-group col-sm-2">
                            <label for="txtEmail">Email</label>
                            <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" placeholder=""  required="" type="text"/>
                        </div>

                        <div class="form-group col-sm-2">
                            <label for="txtDisciplina">Disciplina</label>
                            <asp:TextBox runat="server" ID="txtDisciplina" CssClass="form-control" placeholder=""  required="" type="text"/>
                        </div>

                        <div class="form-group col-sm-2">
                            <label for="txtCampus">Campus</label>
                            <asp:TextBox runat="server" ID="txtCampus" CssClass="form-control" placeholder=""  required="" type="text"/>
                        </div>

                    </div>



                    <div class="d-flex flex-row-reverse">
                        <button type="button" class="btn btn-danger p-6 ml-4">Exluir</button>
                        <asp:Button Text="Cadastrar" runat="server" CssClass="btn btn-success" ID="btnCadastrar" OnClick="btn_cadastra_professor_Click"/>
                    </div>

                </div>
                </div>
          

        </fildset>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>
</html>

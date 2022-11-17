﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro_professor.aspx.cs" Inherits="APS.Cadastro_professor" %>

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

                        <div class="form-group col-sm-1">
                            <label for="Add_professor_id">Id professor</label>
                            <input type="text" class="form-control" id="Add_professor_id" placeholder="">
                        </div>

                        <div class="form-group col-sm-8">
                            <label for="Add_diciplina_professor_nome">Nome</label>
                            <input type="text" class="form-control" id="Add_diciplina_professor_nome" placeholder="">
                        </div>

                    </div>

                    <div class="form-group  row">

                        <div class="form-group col-sm-8">
                            <label for="Add_professor_end">Endereço</label>
                            <input type="text" class="form-control" id="Add_professor_end" placeholder="">
                        </div>

                        <div class="form-group col-sm-1">
                            <label for="Add_professor_end_num">N°</label>
                            <input type="text" class="form-control" id="Add_professor_end_num" placeholder="">
                        </div>

                        <div class="form-group col-sm-2">
                            <label for="Add_diciplina_professor_tel">Telefone</label>
                            <input type="text" class="form-control" id="Add_diciplina_professor_tel" placeholder="">
                        </div>

                    </div>



                    <div class="d-flex flex-row-reverse">
                        <button type="button" class="btn btn-danger p-6 ml-4">Exluir</button>
                        <button type="button" class="btn btn-success">Cadastrar</button>
                    </div>

                </div>
                </div>
          

        </fildset>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>
</html>

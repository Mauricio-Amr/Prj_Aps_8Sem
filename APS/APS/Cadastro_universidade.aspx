<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro_universidade.aspx.cs" Inherits="APS.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link href="/CSS/Cad_universidade.css" rel="stylesheet">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Cad Universidade</title>
</head>
<body>
    <form class="form-horizontal" id="form1" runat="server">
        <fildset>
            <div class="card panel-primary">
                <div class="bg-primary card-header">Cadastro do Universidade</div>
            </div>

            <div class="card card-header">
                <div class="form-group row">

                    <label class="col-sm-1 col-form-label text-right" for="Campus">
                        Campus
                    </label>
                    <div class="col-sm-8">
                        <input id="Campus" name="Campus" placeholder="" class="form-control " required="" type="text">
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-1 col-form-label text-right" for="Nome_uni">
                        Nome
                    </label>
                    <div class="col-sm-8">
                        <input id="Nome" name="Campus" placeholder="" class="form-control " required="" type="text">
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-1 col-form-label text-right" for="Cnpj_uni">
                        Cnpj
                    </label>
                    <div class="col-sm-8">
                        <input id="Cnpj" name="Campus" placeholder="" class="form-control " required="" type="text">
                    </div>
                </div>

            </div>

            <div class="card card-header">

                <div class="form-group row">
                    <label class="col-sm-1 col-form-label text-right" for="Endereco">
                        Endereço
                    </label>
                    <div class="col-sm-5">
                        <input id="Endereco" name="Campus" placeholder="" class="form-control " required="" type="text">
                    </div>

                    <label class="col-sm-1 col-form-label text-right" for="Endereco">
                        N°
                    </label>
                    <div class="col-sm-2">
                        <input id="Numero" name="Campus" placeholder="" class="form-control " required="" type="text">
                    </div>
                </div>

            </div>

            <div class="card card-header">
                <div class="form-group row">
                    <label class="col-sm-1 col-form-label text-right" for="Tel_uni">
                        Telefone
                    </label>
                    <div class="col-sm-8">
                        <input id="Tel_uni" name="Campus" placeholder="" class="form-control " required="" type="text">
                    </div>
                </div>
            </div>

            <div class="card card-header ">
                <!--Aqui sera alterado  pela Dom -->
                <div class=" form-group row">
                    <label class="col-sm-2 col-form-label text-right">Adicionar curso</label>
                </div>
                <div class="form-group row">
                    <div class=" d-flex align-items-end">
                        <button type="button" class="btn btn-primary ">
                            <h1>+</h1>
                        </button>
                    </div>
                    <div class="col-sm-8">
                        <input id="Add_curso" name="Add_curso" placeholder="" class="form-control" required="" type="text" />
                    </div>
                </div>
                <!--ate aqui  -->
            </div>

            <div class="card card-header">
                <div class="d-flex flex-row-reverse">
                    <button type="button" class ="btn btn-success px-md-3 ml-3 ">Cadastrar</button>
                    <button type="button" class ="btn btn-danger px-md-4">Excluir</button>
                    
                </div>

            </div>
            
        </fildset>
    </form>
</body>
</html>

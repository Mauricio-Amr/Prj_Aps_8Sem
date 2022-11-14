<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro_diciplina.aspx.cs" Inherits="APS.Cadastro_diciplina" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link href="/CSS/Cad_disciplina.css" rel="stylesheet">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>Cad_diciplina</title>
</head>
<body>

    <form class="form-horizontal" id="form1" runat="server">
        <fildset>
            <div class="card panel-primary">
                <div class="bg-primary card-header">Cadastro  diciplina</div>
            </div>

            <div class="card card-header">
                <div class="col-sm-10">
                    <div class="form-group row">

                        <div class="col-sm-2">
                            <input type="text" class="form-control" placeholder="Id Curso" />

                        </div>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" placeholder="Curso " />
                        </div>

                        <div class="d-flex flex-row-reverse">
                            <button class="btn btn-primary ">procurar</button>
                        </div>

                    </div>
                </div>
            </div>

            <!-- essa deve ser  fornecida pela dom assim que clicar em procurar -->
            <div class="card card-header">
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Diciplina</th>
                            <th scope="col">Categoria</th>
                            <th scope="col">Carga Hr</th>
                            <th scope="col">Professor</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>dasdasd</td>
                            <td>dasdasd</td>
                            <td>9999</td>
                            <td>dasdasd</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>adsdas</td>
                            <td>asdasdas</td>
                            <td>9998</td>
                            <td>dasdsa</td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>dasdasd</td>
                            <td>dasdasd</td>
                            <td>@9997</td>
                            <td>sdasdasd</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- fornecer pela dom acima -->

            <div class="card card-header">
                <div class="col-sm-12">
                    <div class="form-group row">

                        <div class="form-group col-sm-8">
                            <label for="Add_diciplina">Diciplina</label>
                            <input type="text" class="form-control" id="Add_diciplina" placeholder="">
                        </div>

                        <div class="form-group">
                            <label for="Add_diciplina_categoria">Categoria</label>
                            <input type="text" class="form-control" id="Add_diciplina_categoria" placeholder="">
                        </div>

                        

                    </div>

                    <div class="form-group row col-sm-8">
                        <div class="form-group col-sm-3">
                            <label for="Add_diciplina_carga_hr">Carga Horaria</label>
                            <input type="text" class="form-control" id="Add_diciplina_carga_hr" placeholder="">
                        </div>

                        <div class="form-group col-sm-8">
                            <label for="Add_diciplina_professor">Professor</label>
                            <input type="text" class="form-control" id="Add_diciplina_professor" placeholder="">
                        </div>

                        
                    </div>

                    <div class ="d-flex flex-row-reverse">
                        <button type="button" class="btn btn-danger p-6 ml-4">Exluir</button>
                        <button type="button" class="btn btn-success">Cadastrar</button>
                    </div>

                </div>

            </div>



        </fildset>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prof_registro.aspx.cs" Inherits="APS.Prof_registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link href="/CSS/Cad_disciplina.css" rel="stylesheet">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form class="form-horizontal" id="form1" runat="server">
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
                            <h2><span class="badge badge-info">Nome</span></h2>
                        </div>

                        <div class="col-sm-11">
                            <h2><span class="badge badge-info">email</span></h2>
                        </div>

                        <div class="col-sm-4">
                            <h3>
                                <span class="badge badge-info">registro</span>
                            </h3>
                        </div>

                        <div class="col-sm-4">
                            <h3>
                                <span class="badge badge-info">data</span>
                            </h3>
                        </div>

                    </div>
                </div>
            </div>

            <div class="card card-header">


                <div class="form-group col-sm-1">
                    <label for="sel1">Select list:</label>
                    <select class="form-control" id="sel1">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                    </select>
                </div>

                <div class=" card card-header">

                    <div class="col-sm-10">
                        <table class="table">
                            <thead class="thead-dark">
                                <tr>
                                    <th>Nome</th>
                                    <th>Sobrenome</th>
                                    <th>Email</th>
                                    <th class="col-sm-2">Np1</th>
                                    <th class="col-sm-2">Np2</th>
                                    <th>Salvar</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>John</td>
                                    <td>Doe</td>
                                    <td>john@example.com</td>
                                    <td ><input type="NP1" class="form-control" id="inputNp1" placeholder="NP1"></td>
                                    <td><input type="Np2" class="form-control " id="inputNP2" placeholder="NP2"></td>
                                    <td><button class="btn btn-primary" type="submit">Salvar</button></td>
                                </tr>

                                <tr>
                                    <td>Mary</td>
                                    <td>Moe</td>
                                    <td>mary@example.com</td>
                                     <td ><input type="NP1" class="form-control" id="inputNp1" placeholder="NP1"></td>
                                    <td><input type="Np2" class="form-control " id="inputNP2" placeholder="NP2"></td>
                                    <td><button class="btn btn-primary" type="submit">Salvar</button></td>
                                </tr>
                                <tr>
                                    <td>July</td>
                                    <td>Dooley</td>
                                    <td>july@example.com</td>
                                     <td ><input type="NP1" class="form-control" id="inputNp1" placeholder="NP1"></td>
                                    <td><input type="Np2" class="form-control " id="inputNP2" placeholder="NP2"></td>
                                    <td><button class="btn btn-primary" type="submit">Salvar</button></td>
                                </tr>
                            </tbody>
                    </div>
                </div>


            </div>





        </fildset>
    </form>
</body>
</html>

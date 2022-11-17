<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aluno_registro.aspx.cs" Inherits="APS.Aluno_registro" %>

<%@ Register Src="~/Ascx/Nav_aluno.ascx" TagPrefix="uc1" TagName="Nav_aluno" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link href="/CSS/Cad_disciplina.css" rel="stylesheet">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form class="form-horizontal" id="form2" runat="server">

        <uc1:Nav_aluno runat="server" ID="Nav_aluno" />
        <fildset>
            <div class="card panel-primary">
                <div class="bg-primary card-header">Aluno Registro</div>
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
                <div class="form-group row">

                    <div class="card" style="width: 20rem; height: 25rem">
                        <h1 class="card-header">Materia</h1>
                        <div class="card-body">
                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Np1 :</span></h2>
                                <h2 class="pl-3">Nota</h2>
                            </div>

                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Np2 : </span></h2>
                                <h2 class="pl-3">Nota</h2>
                            </div>

                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Faltas : </span></h2>
                                <h2 class="pl-3">Faltas</h2>
                            </div>

                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Media : </span></h2>
                                <h2 class="pl-3">Nota</h2>
                            </div>

                             <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Situação : </span></h2>
                                <h2 class="pl-3">Situação</h2>
                            </div>
                        </div>
                    </div>

                    
                    <div class="card" style="width: 20rem; height: 25rem">
                        <h1 class="card-header">Materia</h1>
                        <div class="card-body">
                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Np1 :</span></h2>
                                <h2 class="pl-3">Nota</h2>
                            </div>

                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Np2 : </span></h2>
                                <h2 class="pl-3">Nota</h2>
                            </div>

                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Faltas : </span></h2>
                                <h2 class="pl-3">Faltas</h2>
                            </div>

                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Media : </span></h2>
                                <h2 class="pl-3">Nota</h2>
                            </div>

                             <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Situação : </span></h2>
                                <h2 class="pl-3">Situação</h2>
                            </div>
                        </div>
                    </div>

                    
                    <div class="card" style="width: 20rem; height: 25rem">
                        <h1 class="card-header">Materia</h1>
                        <div class="card-body">
                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Np1 :</span></h2>
                                <h2 class="pl-3">Nota</h2>
                            </div>

                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Np2 : </span></h2>
                                <h2 class="pl-3">Nota</h2>
                            </div>

                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Faltas : </span></h2>
                                <h2 class="pl-3">Faltas</h2>
                            </div>

                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Media : </span></h2>
                                <h2 class="pl-3">Nota</h2>
                            </div>

                             <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Situação : </span></h2>
                                <h2 class="pl-3">Situação</h2>
                            </div>
                        </div>
                    </div>

                    
                    <div class="card" style="width: 20rem; height: 25rem">
                        <h1 class="card-header">Materia</h1>
                        <div class="card-body">
                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Np1 :</span></h2>
                                <h2 class="pl-3">Nota</h2>
                            </div>

                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Np2 : </span></h2>
                                <h2 class="pl-3">Nota</h2>
                            </div>

                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Faltas : </span></h2>
                                <h2 class="pl-3">Faltas</h2>
                            </div>

                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Media : </span></h2>
                                <h2 class="pl-3">Nota</h2>
                            </div>

                             <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Situação : </span></h2>
                                <h2 class="pl-3">Situação</h2>
                            </div>
                        </div>
                    </div>

                    
                    <div class="card" style="width: 20rem; height: 25rem">
                        <h1 class="card-header">Materia</h1>
                        <div class="card-body">
                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Np1 :</span></h2>
                                <h2 class="pl-3">Nota</h2>
                            </div>

                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Np2 : </span></h2>
                                <h2 class="pl-3">Nota</h2>
                            </div>

                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Faltas : </span></h2>
                                <h2 class="pl-3">Faltas</h2>
                            </div>

                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Media : </span></h2>
                                <h2 class="pl-3">Nota</h2>
                            </div>

                             <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Situação : </span></h2>
                                <h2 class="pl-3">Situação</h2>
                            </div>
                        </div>
                    </div>

                    
                    <div class="card" style="width: 20rem; height: 25rem">
                        <h1 class="card-header">Materia</h1>
                        <div class="card-body">
                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Np1 :</span></h2>
                                <h2 class="pl-3">Nota</h2>
                            </div>

                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Np2 : </span></h2>
                                <h2 class="pl-3">Nota</h2>
                            </div>

                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Faltas : </span></h2>
                                <h2 class="pl-3">Faltas</h2>
                            </div>

                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Media : </span></h2>
                                <h2 class="pl-3">Nota</h2>
                            </div>

                             <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Situação : </span></h2>
                                <h2 class="pl-3">Situação</h2>
                            </div>
                        </div>
                    </div>


                    
                    <div class="card" style="width: 20rem; height: 25rem">
                        <h1 class="card-header">Materia</h1>
                        <div class="card-body">
                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Np1 :</span></h2>
                                <h2 class="pl-3">Nota</h2>
                            </div>

                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Np2 : </span></h2>
                                <h2 class="pl-3">Nota</h2>
                            </div>

                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Faltas : </span></h2>
                                <h2 class="pl-3">Faltas</h2>
                            </div>

                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Media : </span></h2>
                                <h2 class="pl-3">Nota</h2>
                            </div>

                             <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Situação : </span></h2>
                                <h2 class="pl-3">Situação</h2>
                            </div>
                        </div>
                    </div>

                    
                    <div class="card" style="width: 20rem; height: 25rem">
                        <h1 class="card-header">Materia</h1>
                        <div class="card-body">
                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Np1 :</span></h2>
                                <h2 class="pl-3">Nota</h2>
                            </div>

                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Np2 : </span></h2>
                                <h2 class="pl-3">Nota</h2>
                            </div>

                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Faltas : </span></h2>
                                <h2 class="pl-3">Faltas</h2>
                            </div>

                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Media : </span></h2>
                                <h2 class="pl-3">Nota</h2>
                            </div>

                             <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Situação : </span></h2>
                                <h2 class="pl-3">Situação</h2>
                            </div>
                        </div>
                    </div>

                    
                    <div class="card" style="width: 20rem; height: 25rem">
                        <h1 class="card-header">Materia</h1>
                        <div class="card-body">
                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Np1 :</span></h2>
                                <h2 class="pl-3">Nota</h2>
                            </div>

                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Np2 : </span></h2>
                                <h2 class="pl-3">Nota</h2>
                            </div>

                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Faltas : </span></h2>
                                <h2 class="pl-3">Faltas</h2>
                            </div>

                            <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Media : </span></h2>
                                <h2 class="pl-3">Nota</h2>
                            </div>

                             <div class="form-group row">
                                <h2 class="pl-2"><span class="badge badge-info">Situação : </span></h2>
                                <h2 class="pl-3">Situação</h2>
                            </div>
                        </div>
                    </div>


                </div>
            
    </form>
     <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>
</html>

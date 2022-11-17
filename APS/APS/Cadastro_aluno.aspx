﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro_aluno.aspx.cs" Inherits="APS.WebForm1" %>


<%@ Register Src="~/Ascx/Nav_aluno.ascx" TagPrefix="uc1" TagName="Nav_aluno" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous"/>
  
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form class="form-horizontal" id="form1" runat="server">
   
        
        <fieldset>
            <div class="card card-header">
                <div class="card panel-primary">
                    <div class="bg-primary card-header">Cadastro do Aluno</div>

                    <div class="panel-body">
                        <div class="form-group">

                            <div class="col-md-11  control-label">
                                <p class="text-lg-right">
                                    <h11>*</h11>
                                    Campo Obrigatório
                           
                                </p>
                            </div>
                        </div>
                    </div>


                    <!-- Text input-->
                    <div class="card-header">
                        <div class="form-group row">
                            <label class="col-sm-1 col-form-label text-right" for="Nome">
                                Nome
                                <h11>*</h11></label>
                            <div class="col-sm-10">
                                <input id="Nome" name="Nome" placeholder="" class="form-control " required="" type="text">
                            </div>
                        </div>




                        <!-- Prepended text-->
                        <div class="form-group row">
                            <label class="col-md-1 control-label text-right" for="prependedtext">
                                Telefone
                                <h11>*</h11></label>
                            <div class="col-md-2">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                    <input id="prependedtext" name="prependedtext" class="form-control" placeholder="XX XXXXX-XXXX" required="" type="text" maxlength="13" pattern="\[0-9]{2}\ [0-9]{4,6}-[0-9]{3,4}$"
                                        onkeypress="formatar('## #####-####', this)">
                                </div>
                            </div>


                        </div>

                        <!-- Prepended text-->
                        <div class="form-group row">
                            <label class="col-md-1 control-label text-right" for="prependedtext">
                                Email
                                <h11>*</h11></label>
                            <div class="col-md-5">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                    <input id="prependedtext" name="prependedtext" class="form-control" placeholder="email@email.com" required="" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$">
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Search input-->
                    <div class="card-header">
                        <div class="form-group row">
                            <label class="col-md-1 control-label text-right" for="CEP">
                                CEP
                                <h11>*</h11></label>
                            <div class="col-md-2">
                                <input id="cep" name="cep" placeholder="Apenas números" class="form-control input-md" required="" value="" type="search" maxlength="8" pattern="[0-9]+$">
                            </div>
                            <div class="col-md-2">
                                <button type="button" class="btn btn-primary" onclick="pesquisacep(cep.value)">Pesquisar</button>
                            </div>
                        </div>

                        <!-- Prepended text-->
                        <div class="form-group row">
                            <label class="col-md-1 control-label text-right" for="prependedtext">Endereço</label>
                            <div class="col-md-4">
                                <div class="input-group">
                                    <span class="input-group-addon text-center">Rua  </span>
                                    <input id="rua" name="rua" class="form-control" placeholder="" required="" readonly="readonly" type="text">
                                </div>

                            </div>
                            <div class="col-md-2">
                                <div class="input-group">
                                    <span class="input-group-addon">Nº
                                        <h11>*</h11></span>
                                    <input id="numero" name="numero" class="form-control" placeholder="" required="" type="text">
                                </div>

                            </div>

                            <div class="col-md-3">
                                <div class="input-group">
                                    <span class="input-group-addon">Bairro</span>
                                    <input id="bairro" name="bairro" class="form-control" placeholder="" required="" readonly="readonly" type="text">
                                </div>

                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-sm-1 control-label" for="prependedtext"></label>
                            <div class="col-md-4">
                                <div class="input-group">
                                    <span class="input-group-addon">Cidade</span>
                                    <input id="cidade" name="cidade" class="form-control" placeholder="" required="" readonly="readonly" type="text">
                                </div>

                            </div>

                            <div class="col-md-1">
                                <div class="input-group">
                                    <span class="input-group-addon">Estado</span>
                                    <input id="estado" name="estado" class="form-control" placeholder="" required="" readonly="readonly" type="text">
                                </div>

                            </div>
                        </div>

                    </div>


                    <div class="card-header">

                        <div class="form-group row">

                            <label class="col-sm-1 control-label" for="prependedtext"></label>
                            <div class="col-md-4">
                                <div class="input-group">
                                   
                                    <div class="form-group">
                                        <label for="sel1">Lista de cursos:</label>
                                        <select class="form-control" id="sel1">
                                            <option>Ciencias da computação</option>
                                            <option>Engenharia da computação</option>
                                            <option>Mecatrocnica</option>
                                            <option>Eletronica</option>
                                        </select>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>




                    <div class="card-header">
                        <!-- Button (Double) -->
                        <div class="form-group row  ">

                            <div class="col-md-10 d-flex flex-row-reverse">
                                <button id="Cadastrar" name="Cadastrar" class="btn btn-success" type="Submit">Cadastrar</button>
                                <button id="Cancelar" name="Cancelar" class="btn btn-danger" type="Reset">Cancelar</button>

                            </div>
                        </div>
                    </div>
                </div>
        </fieldset>

    </form>

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>
</html>

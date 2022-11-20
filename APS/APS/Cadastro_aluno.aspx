<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro_aluno.aspx.cs" Inherits="APS.WebForm1" %>


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
                    </div>
                </div>
                
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
                                 <asp:TextBox runat="server" ID="CA_Nome" CssClass="form-control" placeholder=""  required="" type="text"/>
                                
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
                                   <asp:TextBox runat="server" ID="CA_telefone" CssClass="form-control" placeholder="XX XXXXX-XXXX" required="" type="text" maxlength="13" pattern="\[0-9]{2}\ [0-9]{4,6}-[0-9]{3,4}$"
                                        onkeypress="formatar('## #####-####', this)"/>
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
                                     <asp:TextBox runat="server" ID="CA_email" CssClass="form-control" placeholder="email@email.com" required="" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"/>
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
                               <asp:TextBox runat="server" ID="Ca_cep" CssClass="form-control" placeholder="Apenas números" class="form-control input-md" required="" value="" type="search" maxlength="8" pattern="[0-9]+$"/>
                            </div>
                           <!-- <div class="col-md-2">
                                <button type="button" class="btn btn-primary" onclick="pesquisacep(cep.value)">Pesquisar</button>
                            </div>-->
                        </div>

                        <!-- Prepended text-->
                        <div class="form-group row">
                            <label class="col-md-1 control-label text-right" for="prependedtext">Endereço</label>
                            <div class="col-md-4">
                                <div class="input-group">
                                    <span class="input-group-addon text-center">Rua  </span>
                                    <asp:TextBox runat="server" ID="CA_rua" CssClass="form-control" placeholder=""  required="" type="text"/>
                                    
                                </div>

                            </div>
                            <div class="col-md-2">
                                <div class="input-group">
                                    <span class="input-group-addon">Nº
                                        <h11>*</h11></span>
                                    <asp:TextBox runat="server" ID="CA_num" CssClass="form-control" placeholder=""  required="" type="text"/>
                               
                                </div>

                            </div>

                            <div class="col-md-3">
                                <div class="input-group">
                                    <span class="input-group-addon">Bairro</span>
                                    <asp:TextBox runat="server" ID="CA_bairro" CssClass="form-control" placeholder=""  required="" type="text"/>
                                    
                                </div>

                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-sm-1 control-label" for="prependedtext"></label>
                            <div class="col-md-4">
                                <div class="input-group">
                                    <span class="input-group-addon">Cidade</span>
                                    <asp:TextBox runat="server" ID="CA_cidade" CssClass="form-control" placeholder=""  required="" type="text"/>
                                   <!-- <input id="cidade" name="cidade" class="form-control" placeholder="" required="" readonly="readonly" type="text"> -->
                                </div>

                            </div>

                            <div class="col-md-1">
                                <div class="input-group">
                                    <span class="input-group-addon">Estado</span>
                                    <asp:TextBox runat="server" ID="CA_estado" CssClass="form-control" placeholder=""  required="" type="text"/>
                                   <!-- <input id="estado" name="estado" class="form-control" placeholder="" required="" readonly="readonly" type="text">-->
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
                                    
                                        <asp:DropDownList ID="CA_curso" runat="server" CssClass="form-control" >

                                 <asp:ListItem Text="Ciencia da computação" Value="Cie_comp" />
                            <asp:ListItem Text="Engenharia da computação" Value="Eng_com" />
                            <asp:ListItem Text="Engenharia eletronica" Value="Eng_elet" />
                          

                                    </asp:DropDownList>
 

                                        <!--<select class="form-control" id="sel1">
                                            <option>Ciencias da computação</option>
                                            <option>Engenharia da computação</option>
                                            <option>Mecatrocnica</option>
                                            <option>Eletronica</option>
                                        </select>-->
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>




                    <div class="card-header">
                        <!-- Button (Double) -->
                        <div class="form-group row  ">

                            <div class="col-md-10 d-flex flex-row-reverse pl-5">
                                <div class="mx-auto px-4 ">

                                <button id="Cadastrar" name="Cadastrar" class="btn btn-success px-4 pr-3 " Onclick ="btn_cadastra_aluno_Click">Cadastrar</button>

                               
                                    <button id="Cancelar" name="Cancelar" class="btn btn-danger px-4 pl-3" type="Reset">Cancelar</button>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
        </fieldset>
        </fieldset>

    </form>

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    <script src=".\JS\Cad_aluno.js"
</body>
</html>

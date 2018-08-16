<%-- 
    Document   : ConsultaTratos
    Created on : 5/04/2018, 05:56:49 PM
    Author     : Juan Jose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Trato</title>
        <!-- Bootstrap core CSS-->
        <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
        <!-- Custom fonts for this template-->
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <!-- Custom styles for this template-->
        <link href="css/sb-admin.css" rel="stylesheet">

        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <link href="ccs/sweetalert.css" rel="stylesheet" type="text/css"/>
        <script src="js/sweetalert.min.js" type="text/javascript"></script>

    </head>

</head>
<body class="bg-white">
    <%

        String stImporte = "";
        String stNombreDeTrato = "";
        String stFechaDeCierre = "";
        String stNombreDeCuenta = "";
        String stFase = "";
        String stTipo = "";
        String stProbabilidad = "";
        String stSiguientePaso = "";
        String stIngresosEsperados = "";
        String stFuenteDePosibleCliente = "";
        String stFuenteDeCampaña = "";
        String stNombreDeContacto = "";
        String stDescripcion = "";

        stImporte = request.getParameter("txtImporte") != null//Condicion 
                ? request.getParameter("txtImporte").toString()//Si Se Cumple
                : "";//Si No Se Cumple 

        stNombreDeTrato = request.getParameter("txtNombreDeTrato") != null//Condicion 
                ? request.getParameter("txtNombreDeTrato").toString()//Si Se Cumple
                : "";//Si No Se Cumple 

        stFechaDeCierre = request.getParameter("txtFechaDeCierre") != null//Condicion 
                ? request.getParameter("txtFechaDeCierre").toString()//Si Se Cumple
                : "";//Si No Se Cumple 

        stNombreDeCuenta = request.getParameter("txtNombreDeCuenta") != null//Condicion 
                ? request.getParameter("txtNombreDeCuenta").toString()//Si Se Cumple
                : "";//Si No Se Cumple 

        stFase = request.getParameter("txtFase") != null//Condicion 
                ? request.getParameter("txtFase").toString()//Si Se Cumple
                : "";//Si No Se Cumple 

        stTipo = request.getParameter("txtTipo") != null//Condicion 
                ? request.getParameter("txtTipo").toString()//Si Se Cumple
                : "";//Si No Se Cumple 

        stProbabilidad = request.getParameter("txtProbabilidad") != null//Condicion 
                ? request.getParameter("txtProbabilidad").toString()//Si Se Cumple
                : "";//Si No Se Cumple

        stSiguientePaso = request.getParameter("txtSiguientePaso") != null//Condicion 
                ? request.getParameter("txtSiguientePaso").toString()//Si Se Cumple
                : "";//Si No Se Cumple

        stIngresosEsperados = request.getParameter("txtIngresosEsperados") != null//Condicion 
                ? request.getParameter("txtIngresosEsperados").toString()//Si Se Cumple
                : "";//Si No Se Cumple

        stFuenteDePosibleCliente = request.getParameter("txtFuenteDePosibleCliente") != null//Condicion 
                ? request.getParameter("txtFuenteDePosibleCliente").toString()//Si Se Cumple
                : "";//Si No Se Cumple

        stFuenteDeCampaña = request.getParameter("txtFuenteDeCampaña") != null//Condicion 
                ? request.getParameter("txtFuenteDeCampaña").toString()//Si Se Cumple
                : "";//Si No Se Cumple

        stNombreDeContacto = request.getParameter("txtNombreDeContacto") != null//Condicion 
                ? request.getParameter("txtNombreDeContacto").toString()//Si Se Cumple
                : "";//Si No Se Cumple

        stDescripcion = request.getParameter("txtDescripcion") != null//Condicion 
                ? request.getParameter("txtDescripcion").toString()//Si Se Cumple
                : "";//Si No Se Cumple
    %>
    <div class="container">
        <div class=" mx-auto mt-5">
            <div class="card-header">Crear Trato</div>
            <div class="card-body">
                <form>
                    <!--Esto es una Fila-->
                    <div class="form-group">
                        <div class="form-row">
                            <!--Esto es una Columna-->
                            <div class="col-md-6">
                                <input type="submit" name="btnGuardar" value="Guardar" class="btn btn-primary"/>  
                                <input type="submit" name="btnModificar" value="Modificar" class="btn btn-primary"/>  
                                <input type="submit" name="btnCancelar" value="Cancelar" class="btn btn-primary"/>   
                                <input type="submit" name="btnVolver" value="Volver" class="btn btn-primary"/>  
                            </div>                                                                
                        </div>                            
                    </div>
                    <!--Esto es una Fila-->
                    <div class="form-group">
                        <div class="form-row">
                            <h1>Informacion De Trato</h1>
                        </div>
                    </div>  
                    <!--Esto es una Fila-->
                    <div class="form-group">
                        <div class="form-row">
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblImporte">Importe</label>
                                <input type="text" 
                                       placeholder="Importe" 
                                       name="txtImporteConsulta" 
                                       class="form-control" 
                                       value="<%= stImporte%>" 
                                       readonly=""/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblNombreDeTrato">Nombre De Trato</label>
                                <input type="text" 
                                       placeholder="Nombre De Trato" 
                                       name="txtNombreDeTratoConsulta" 
                                       class="form-control" 
                                       value="<%= stNombreDeTrato%>" 
                                       readonly=""/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblFechaDeCierre">Fecha De Cierre</label>
                                <input type="text" 
                                       placeholder="dd/mm/yyyy" 
                                       name="txtFechaDeCierreConsulta"
                                       class="form-control" 
                                       value="<%= stFechaDeCierre%>" 
                                       readonly=""/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblNombreDeCuenta">Nombre De Cuenta</label>
                                <input type="text" 
                                       placeholder="Nombre De Cuenta" 
                                       name="txtNombreDeCuentaConsulta" 
                                       class="form-control" 
                                       value="<%= stNombreDeCuenta%>" 
                                       readonly=""/>
                            </div>
                        </div>
                    </div>
                    <!--Esto es una Fila-->
                    <div class="form-group">
                        <div class="form-row">
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblFase">Fase</label>
                                <i class="fa fa-search-minus"></i>
                                <select class="form-control" name="ddlFaseConsulta" disabled="">
                                    <option value="1" <%= stFase.equals("1") ? "selected" : ""%>>-None-</option>
                                    <option value="2" <%= stFase.equals("2") ? "selected" : ""%> >Clasificacion</option>
                                    <option value="3" <%= stFase.equals("3") ? "selected" : ""%>>Necesita Analisis</option>
                                    <option value="4" <%= stFase.equals("4") ? "selected" : ""%>>Propuesta De Valor</option>
                                    <option value="5" <%= stFase.equals("5") ? "selected" : ""%>>Identificar Responsables</option>
                                    <option value="6" <%= stFase.equals("6") ? "selected" : ""%>>Cotizacion De Propuesta/Precio</option>
                                </select>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblTipo">Tipo</label>
                                <i class="fa fa-search-minus"></i>
                                <select class="form-control" name="ddlTipoConsulta" disabled="">
                                    <option value="1"<%= stTipo.equals("1") ? "selected" : ""%> >-None-</option>
                                    <option value="2"<%= stTipo.equals("2") ? "selected" : ""%> >Negocios Existentes</option>
                                    <option value="3"<%= stTipo.equals("3") ? "selected" : ""%> >Nuevo Negocio</option>
                                </select>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblProbabilidad">Probabilidad</label>
                                <input type="text" 
                                       placeholder="Probabilidad" 
                                       name="txtProbabilidadConsulta" 
                                       class="form-control" 
                                       value="<%= stProbabilidad%>" 
                                       readonly=""/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblSiguientePaso">Siguiente Paso</label>
                                <input type="text" 
                                       placeholder="Siguiente Paso" 
                                       name="txtSiguientePasoConsulta" 
                                       class="form-control" 
                                       value="<%= stSiguientePaso%>" 
                                       readonly=""/>
                            </div>
                        </div>
                    </div>
                    <!--Esto es una Fila-->
                    <div class="form-group">
                        <div class="form-row">
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblIngresosEsperados">Ingresos Esperados</label>
                                <input type="text" 
                                       placeholder="Ingresos Esperados" 
                                       name="txtIngresosEsperadosConsulta" 
                                       class="form-control" 
                                       value="<%= stIngresosEsperados%>" 
                                       readonly=""/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblFuenteDePosibleCliente">Fuente De Posible Cliente</label>
                                <i class="fa fa-search-minus"></i>
                                <select class="form-control" name="ddlFuenteDePosibleClienteConsulta" disabled="">
                                    <option value="1"<%= stFuenteDePosibleCliente.equals("1") ? "selected" : ""%> >-None-</option>
                                    <option value="2"<%= stFuenteDePosibleCliente.equals("2") ? "selected" : ""%> >Aviso</option>
                                    <option value="3"<%= stFuenteDePosibleCliente.equals("3") ? "selected" : ""%> >Llamada No Solicitada</option>
                                    <option value="4"<%= stFuenteDePosibleCliente.equals("4") ? "selected" : ""%> >Recomendacion De Empleado</option>
                                    <option value="5"<%= stFuenteDePosibleCliente.equals("5") ? "selected" : ""%> >Recomendacion Externa</option>
                                    <option value="6"<%= stFuenteDePosibleCliente.equals("6") ? "selected" : ""%>>Tienda En Linea</option>
                                </select>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblFuenteDeCampaña">Fuente De Campaña</label>
                                <input type="text" 
                                       placeholder="Fuente De Campaña" 
                                       name="txtFuenteDeCampañaConsulta" 
                                       class="form-control"
                                       value="<%= stFuenteDeCampaña%>" 
                                       readonly=""/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblNombreDeContacto">Nombre De Contacto</label>
                                <input type="text" 
                                       placeholder="Nombre De Contacto" 
                                       name="txtNombreDeContactoConsulta" 
                                       class="form-control" 
                                       value="<%= stNombreDeContacto%>" 
                                       readonly=""/>
                            </div>
                        </div>
                        <!--Esto es una Fila-->
                        <div class="form-group">
                            <div class="form-row">
                                <!--Esto es una Columna-->
                                <div class="col-md-12">
                                    <label name="lblDescripcion">Descripcion</label>
                                    <input type="text" 
                                           placeholder="Descripcion" 
                                           name="txtDescripcionConsulta" 
                                           class="form-control"
                                           value="<%= stDescripcion%>" 
                                           readonly=""/>
                                </div>
                            </div>
                        </div> 
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
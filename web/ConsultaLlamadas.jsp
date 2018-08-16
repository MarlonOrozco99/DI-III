<%-- 
    Document   : ConsultaLlamadas
    Created on : 5/04/2018, 05:58:52 PM
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
        <title>Llamadas</title>
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
        String stNombreDeContacto = "";
        String stAsunto = "";
        String stPropositoDeLaLlamada = "";
        String stRelacionadoCon = "";
        String stTipoDeLlamada = "";
        String stLlamadaActual = "";
        String stLlamadaCompletada = "";
        String stProgramarLlamada = "";
        String stDescripcion = "";
        String stResultadoDeLaLlamada = "";

        stNombreDeContacto = request.getParameter("txtNombreDeContacto") != null//Condicion 
                ? request.getParameter("txtNombreDeContacto").toString()//Si Se Cumple
                : "";//Si No Se Cumple
        stAsunto = request.getParameter("txtAsunto") != null//Condicion 
                ? request.getParameter("txtAsunto").toString()//Si Se Cumple
                : "";//Si No Se Cumple
        stPropositoDeLaLlamada = request.getParameter("txtPropositoDeLaLlamada") != null//Condicion 
                ? request.getParameter("txtPropositoDeLaLlamada").toString()//Si Se Cumple
                : "";//Si No Se Cumple
        stRelacionadoCon = request.getParameter("ddlRelacionadoCon") != null//Condicion 
                ? request.getParameter("ddlelacionadoCon").toString()//Si Se Cumple
                : "";//Si No Se Cumple
        stTipoDeLlamada = request.getParameter("radTipoDeLlamada") != null//Condicion 
                ? request.getParameter("radTipoDeLlamada").toString()//Si Se Cumple
                : "";//Si No Se Cumple
        stLlamadaCompletada = request.getParameter("radLlamadaCompletada") != null//Condicion 
                ? request.getParameter("radLlamadaCompletada").toString()//Si Se Cumple
                : "";//Si No Se Cumple
        stProgramarLlamada = request.getParameter("radProgramarLlamada") != null//Condicion 
                ? request.getParameter("radProgramarLlamada").toString()//Si Se Cumple
                : "";//Si No Se Cumple
        stDescripcion = request.getParameter("txtDescripcion") != null//Condicion 
                ? request.getParameter("txtDescripcion").toString()//Si Se Cumple
                : "";//Si No Se Cumple
        stResultadoDeLaLlamada = request.getParameter("txtResultadoDeLaLlamada") != null//Condicion 
                ? request.getParameter("txtResultadoDeLaLlamada").toString()//Si Se Cumple
                : "";//Si No Se Cumple


    %>


    <div class="container">
        <div class=" mx-auto mt-5">
            <div class="card-header">Crear Llamada</div>
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
                            <h1>Crear Llamada</h1>
                        </div>
                    </div>  
                    <!--Esto es una Fila-->
                    <div class="form-group">
                        <div class="form-row">
                            <!--Esto es una Columna-->
                            <div class="col-md-6">
                                <label name="lblNombreDeContacto">Nombre De Contacto</label>
                                <input type="text" 
                                       placeholder="Nombre De Contacto" 
                                       name="txtNombreDeContactoConsulta" 
                                       class="form-control"  
                                       value="<%= stNombreDeContacto%>" 
                                       readonly=""/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-6">
                                <label name="lblAsunto">Asunto</label>
                                <input type="text" 
                                       placeholder="Asunto" 
                                       name="txtAsuntoConsulta" 
                                       class="form-control"
                                       value="<%= stAsunto%>" 
                                       readonly=""/>
                            </div>
                        </div>
                    </div>
                    <!--Esto es una Fila-->
                    <div class="form-group">
                        <div class="form-row">
                            <!--Esto es una Columna-->
                            <div class="col-md-6">
                                <label name="lblPropositoDeLaLlamada">Proposito De La Llamada</label>
                                <i class="fa fa-search-minus"></i>
                                <select class="form-control" name="ddlPropositoDeLaLlamadaConsulta" disabled="">
                                    <option value="1"<%=stPropositoDeLaLlamada.equals("1") ? "selected" : ""%>>Ninguno</option>
                                    <option value="2"<%=stPropositoDeLaLlamada.equals("2") ? "selected" : ""%>>Posible</option>
                                    <option value="3"<%=stPropositoDeLaLlamada.equals("3") ? "selected" : ""%>>Administrativo</option>
                                    <option value="4"<%=stPropositoDeLaLlamada.equals("4") ? "selected" : ""%>>Negociacion</option>
                                    <option value="5"<%=stPropositoDeLaLlamada.equals("5") ? "selected" : ""%>>Demostracion</option>
                                    <option value="6"<%=stPropositoDeLaLlamada.equals("6") ? "selected" : ""%>>Proyecto</option>
                                </select>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-6">
                                <label name="lblRelacionadoCon">Relacionado Con</label>
                                <i class="fa fa-search-minus"></i>
                                <select class="form-control" name="ddlRelacionadoConConsulta" disabled="">
                                    <option value="1" <%= stRelacionadoCon.equals("1") ? "selected" : ""%>>-None-</option>
                                    <option value="2" <%= stRelacionadoCon.equals("2") ? "selected" : ""%>>Posible Cliente</option>
                                    <option value="3" <%= stRelacionadoCon.equals("3") ? "selected" : ""%>>Contacto</option>
                                    <option value="4" <%= stRelacionadoCon.equals("4") ? "selected" : ""%>>Otros</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <!--Esto es una Fila-->
                    <div class="form-group">
                        <div class="form-row">
                            <!--Esto es una Columna-->
                            <div class="col-md-6">
                                <label name="lblTipoDeLlamada">Tipo De Llamada</label>
                                <input type="text" 
                                       placeholder="Tipo De Llamada" 
                                       name="txtTipoDeLlamadaConsulta" 
                                       class="form-control"
                                       value="<%= stTipoDeLlamada%>" 
                                       readonly=""/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-6">
                                <label>Detalles De La Llamada</label>
                                <br>
                                <label>
                                    Llamada Actual
                                    <input type="radio" class="form-control" name="radLlamadaActualConsulta" value="<%= stLlamadaActual%>" disabled=""/>                                           
                                </label>
                                <label>
                                    Llamada Completada
                                    <input type="radio" class="form-control" name="radLlamadaCompletadaConsulta" value="<%= stLlamadaCompletada%>" disabled=""/>                                           
                                </label>
                                <label>
                                    Programar Llamada
                                    <input type="radio" class="form-control" name="radProgramarLlamadaConsulta" value="<%= stProgramarLlamada%>" disabled=""/>                                           
                                </label>
                            </div>
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
                    <!--Esto es una Fila-->
                    <div class="form-group">
                        <div class="form-row">
                            <!--Esto es una Columna-->
                            <div class="col-md-12">
                                <label name="lblResultadoDeLaLlamada">Resultado De La Llamada</label>
                                <input type="text" 
                                       placeholder="Resultado De La Llamada" 
                                       name="txtResultadoDeLaLlamadaConsulta" 
                                       class="form-control" 
                                       value="<%= stResultadoDeLaLlamada%>" 
                                       readonly=""/>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
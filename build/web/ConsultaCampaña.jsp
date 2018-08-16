<%-- 
    Document   : ConsultaCampaña
    Created on : 5/04/2018, 06:00:32 PM
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
        <title>Consulta Campaña</title>
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

        String stTipo;
        String stNombreDeCampaña;
        String stEstado;
        String stFechaDeInicio;

        String stFechaDeFin;
        int inIngresosEsperados = 0;
        int inCostePresupuestado = 0;
        int inCosteReal = 0;

        String stRespuestaEsperada;
        int inNumerosEnviados = 0;
        String stDescripcion;

        stTipo = request.getParameter("ddlTipo") != null//Condicion 
                ? request.getParameter("ddlTipo").toString()//Si Se Cumple
                : "";//Si No Se Cumple
        stNombreDeCampaña = request.getParameter("txtNombreDeCampaña") != null//Condicion 
                ? request.getParameter("txtNombreDeCampaña").toString()//Si Se Cumple
                : "";//Si No Se Cumple
        stEstado = request.getParameter("ddlEstado") != null//Condicion 
                ? request.getParameter("ddlEstado").toString()//Si Se Cumple
                : "";//Si No Se Cumple
        stFechaDeInicio = request.getParameter("txtFechaDeInicio") != null//Condicion 
                ? request.getParameter("txtFechaDeInicio").toString()//Si Se Cumple
                : "";//Si No Se Cumple

        stFechaDeFin = request.getParameter("txtFechaDeFin") != null//Condicion 
                ? request.getParameter("txtFechaDeFin").toString()//Si Se Cumple
                : "";//Si No Se Cumple
        inIngresosEsperados = request.getParameter("txtIngresosEsperados") != null 
                ? Integer.parseInt(request.getParameter("txtIngresosEsperados")) 
                : 0;
        inCostePresupuestado = request.getParameter("txtCostePresupuestado") != null 
                ? Integer.parseInt(request.getParameter("txtCostePresupuestado")) 
                : 0;
        inCosteReal = request.getParameter("txtCosteReal") != null 
                ? Integer.parseInt(request.getParameter("txtCosteReal")) 
                : 0;
        
        stRespuestaEsperada = request.getParameter("txtRespuestaEsperada") != null//Condicion 
                ? request.getParameter("txtRespuestaEsperada").toString()//Si Se Cumple
                : "";//Si No Se Cumple       
        inNumerosEnviados = request.getParameter("txtNumerosEnviados") != null 
                ? Integer.parseInt(request.getParameter("txtNumerosEnviados")) 
                : 0;
        stDescripcion = request.getParameter("txtDescripcion") != null//Condicion 
                ? request.getParameter("txtDescripcion").toString()//Si Se Cumple
                : "";//Si No Se Cumple

    %>
    <div class="container">
        <div class=" mx-auto mt-5">
            <div class="card-header">Crear Campaña</div>
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
                            <h1>Informacion De Campaña</h1>
                        </div>
                    </div>  
                    <!--Esto es una Fila-->
                    <div class="form-group">
                        <div class="form-row">
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblTipo">Tipo</label>
                                <i class="fa fa-search-minus"></i>
                                <select class="form-control" name="ddlTipoConsulta" disabled="">
                                    <option value="1" <%= stTipo.equals("1") ? "selected" : "" %>>-None-</option>
                                    <option value="2" <%= stTipo.equals("2") ? "selected" : "" %>>Conferencia</option>
                                    <option value="3" <%= stTipo.equals("3") ? "selected" : "" %>>Seminario Web</option>
                                    <option value="4" <%= stTipo.equals("4") ? "selected" : "" %>>Exposicion Comercial</option>
                                    <option value="5" <%= stTipo.equals("5") ? "selected" : "" %>>Relaciones Publicas</option>
                                    <option value="6" <%= stTipo.equals("6") ? "selected" : "" %>>Socios</option>
                                </select>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblNombreDeCampaña">Nombre De Campaña</label>
                                <input type="text" 
                                       placeholder="Nombre De Campaña" 
                                       name="txtNombreDeCampañaConsulta" 
                                       class="form-control"
                                       value="<%= stNombreDeCampaña %>"
                                       readonly=""/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblEstado">Estado</label>
                                <i class="fa fa-search-minus"></i>
                                <select class="form-control" name="ddlEstadoConsulta" disabled="">
                                    <option value="1" <%= stEstado.equals("1") ? "selected" : "" %>>-None-</option>
                                    <option value="2" <%= stEstado.equals("2") ? "selected" : "" %>>Planificacion</option>
                                    <option value="3" <%= stEstado.equals("3") ? "selected" : "" %>>Activo</option>
                                    <option value="4" <%= stEstado.equals("4") ? "selected" : "" %>>Inactivo</option>
                                    <option value="5" <%= stEstado.equals("5") ? "selected" : "" %>>Completos</option>
                                </select>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblFechaDeInicio">Fecha De Inicio</label>
                                <input type="text" 
                                       placeholder="Fecha De Inicio" 
                                       name="txtFechaDeInicioConsulta" 
                                       class="form-control"
                                       value="<%= stFechaDeInicio %>"
                                       readonly=""/>
                            </div>
                        </div>
                    </div>
                    <!--Esto es una Fila-->
                    <div class="form-group">
                        <div class="form-row">
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblFechaDeFin">Fecha De Fin</label>
                                <input type="text" 
                                       placeholder="Fecha De Fin" 
                                       name="txtFechaDeFinConsulta" 
                                       class="form-control"
                                       value="<%= stFechaDeFin %>"
                                       readonly=""/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblIngresosEsperados">Ingresos Esperados</label>
                                <input type="text" 
                                       placeholder="Ingresos Esperados" 
                                       name="txtIngresosEsperadosConsulta" 
                                       class="form-control"
                                       value="<%= inIngresosEsperados %>"
                                       readonly=""/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblCostePresupuestado">Coste Presupuestado</label>
                                <input type="text" 
                                       placeholder="Coste Presupuestado" 
                                       name="txtCostePresupuestadoConsulta" 
                                       class="form-control"
                                       value="<%= inCostePresupuestado %>"
                                       readonly=""/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblCosteReal">Coste Real</label>
                                <input type="text" 
                                       placeholder="Coste Real" 
                                       name="txtCosteRealConsulta" 
                                       class="form-control"
                                       value="<%= inCosteReal %>"
                                       readonly=""/>
                            </div>
                        </div>
                    </div>
                    <!--Esto es una Fila-->
                    <div class="form-group">
                        <div class="form-row">
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblRespuestaEsperada">Respuesta Esperada</label>
                                <input type="text" 
                                       placeholder="Respuesta Esperada" 
                                       name="txtRespuestaEsperadaConsulta" 
                                       class="form-control"
                                       value="<%= stRespuestaEsperada %>"
                                       readonly=""/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblNumerosEnviados">Numeros Enviados</label>
                                <input type="text" 
                                       placeholder="Numeros Enviados" 
                                       name="txtNumerosEnviadosConsulta" 
                                       class="form-control"
                                       value="<%= inNumerosEnviados %>"
                                       readonly=""/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-6">
                                <label name="lblDescripcion">Descripcion</label>
                                <input type="text" 
                                       placeholder="Descripcion
                                       " name="txtDescripcionConsulta" 
                                       class="form-control"
                                       value="<%= stDescripcion %>"
                                       readonly=""/>
                            </div>
                        </div> 
                </form>
            </div>
        </div>
    </div>
</body>
</html>

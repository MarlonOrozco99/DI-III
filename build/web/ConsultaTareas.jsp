<%-- 
    Document   : ConsultaTareas
    Created on : 3/04/2018, 09:57:25 AM
    Author     : Carlos E Polanco P
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
        <title>Consulta Tareas</title>
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
        String stTitularDeLaTarea;
        String stAsunto;

        String stFechaDeVencimiento;
        String stContacto;

        String stCuenta;
        String stEstado;

        String stPrioridad;

        String stEnviarMensajedeCorreoElectronicoDeNotificacion;
        String stRepetir;

        String stInformacionDeLaDescripcion;

        stTitularDeLaTarea = request.getParameter("txtTitularDeLaTarea") != null//Condicion 
                ? request.getParameter("txtTitularDeLaTarea").toString()//Si Se Cumple
                : "";//Si No Se Cumple 
        stAsunto = request.getParameter("txtAsunto") != null//Condicion 
                ? request.getParameter("txtAsunto").toString()//Si Se Cumple
                : "";//Si No Se Cumple

        stFechaDeVencimiento = request.getParameter("txtFechaDeVencimiento") != null//Condicion 
                ? request.getParameter("txtFechaDeVencimiento").toString()//Si Se Cumple
                : "";//Si No Se Cumple
        stContacto = request.getParameter("txtContacto") != null//Condicion 
                ? request.getParameter("txtContacto").toString()//Si Se Cumple
                : "";//Si No Se Cumple

        stCuenta = request.getParameter("txtCuenta") != null//Condicion 
                ? request.getParameter("txtCuenta").toString()//Si Se Cumple
                : "";//Si No Se Cumple
        stEstado = request.getParameter("ddlEstado") != null//Condicion 
                ? request.getParameter("ddlEstado").toString()//Si Se Cumple
                : "";//Si No Se Cumple

        stPrioridad = request.getParameter("ddlPrioridad") != null//Condicion 
                ? request.getParameter("ddlPrioridad").toString()//Si Se Cumple
                : "";//Si No Se Cumple        

        stEnviarMensajedeCorreoElectronicoDeNotificacion = request.getParameter("chkEnviarMensajedeCorreoElectronicoDeNotificacion") != null
                ? request.getParameter("chkEnviarMensajedeCorreoElectronicoDeNotificacion").toString()
                : "";
        stRepetir = request.getParameter("chkRepetir") != null
                ? request.getParameter("chkRepetir").toString()
                : "";

        stInformacionDeLaDescripcion = request.getParameter("txtInformacionDeLaDescripcion") != null//Condicion 
                ? request.getParameter("txtInformacionDeLaDescripcion").toString()//Si Se Cumple
                : "";//Si No Se Cumple

    %>
    <div class="container">
        <div class=" mx-auto mt-5">
            <div class="card-header">Crear Tarea</div>
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
                            <h1>Informacion Sobre La Tarea</h1>
                        </div>
                    </div>  
                    <!--Esto es una Fila-->
                    <div class="form-group">
                        <div class="form-row">
                            <!--Esto es una Columna-->
                            <div class="col-md-6">
                                <label name="lblTitularDeLaTarea">Titular De La Tarea</label>
                                <input type="text" 
                                       placeholder="dd/mm/aaaa" 
                                       name="txtTitularDeLaTareaConsulta" 
                                       class="form-control"
                                       value="<%= stTitularDeLaTarea%>"
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
                                <label name="lblFechaDeVencimiento">Fecha De Vencimiento</label>
                                <input type="text" 
                                       placeholder="Fecha De Vencimiento" 
                                       name="txtFechaDeVencimientoConsulta" 
                                       class="form-control"
                                       value="<%= stFechaDeVencimiento%>"
                                       readonly=""/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-6">
                                <label name="lblContacto">Contacto</label>
                                <input type="text" 
                                       placeholder="Contacto" 
                                       name="txtContactoConsulta" 
                                       class="form-control"
                                       value="<%= stContacto%>"
                                       readonly=""/>
                            </div>
                        </div>
                    </div>
                    <!--Esto es una Fila-->
                    <div class="form-group">
                        <div class="form-row">
                            <!--Esto es una Columna-->
                            <div class="col-md-6">
                                <label name="lblCuenta">Cuenta</label>
                                <input type="text" 
                                       placeholder="Cuenta" 
                                       name="txtCuentaConsulta" 
                                       class="form-control" 
                                       value="<%= stCuenta%>"
                                       readonly=""/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-6">
                                <label name="lblEstado">Estado</label>
                                <i class="fa fa-search-minus"></i>
                                <select class="form-control" name="ddlEstadoConsulta" disabled="">
                                    <option value="1" <%= stEstado.equals("1") ? "selected" : ""%>>-None-</option>
                                    <option value="2" <%= stEstado.equals("2") ? "selected" : ""%>>No Iniciado</option>
                                    <option value="3" <%= stEstado.equals("3") ? "selected" : ""%>>Aplazado</option>
                                    <option value="4" <%= stEstado.equals("4") ? "selected" : ""%>>En Curso</option>
                                    <option value="5" <%= stEstado.equals("5") ? "selected" : ""%>>Completado</option>
                                    <option value="6" <%= stEstado.equals("6") ? "selected" : ""%>>En Espera de Entrada</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <!--Esto es una Fila-->
                    <div class="form-group">
                        <div class="form-row">
                            <!--Esto es una Columna-->
                            <div class="col-md-6">
                                <label name="lblPrioridad">Prioridad</label>
                                <i class="fa fa-search-minus"></i>
                                <select class="form-control" name="ddlPrioridadConsulta" disabled="">
                                    <option value="1" <%= stPrioridad.equals("1") ? "selected" : ""%>>-None-</option>
                                    <option value="2" <%= stPrioridad.equals("2") ? "selected" : ""%>>Alto</option>
                                    <option value="3" <%= stPrioridad.equals("3") ? "selected" : ""%>>Mas Alto</option>
                                    <option value="4" <%= stPrioridad.equals("4") ? "selected" : ""%>>Bajo</option>
                                    <option value="5" <%= stPrioridad.equals("5") ? "selected" : ""%>>Mas Bajo</option>
                                    <option value="6" <%= stPrioridad.equals("6") ? "selected" : ""%>>Normal</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <!--Esto es una Fila-->
                    <div class="form-group">
                        <div class="form-row">
                            <!--Esto es una Columna-->
                            <div class="col-md-6">
                                <label name="lblEnviarMensajedeCorreoElectronicoDeNotificacion">
                                    <input type="checkbox" name="chkEnviarMensajedeCorreoElectronicoDeNotificacionConsulta"
                                           <%= stEnviarMensajedeCorreoElectronicoDeNotificacion.equals("on") ? "checked" : ""%> 
                                           disabled=""/>
                                    Enviar Mensaje de Correo Electronico De Notificacion
                                </label>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-6">
                                <label name="lblRepetir">
                                    <input type="checkbox" name="chkRepetirConsulta"
                                           <%= stRepetir.equals("on") ? "checked" : ""%> 
                                           disabled=""/>
                                    Repetir
                                </label>
                            </div>
                        </div>
                    </div>
                    <!--Esto es una Fila-->
                    <div class="form-group">
                        <div class="form-row">
                            <!--Esto es una Columna-->
                            <div class="col-md-12">
                                <label name="lblInformacionDeLaDescripcion">Informacion De La Descripcion</label>
                                <input type="text" 
                                       placeholder="Informacion De La Descripcion" 
                                       name="txtInformacionDeLaDescripcionConsulta" 
                                       class="form-control"
                                       value="<%= stInformacionDeLaDescripcion%>"
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


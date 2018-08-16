<%-- 
    Document   : ConsultasEventos
    Created on : 15/03/2018, 07:18:47 PM
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
        <title>Consulta Eventos</title>
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

    <body class="bg-white">
        <%
            String stNuevoEvento = "";
            String stUbicacion = "";

            String stParticipantes = "";

            String stTodoElDia = "";

            String stFecha = "";
            String stRelacionadoCon = "";

            String stInformacionDeLaDescripcion = "";

            stNuevoEvento = request.getParameter("txtNuevoEvento") != null//Condicion 
                    ? request.getParameter("txtNuevoEvento").toString()//Si Se Cumple
                    : "";//Si No Se Cumple
            stUbicacion = request.getParameter("txtUbicacion") != null//Condicion 
                    ? request.getParameter("txtUbicacion").toString()//Si Se Cumple
                    : "";//Si No Se Cumple

            stParticipantes = request.getParameter("txtParticipantes") != null//Condicion 
                    ? request.getParameter("txtParticipantes").toString()//Si Se Cumple
                    : "";//Si No Se Cumple

            stTodoElDia = request.getParameter("chkTodoElDia") != null
                    ? request.getParameter("chkTodoElDia").toString() : "";

            stFecha = request.getParameter("txtFecha") != null//Condicion 
                    ? request.getParameter("txtFecha").toString()//Si Se Cumple
                    : "";//Si No Se Cumple
            stRelacionadoCon = request.getParameter("ddlRelacionadoCon") != null//Condicion 
                    ? request.getParameter("ddlRelacionadoCon").toString()//Si Se Cumple
                    : "";//Si No Se Cumple

            stInformacionDeLaDescripcion = request.getParameter("txtInformacionDeLaDescripcion") != null//Condicion 
                    ? request.getParameter("txtInformacionDeLaDescripcion").toString()//Si Se Cumple
                    : "";//Si No Se Cumple

        %>
        <div class="container">
            <div class=" mx-auto mt-5">
                <div class="card-header">Crear Evento</div>
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
                                <h1>Informacion Sobre El Evento</h1>
                            </div>
                        </div>  
                        <!--Esto es una Fila-->
                        <div class="form-group">
                            <div class="form-row">
                                <!--Esto es una Columna-->
                                <div class="col-md-6">
                                    <label name="lblNuevoEvento">Nuevo Evento</label>
                                    <input type="text" 
                                           placeholder="Nuevo Evento" 
                                           name="txtNuevoEventoConsulta" 
                                           class="form-control"
                                           value="<%= stNuevoEvento%>"
                                           readonly=""/>
                                </div>
                                <!--Esto es una Columna-->
                                <div class="col-md-6">
                                    <label name="lblUbicacion">Ubicacion</label>
                                    <input type="text" 
                                           placeholder="Ubicacion" 
                                           name="txtUbicacionConsulta" 
                                           class="form-control"
                                           value="<%= stUbicacion%>"
                                           readonly=""/>
                                </div>
                            </div>
                        </div>
                        <!--Esto es una Fila-->
                        <div class="form-group">
                            <div class="form-row">
                                <!--Esto es una Columna-->
                                <div class="col-md-12">
                                    <label name="lblParticipantes">Participantes</label>
                                    <input type="text" 
                                           placeholder="Participantes" 
                                           name="txtParticipantesConsulta" 
                                           class="form-control"
                                           value="<%= stParticipantes%>"
                                           readonly=""/>
                                </div>
                            </div>
                        </div>
                        <!--Esto es una Fila-->
                        <div class="form-group">
                            <div class="form-row">
                                <!--Esto es una Columna-->
                                <div class="col-md-12">
                                    <label name="lblTodoElDia">
                                        <input type="checkbox" name="chkTodoElDia"
                                               <%= stTodoElDia.equals("on") ? "checked" : ""%> 
                                               disabled=""/>
                                        Todo El Dia
                                    </label>
                                </div>
                            </div>
                        </div>
                        <!--Esto es una Fila-->
                        <div class="form-group">
                            <div class="form-row">
                                <!--Esto es una Columna-->
                                <div class="col-md-6">
                                    <label name="lblFecha">Fecha</label>
                                    <input type="text" 
                                           placeholder="Fecha" 
                                           name="txtFechaConsulta" 
                                           class="form-control"
                                           value="<%= stFecha%>"
                                           readonly=""/>
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

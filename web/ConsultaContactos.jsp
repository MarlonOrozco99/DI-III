<%-- 
    Document   : ConsultaContactos
    Created on : 12/04/2018, 08:35:30 PM
    Author     : Juan Jose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Contactos</title>
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
        String stFuenteDePosibleCliente = "";
        String stNombre = "";
        String stApellidos = "";
        String stNumeroDeCuenta = "";
        String stTitulo = "";
        String stCorreoElectronico = "";
        String stDepartamento = "";
        String stTelefono = "";
        String stTelefonoParticular = "";
        String stOtroTelefono = "";
        String stFax = "";
        String stMovil = "";
        String stFechaDeNacimiento = "";
        String stAsistente = "";
        String stNºDeTelefonoDeAsistente = "";
        String stRespondeA = "";
        String stNoParticipacionCorreoElectronico = "";
        String stIDDeSkype = "";
        String stCorreoElectronicoSecundario = "";

        stFuenteDePosibleCliente = request.getParameter("ddlFuenteDePosibleCliente") != null//Condicion 
                ? request.getParameter("ddlFuenteDePosibleCliente").toString()//Si Se Cumple
                : "";//Si No Se Cumple

        stNombre = request.getParameter("txtNombre") != null//Condicion 
                ? request.getParameter("txtNombre").toString()//Si Se Cumple
                : "";//Si No Se Cumple

        stApellidos = request.getParameter("txtApellidos") != null//Condicion 
                ? request.getParameter("txtApellidos").toString()//Si Se Cumple
                : "";//Si No Se Cumple

        stNumeroDeCuenta = request.getParameter("txtNumeroDeCuenta") != null//Condicion 
                ? request.getParameter("txtNumeroDeCuenta").toString()//Si Se Cumple
                : "";//Si No Se Cumple

        stTitulo = request.getParameter("txtTitulo") != null//Condicion 
                ? request.getParameter("txtTitulo").toString()//Si Se Cumple
                : "";//Si No Se Cumple

        stCorreoElectronico = request.getParameter("txtCorreoElectronico") != null//Condicion 
                ? request.getParameter("txtCorreoElectronico").toString()//Si Se Cumple
                : "";//Si No Se Cumple

        stDepartamento = request.getParameter("txtDepartamento") != null//Condicion 
                ? request.getParameter("txtDepartamento").toString()//Si Se Cumple
                : "";//Si No Se Cumple

        stTelefono = request.getParameter("txtTelefono") != null//Condicion 
                ? request.getParameter("txtTelefono").toString()//Si Se Cumple
                : "";//Si No Se Cumple

        stTelefonoParticular = request.getParameter("txtTelefonoParticular") != null//Condicion 
                ? request.getParameter("txtTelefonoParticular").toString()//Si Se Cumple
                : "";//Si No Se Cumple

        stOtroTelefono = request.getParameter("txtOtroTelefono") != null//Condicion 
                ? request.getParameter("txtOtroTelefono").toString()//Si Se Cumple
                : "";//Si No Se Cumple

        stFax = request.getParameter("txtFax") != null//Condicion 
                ? request.getParameter("txtFax").toString()//Si Se Cumple
                : "";//Si No Se Cumple

        stMovil = request.getParameter("txtMovil") != null//Condicion 
                ? request.getParameter("txtMovil").toString()//Si Se Cumple
                : "";//Si No Se Cumple

        stAsistente = request.getParameter("txtAsistente") != null//Condicion 
                ? request.getParameter("txtAsistente").toString()//Si Se Cumple
                : "";//Si No Se Cumple

        stNºDeTelefonoDeAsistente = request.getParameter("txtNºDeTelefonoDeAsistente") != null//Condicion 
                ? request.getParameter("txtNºDeTelefonoDeAsistente").toString()//Si Se Cumple
                : "";//Si No Se Cumple

        stRespondeA = request.getParameter("txtRespondeA") != null//Condicion 
                ? request.getParameter("txtRespondeA").toString()//Si Se Cumple
                : "";//Si No Se Cumple

        stNoParticipacionCorreoElectronico = request.getParameter("chkNoParticipacionCorreoElectronico") != null//Condicion 
                ? request.getParameter("chkNoParticipacionCorreoElectronico").toString()//Si Se Cumple
                : "";//Si No Se Cumple

        stIDDeSkype = request.getParameter("txtIDDeSkype") != null//Condicion 
                ? request.getParameter("txtIDDeSkype").toString()//Si Se Cumple
                : "";//Si No Se Cumple

        stCorreoElectronicoSecundario = request.getParameter("txtCorreoElectronicoSecundario") != null//Condicion 
                ? request.getParameter("txtCorreoElectronicoSecundario").toString()//Si Se Cumple
                : "";//Si No Se Cumple
%>
    <div class="container">
        <div class=" mx-auto mt-5">
            <div class="card-header">Crear Contacto</div>
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
                            <h1>Informacion De Contacto</h1>
                        </div>
                    </div>  
                    <!--Esto es una Fila-->
                    <div class="form-group">
                        <div class="form-row">
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblFuenteDePosibleCliente">Fuente De Posible Cliente</label>
                                <i class="fa fa-search-minus"></i>
                                <select class="form-control" name="ddlFuenteDePosibleClienteConsulta" disabled="">
                                    <option value="1"<%= stFuenteDePosibleCliente.equals("1") ? "selected" : ""%>>-None-</option>
                                    <option value="2"<%= stFuenteDePosibleCliente.equals("2") ? "selected" : ""%>>Aviso</option>
                                    <option value="3"<%= stFuenteDePosibleCliente.equals("3") ? "selected" : ""%>>Llamada No Solicitada</option>
                                    <option value="4"<%= stFuenteDePosibleCliente.equals("4") ? "selected" : ""%>>Recomendacion De Empleado</option>
                                    <option value="5"<%= stFuenteDePosibleCliente.equals("5") ? "selected" : ""%>>Recomendacion Externa</option>
                                    <option value="6"<%= stFuenteDePosibleCliente.equals("6") ? "selected" : ""%>>Tienda En Linea</option>
                                </select>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblNombre">Nombre</label>
                                <input type="text" 
                                       placeholder="Nombre" 
                                       name="txtNombreConsulta"
                                       class="form-control"  
                                       value="<%= stNombre%>" 
                                       readonly=""/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblApellidos">Apellidos</label>
                                <input type="text" 
                                       placeholder="Apellidos" 
                                       name="txtApellidosConsulta" 
                                       class="form-control" 
                                       value="<%= stApellidos%>" 
                                       readonly=""/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblNumeroDeCuenta">Numero De Cuenta</label>
                                <input type="text" 
                                       placeholder="Numero De Cuenta" 
                                       name="txtNumeroDeCuentaConsulta" 
                                       class="form-control" 
                                       value="<%= stNumeroDeCuenta%>" 
                                       readonly=""/>
                            </div>
                        </div>
                    </div>
                    <!--Esto es una Fila-->
                    <div class="form-group">
                        <div class="form-row">
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblTitulo">Titulo</label>
                                <input type="text" 
                                       placeholder="Titulo" 
                                       name="txtTituloConsulta" 
                                       class="form-control"  
                                       value="<%= stTitulo%>" 
                                       readonly=""/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblCorreoElectronico">Correo Electronico</label>
                                <input type="text" 
                                       placeholder="Correo Electronico" 
                                       name="txtCorreoElectronicoConsulta" 
                                       class="form-control" 
                                       value="<%= stCorreoElectronico%>" 
                                       readonly=""/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblDepartamento">Departamento</label>
                                <input type="text" 
                                       placeholder="Departamento" 
                                       name="txtDepartamentoConsulta" 
                                       class="form-control" 
                                       value="<%= stDepartamento%>" 
                                       readonly=""/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblTelefono">Telefono</label>
                                <input type="text" 
                                       placeholder="Telefono" 
                                       name="txtTelefonoConsulta" 
                                       class="form-control" 
                                       value="<%= stTelefono%>" 
                                       readonly=""/>
                            </div>
                        </div>
                    </div>
                    <!--Esto es una Fila-->
                    <div class="form-group">
                        <div class="form-row">
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblTelefonoParticular">Telefono Particular</label>
                                <input type="text" 
                                       placeholder="Telefono Particular" 
                                       name="txtTelefonoParticularConsulta" 
                                       class="form-control" 
                                       value="<%= stTelefonoParticular%> 
                                       "readonly=""/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblOtroTelefono">Otro Telefono</label>
                                <input type="text" 
                                       placeholder="Otro Telefono" 
                                       name="txtOtroTelefonoConsulta" 
                                       class="form-control" 
                                       value="<%= stOtroTelefono%>" 
                                       readonly=""/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblFax">Fax</label>
                                <input type="text" 
                                       placeholder="Fax" 
                                       name="txtFaxConsulta" 
                                       class="form-control" 
                                       value="<%= stFax%>" 
                                       readonly=""/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblMovil">Movil</label>
                                <input type="text" 
                                       placeholder="Movil" 
                                       name="txtMovilConsulta" 
                                       class="form-control" 
                                       value="<%= stMovil%>" 
                                       readonly=""/>
                            </div>
                        </div>
                    </div> 
                    <!--Esto es una Fila-->
                    <div class="form-group">
                        <div class="form-row">
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblFechaDeNacimiento">Fecha De Nacimiento</label>
                                <input type="text" 
                                       placeholder="dd/mm/aaaa" 
                                       name="txtFechaDeNacimientoConsulta" 
                                       class="form-control" 
                                       value="<%= stFechaDeNacimiento%>" 
                                       readonly=""/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblAsistente">Asistente</label>
                                <input type="text" 
                                       placeholder="Asistente" 
                                       name="txtAsistenteConsulta" 
                                       class="form-control" 
                                       value="<%= stAsistente%>" 
                                       readonly=""/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblNºDeTelefonoDeAsistente">Nº De Telefono De Asistente</label>
                                <input type="text" 
                                       placeholder="Nº De Telefono De Asistente" 
                                       name="txtNºDeTelefonoDeAsistenteConsulta" 
                                       class="form-control" 
                                       value="<%= stNºDeTelefonoDeAsistente%>"/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblRespondeA">Responde A</label>
                                <input type="text" 
                                       placeholder="Responde A" 
                                       name="txtRespondeAConsulta" 
                                       class="form-control" 
                                       value="<%= stRespondeA%>"/>
                            </div>
                        </div>
                    </div> 
                    <!--Esto es una Fila-->
                    <div class="form-group">
                        <div class="form-row">
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblNoParticipacionCorreoElectronico">
                                    <input type="checkbox" name="chkNoParticipacionCorreoElectronicoConsulta" <%= stNoParticipacionCorreoElectronico.equals("on") ? "checked" : ""%> 
                                           disabled=""/>
                                    No Participacion Correo Electronico
                                </label>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblIDDeSkype">ID De Skype</label>
                                <input type="text" 
                                       placeholder="ID De Skype" 
                                       name="txtIDDeSkypeConsulta" 
                                       class="form-control" 
                                       value="<%= stIDDeSkype%>"
                                       readonly=""/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblCorreoElectronicoSecundario">Correo Electronico Secundario</label>
                                <input type="text" 
                                       placeholder="Correo Electronico Secundario" 
                                       name="txtCorreoElectronicoSecundarioConsulta" 
                                       class="form-control" 
                                       value="<%= stCorreoElectronicoSecundario%>"
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

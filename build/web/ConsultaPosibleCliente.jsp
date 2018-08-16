<%-- 
    Document   : ConsultaPosibleCliente
    Created on : 22-mar-2018, 18:49:43
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
        <title>Consulta Posibles Clientes</title>
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
            String stEmpresa = "";
            String stNombre = "";
            String stApellidos = "";
            String stTitulo = "";
            
            String stCorreoElectronico = "";
            String stTelefono = "";
            String stFax = "";
            String stMovil = "";
            
            String stSitioWeb = "";
            String stFuenteDePosibleCliente = "";
            String stEstadoDePosibleCliente = "";
            String stSector = "";
            
            int inCantidadDeEmpleados = 0;
            double dbIngresosAnuales = 0;
            String stCalificacion = "";
            String stNoParticipacionCorreoElectronico = "";
            
            String stIDDeSkype = "";
            String stTwitter = "";
            String stCorreoElectronicoSecundario = "";

            stEmpresa = request.getParameter("txtEmpresa") != null//Condicion 
                    ? request.getParameter("txtEmpresa").toString()//Si Se Cumple
                    : "";//Si No Se Cumple 
            stNombre = request.getParameter("txtNombre") != null ? request.getParameter("txtNombre").toString(): "";
            stApellidos = request.getParameter("txtApellidos") != null ? request.getParameter("txtApellidos").toString(): "";
            stTitulo = request.getParameter("txtTitulo") != null ? request.getParameter("txtTitulo").toString(): "";
            
            stCorreoElectronico = request.getParameter("txtCorreoElectronico") != null ? request.getParameter("txtCorreoElectronico").toString(): "";
            stTelefono = request.getParameter("txtTelefono") != null ? request.getParameter("txtTelefono").toString(): "";
            stFax = request.getParameter("txtFax") != null ? request.getParameter("txtFax").toString(): "";
            stMovil = request.getParameter("txtMovil") != null ? request.getParameter("txtMovil").toString(): "";
            
            stSitioWeb = request.getParameter("txtSitioWeb") != null ? request.getParameter("txtSitioWeb").toString(): "";
            stFuenteDePosibleCliente = request.getParameter("ddlFuenteDePosibleCliente") != null ? request.getParameter("ddlFuenteDePosibleCliente").toString(): "";
            stEstadoDePosibleCliente = request.getParameter("ddlEstadoDePosibleCliente") != null ? request.getParameter("ddlEstadoDePosibleCliente").toString(): "";
            stSector = request.getParameter("ddlSector") != null ? request.getParameter("ddlSector").toString(): "";
            
            inCantidadDeEmpleados = request.getParameter("txtCantidadDeEmpleados") !=null ? Integer.parseInt(request.getParameter("txtCantidadDeEmpleados")) : 0;
            dbIngresosAnuales = request.getParameter("txtIngresosAnuales") !=null ? Double.parseDouble(request.getParameter("txtIngresosAnuales")) : 0;
            stCalificacion = request.getParameter("ddlCalificacion") != null ? request.getParameter("ddlCalificacion").toString(): "";
            stNoParticipacionCorreoElectronico = request.getParameter("chkNoParticipacionCorreoElectronico") != null ? request.getParameter("chkNoParticipacionCorreoElectronico").toString(): "";
            
            stIDDeSkype = request.getParameter("txtIDDeSkype") != null ? request.getParameter("txtIDDeSkype").toString(): "";
            stTwitter = request.getParameter("txtTwitter") != null ? request.getParameter("txtTwitter").toString(): "";
            stCorreoElectronicoSecundario = request.getParameter("txtCorreoElectronicoSecundario") != null ? request.getParameter("txtCorreoElectronicoSecundario").toString(): "";
        %>
        <div class="container">
            <div class=" mx-auto mt-5">
                <div class="card-header">Crear Posibles Clientes</div>
                <div class="card-body">
                    <form>                        
                        <!--Esto es una Fila-->
                        <div class="form-group">
                            <div class="form-row">
                                <h1>Informacion de Posible Cliente</h1>
                            </div>
                        </div>  
                        <!--Esto es una Fila-->
                        <div class="form-group">
                            <div class="form-row">
                                <!--Esto es una Columna-->
                                <div class="col-md-3">
                                    <label name="lblEmpresa">Empresa</label>
                                    <input type="text" 
                                           placeholder="Empresa" 
                                           name="txtEmpresaConsulta" 
                                           class="form-control" 
                                           required=""
                                           value="<%= stEmpresa %>"
                                           readonly=""/>
                                </div>
                                <!--Esto es una Columna-->
                                <div class="col-md-3">
                                    <label name="lblNombre">Nombre</label>
                                    <input type="text" 
                                           placeholder="Nombre" 
                                           name="txtNombreConsulta" 
                                           class="form-control" 
                                           required=""
                                           value="<%= stNombre %>"
                                           readonly=""/>
                                </div>
                                <!--Esto es una Columna-->
                                <div class="col-md-3">
                                    <label name="lblApellidos">Apellidos</label>
                                    <input type="text" 
                                           placeholder="Apellidos" 
                                           name="txtApellidosConsulta" 
                                           class="form-control" 
                                           required=""
                                           value="<%= stApellidos %>"
                                           readonly=""/>
                                </div>
                                <!--Esto es una Columna-->
                                <div class="col-md-3">
                                    <label name="lblTitulo">Titulo</label>
                                    <input type="text" 
                                           placeholder="Titulo" 
                                           name="txtTituloConsulta" 
                                           class="form-control"
                                           value="<%= stTitulo %>"
                                           readonly=""/>
                                </div>
                            </div>
                        </div>  
                        <!--Esto es una Fila-->
                        <div class="form-group">
                            <div class="form-row">
                                <!--Esto es una Columna-->
                                <div class="col-md-3">
                                    <label name="lblCorreoElectronico">Correo Electronico</label>
                                    <input type="text" 
                                           placeholder="Correo Electronico" 
                                           name="txtCorreoElectronicoConsulta" 
                                           class="form-control" 
                                           required=""
                                           value="<%= stCorreoElectronico %>"
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
                                <!--Esto es una Columna-->
                                <div class="col-md-3">
                                    <label name="lblFax">Fax</label>
                                    <input type="text" 
                                           placeholder="Fax" 
                                           name="txtFaxConsulta" 
                                           class="form-control"
                                           value="<%= stFax %>"
                                           readonly=""/>
                                </div>
                                <!--Esto es una Columna-->
                                <div class="col-md-3">
                                    <label name="lblMovil">Movil</label>
                                    <input type="text" 
                                           placeholder="Movil" 
                                           name="txtMovilConsulta" 
                                           class="form-control"
                                           value="<%= stMovil %>"
                                           readonly=""/>
                                </div>
                            </div>
                        </div>               
                        <!--Esto es una Fila-->
                        <div class="form-group">
                            <div class="form-row">
                                <!--Esto es una Columna-->
                                <div class="col-md-3">
                                    <label name="lblSitioWeb">Sitio Web</label>
                                    <input type="text" 
                                           placeholder="Sitio Web" 
                                           name="txtSitioWebConsulta" 
                                           class="form-control" 
                                           value="<%= stSitioWeb %>"
                                           readonly=""/>
                                </div>
                                <!--Esto es una Columna-->
                                <div class="col-md-3">
                                    <label name="lblFuenteDePosibleCliente">Fuente De Posible Cliente</label>
                                    <i class="fa fa-search-minus"></i>
                                    <select class="form-control" name="ddlFuenteDePosibleClienteConsulta" disabled="">
                                        <option value="1" <%= stFuenteDePosibleCliente.equals("1") ? "selected" : "" %>>-None-</option>
                                        <option value="2" <%= stFuenteDePosibleCliente.equals("2") ? "selected" : "" %>>Aviso</option>
                                        <option value="3" <%= stFuenteDePosibleCliente.equals("3") ? "selected" : "" %>>Llamada No Solicitada</option>
                                        <option value="4" <%= stFuenteDePosibleCliente.equals("4") ? "selected" : "" %>>Recomendacion De Empleado</option>
                                        <option value="5" <%= stFuenteDePosibleCliente.equals("5") ? "selected" : "" %>>Recomendacion Externa</option>
                                        <option value="6" <%= stFuenteDePosibleCliente.equals("6") ? "selected" : "" %>>Tienda En Linea</option>
                                    </select>
                                </div>
                                <!--Esto es una Columna-->
                                <div class="col-md-3">
                                    <label name="lblEstadoDePosibleCliente">Estado De Posible Cliente</label>
                                    <i class="fa fa-search-minus"></i>
                                    <select class="form-control" name="ddlEstadoDePosibleClienteConsulta" disabled="">
                                        <option value="1" <%= stEstadoDePosibleCliente.equals("1") ? "selected" : "" %>>-None-</option>
                                        <option value="2" <%= stEstadoDePosibleCliente.equals("2") ? "selected" : "" %>>Intento De Contacto</option>
                                        <option value="3" <%= stEstadoDePosibleCliente.equals("3") ? "selected" : "" %>>Contactar En El Futuro</option>
                                        <option value="4" <%= stEstadoDePosibleCliente.equals("4") ? "selected" : "" %>>Contactado</option>
                                        <option value="5" <%= stEstadoDePosibleCliente.equals("5") ? "selected" : "" %>>Posible Cliente No Solicitado</option>
                                        <option value="6" <%= stEstadoDePosibleCliente.equals("6") ? "selected" : "" %>>Posible Cliente Perdido</option>
                                    </select>
                                </div>
                                <!--Esto es una Columna-->
                                <div class="col-md-3">
                                    <label name="lblSector">Sector</label>
                                    <i class="fa fa-search-minus"></i>
                                    <select class="form-control" name="ddlSectorConsulta" disabled="">
                                        <option value="1" <%= stSector.equals("1") ? "selected" : "" %>>-None-</option>
                                        <option value="2" <%= stSector.equals("2") ? "selected" : "" %>>ASP (Proveedor De Servicios De Aplicacion)</option>
                                        <option value="3" <%= stSector.equals("3") ? "selected" : "" %>>OEM De Datos</option>
                                        <option value="4" <%= stSector.equals("4") ? "selected" : "" %>>ERP (Planificacion De Recursos De Empresa)</option>
                                        <option value="5" <%= stSector.equals("5") ? "selected" : "" %>>Gobierno/Ejercito</option>
                                        <option value="6" <%= stSector.equals("6") ? "selected" : "" %>>Empresa Grande</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!--Esto es una Fila-->
                        <div class="form-group">
                            <div class="form-row">
                                <!--Esto es una Columna-->
                                <div class="col-md-3">
                                    <label name="lblCantidadDeEmpleados">Cantidad De Empleados</label>
                                    <input type="text" 
                                           placeholder="Cantidad De Empleados" 
                                           name="txtCantidadDeEmpleadosConsulta" 
                                           class="form-control"
                                           value="<%= inCantidadDeEmpleados %>"
                                           readonly=""/>
                                </div>
                                <!--Esto es una Columna-->
                                <div class="col-md-3">
                                    <label name="lblIngresosAnuales">Ingresos Anuales</label>
                                    <input type="text" 
                                           placeholder="Ingresos Anuales" 
                                           name="txtIngresosAnualesConsulta" 
                                           class="form-control"
                                           value="<%= dbIngresosAnuales %>"
                                           readonly=""/>
                                </div>
                                <!--Esto es una Columna-->
                                <div class="col-md-3">
                                    <label name="lblCalificacion">Calificacion</label>
                                    <i class="fa fa-search-minus"></i>
                                    <select class="form-control" name="ddlCalificacionConsulta" disabled="">
                                        <option value="1" <%= stCalificacion.equals("1") ? "selected" : "" %>>-None-</option>
                                        <option value="2" <%= stCalificacion.equals("2") ? "selected" : "" %>>Adquirido</option>
                                        <option value="3" <%= stCalificacion.equals("3") ? "selected" : "" %>>Activo</option>
                                        <option value="4" <%= stCalificacion.equals("4") ? "selected" : "" %>>Contactado</option>
                                        <option value="5" <%= stCalificacion.equals("5") ? "selected" : "" %>>Fallo De Mercado</option>
                                        <option value="6" <%= stCalificacion.equals("6") ? "selected" : "" %>>Proyecto Cancelado</option>
                                        <option value="7" <%= stCalificacion.equals("7") ? "selected" : "" %>>Apagar</option>
                                    </select>
                                </div>
                                <!--Esto es una Columna-->
                                <div class="col-md-3">
                                    <label name="lblNoParticipacionCorreoElectronico">
                                        <input type="checkbox" name="chkNoParticipacionCorreoElectronicoConsulta"
                                               <%= stNoParticipacionCorreoElectronico.equals("on") ? "checked" : "" %> 
                                               disabled=""/>
                                        No Participacion Correo Electronico
                                    </label>
                                </div>
                            </div>
                        </div>  
                        <!--Esto es una Fila-->
                        <div class="form-group">
                            <div class="form-row">
                                <!--Esto es una Columna-->
                                <div class="col-md-3">
                                    <label name="lblIDDeSkype">ID De Skype</label>
                                    <input type="text" 
                                           placeholder="ID De Skype" 
                                           name="txtIDDeSkypeConsulta" 
                                           class="form-control"
                                           value="<%= stIDDeSkype %>"
                                           readonly=""/>
                                </div>
                                <!--Esto es una Columna-->
                                <div class="col-md-3">
                                    <label name="lblTwitter">Twitter</label>
                                    <input type="text" 
                                           placeholder="Twitter" 
                                           name="txtTwitterConsulta" 
                                           class="form-control"
                                           value="<%= stTwitter %>"
                                           readonly=""/>
                                </div>
                                <!--Esto es una Columna-->
                                <div class="col-md-6">
                                    <label name="lblCorreoElectronicoSecundario">Correo Electronico Secundario</label>
                                    <input type="text" 
                                           placeholder="Correo Electronico Secundario" 
                                           name="txtCorreoElectronicoSecundarioConsulta" 
                                           class="form-control"
                                           value="<%= stCorreoElectronicoSecundario %>"
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
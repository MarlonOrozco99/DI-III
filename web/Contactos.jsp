<%-- 
    Document   : Contactos
    Created on : 08-mar-2018, 13:57:15
    Author     : Juan Jose
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
    <!-- Zona de SCRIPTLETS -->
            <!---OBTENER LISTA DE OBJETOS EN SESION-->
        <%
            List<Models.clsContactos> lstclsContactos
                    = new ArrayList<Models.clsContactos>();

            //EXISTENCIA DE LA VARIABLE DE SESION
            if (session.getAttribute("session_lstclsContactos") != null) {

                //CASTING PARA DARLE UN TIPO DE DATO A LA VARIABLE DE SESION 
                lstclsContactos = (List<Models.clsContactos>) session.getAttribute("session_lstclsContactos");

            }

            if (request.getAttribute("stMensaje") != null
                    && request.getAttribute("stTipo") != null) {

        %>
        <input type="text" hidden="" id="txtMensaje"
               value="<%=request.getAttribute("stMensaje")%>"/>

        <input type="text" hidden="" id="txtTipo"
               value="<%=request.getAttribute("stTipo")%>"/>

        <script>
            var mensaje = document.getElementById("txtMensaje").value;
            var tipo = document.getElementById("txtTipo").value;

            swal("mensaje", mensaje, tipo);

        </script>


        <%
            }
        %>



        <%
            if (request.getAttribute("stMensaje") != null) {
        %>
        <input type="text" 
               hidden=""
               name="txtMensaje"
               value="<%= request.getAttribute("stMensaje")%>"/>
        <input type="text" 
               hidden=""
               name="txtTipo"
               value="<%= request.getAttribute("stTipo")%>"/>

        <script>
            var mensaje = document.getElementByName("txtMensaje").value;
            var mensaje = document.getElementByName("txtTipo").value;

            swal("Mensaje", mensaje, tipo);
        </script>

        <%
            }
        %>
    <div class="container">
        <div class=" mx-auto mt-5">
            <div class="card-header">Crear Contacto</div>
            <div class="card-body">
                <form action="ContactosController" method="POST">
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
                                <select class="form-control" name="ddlFuenteDePosibleCliente">
                                    <option value="1">-None-</option>
                                    <option value="2">Aviso</option>
                                    <option value="3">Llamada No Solicitada</option>
                                    <option value="4">Recomendacion De Empleado</option>
                                    <option value="5">Recomendacion Externa</option>
                                    <option value="6">Tienda En Linea</option>
                                </select>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblNombre">Nombre</label>
                                <input type="text" placeholder="Nombre" name="txtNombre" class="form-control"/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblApellidos">Apellidos</label>
                                <input type="text" placeholder="Apellidos" name="txtApellidos" class="form-control"/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblNumeroDeCuenta">Numero De Cuenta</label>
                                <input type="text" placeholder="Numero De Cuenta" name="txtNumeroDeCuenta" class="form-control"/>
                            </div>
                        </div>
                    </div>
                    <!--Esto es una Fila-->
                    <div class="form-group">
                        <div class="form-row">
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblTitulo">Titulo</label>
                                <input type="text" placeholder="Titulo" name="txtTitulo" class="form-control"/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblCorreoElectronico">Correo Electronico</label>
                                <input type="text" placeholder="Correo Electronico" name="txtCorreoElectronico" class="form-control"/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblDepartamento">Departamento</label>
                                <input type="text" placeholder="Departamento" name="txtDepartamento" class="form-control"/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblTelefono">Telefono</label>
                                <input type="text" placeholder="Telefono" name="txtTelefono" class="form-control"/>
                            </div>
                        </div>
                    </div>
                    <!--Esto es una Fila-->
                    <div class="form-group">
                        <div class="form-row">
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblTelefonoParticular">Telefono Particular</label>
                                <input type="text" placeholder="Telefono Particular" name="txtTelefonoParticular" class="form-control"/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblOtroTelefono">Otro Telefono</label>
                                <input type="text" placeholder="Otro Telefono" name="txtOtroTelefono" class="form-control"/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblFax">Fax</label>
                                <input type="text" placeholder="Fax" name="txtFax" class="form-control"/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblMovil">Movil</label>
                                <input type="text" placeholder="Movil" name="txtMovil" class="form-control"/>
                            </div>
                        </div>
                    </div> 
                    <!--Esto es una Fila-->
                    <div class="form-group">
                        <div class="form-row">
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblFechaDeNacimiento">Fecha De Nacimiento</label>
                                <input type="text" placeholder="dd/mm/aaaa" name="txtFechaDeNacimiento" class="form-control"/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblAsistente">Asistente</label>
                                <input type="text" placeholder="Asistente" name="txtAsistente" class="form-control"/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblNºDeTelefonoDeAsistente">Nº De Telefono De Asistente</label>
                                <input type="text" placeholder="Nº De Telefono De Asistente" name="txtNºDeTelefonoDeAsistente" class="form-control"/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblRespondeA">Responde A</label>
                                <input type="text" placeholder="Responde A" name="txtRespondeA" class="form-control"/>
                            </div>
                        </div>
                    </div> 
                    <!--Esto es una Fila-->
                    <div class="form-group">
                        <div class="form-row">
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblNoParticipacionCorreoElectronico">
                                    <input type="checkbox" name="chkNoParticipacionCorreoElectronico"/>
                                    No Participacion Correo Electronico
                                </label>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblIDDeSkype">ID De Skype</label>
                                <input type="text" placeholder="ID De Skype" name="txtIDDeSkype" class="form-control"/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblCorreoElectronicoSecundario">Correo Electronico Secundario</label>
                                <input type="text" placeholder="Correo Electronico Secundario" name="txtCorreoElectronicoSecundario" class="form-control"/>
                            </div>
                        </div>
                    </div> 
                    <!--FILA-->        
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-12" >
                                    <b>
                                        <i class="fa fa-clipboard"></i>
                                        Registro:<%= lstclsContactos.size()%>
                                    </b>
                                </div>
                            </div>
                            <!--FILA-->        
                            <div class="form-group">
                                <div class="form-row">
                                    <!--COLUMNA-->
                                    <div class="col-12" >
                                        <table class="table table-bordered table-responsive">
                                            <!--FILA-->
                                            <tr>
                                                <!--COLUMNAS-->   
                                                <td>Fuente De Posible Cliente</td>
                                                <td>Nombre</td>
                                                <td>Apellidos</td>
                                                <td>Numero De Cuenta</td>
                                                <td>Titulo</td>
                                                <td>Correo Electronico</td>
                                                <td>Departamento</td>
                                                <td>Telefono</td>
                                                <td>Telefono Particular</td>
                                                <td>Otro Telefono</td>
                                                <td>Fax</td>
                                                <td>Movil</td>
                                                <td>Fecha De Nacimiento</td>
                                                <td>Asistente</td>
                                                <td>Nº De Telefono De Asistente</td>
                                                <td>Responder A</td>
                                                <td>No Participacion Correo Electronico</td>
                                                <td>ID De Skype</td>
                                                <td>Correo Electronico Secundario</td>
                                            </tr>
                                            <%
                                                for (Models.clsContactos item : lstclsContactos) {
                                                    Models.clsFuenteDePosibleCliente obclsFuenteDePosibleCliente = item.getObFuenteDePosibleCliente();
                                            %>
                                            <tr>
                                                <!--COLUMNA-->   
                                                <td><%=obclsFuenteDePosibleCliente.getStDescripcion()%></td>                                                
                                                <td><%= item.getStNombre()%></td>
                                                <td><%= item.getStApellidos()%></td>
                                                <td><%= item.getStNumeroDeCuenta()%></td>
                                                <td><%= item.getStTitulo()%></td>
                                                <td><%= item.getStCorreoElectronico()%></td>
                                                <td><%= item.getStDepartamento()%> </td>
                                                <td><%= item.getStTelefono()%></td>
                                                <td><%= item.getStTelefonoParticular()%> </td>
                                                <td><%= item.getStOtroTelefono()%> </td>
                                                <td><%= item.getStFax()%></td>
                                                <td><%= item.getStMovil()%></td>                                                                                            
                                                <td><%= item.getStFechaDeNacimiento()%> </td>
                                                <td><%= item.getStAsistente()%> </td>
                                                <td><%= item.getStNºDeTelefonoDeAsistente()%> </td>
                                                <td><%= item.getStResponderA()%></td>
                                                <td><%= item.getChNoParticipacionCorreoElectronico()%> </td>
                                                <td><%= item.getStIDDeSkype()%></td>
                                                <td><%= item.getStCorreoElectronicoSecundario()%> </td>
                                            </tr>
                                            <%
                                                }
                                            %>
                                        </table>

                                    </div>
                                </div>
                            </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>

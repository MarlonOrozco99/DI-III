<%-- 
    Document   : Tareas
    Created on : 22/02/2018, 07:44:41 PM
    Author     : Carlos Enrique P P
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
        <title>Tareas</title>
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
            List<Models.clsTareas> lstclsTareas
                    = new ArrayList<Models.clsTareas>();

            //EXISTENCIA DE LA VARIABLE DE SESION
            if (session.getAttribute("session_lstclsTareas") != null) {

                //CASTING PARA DARLE UN TIPO DE DATO A LA VARIABLE DE SESION 
                lstclsTareas = (List<Models.clsTareas>) session.getAttribute("session_lstclsTareas");

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
            <div class="card-header">Crear Tarea</div>
            <div class="card-body">
                <form action="TareasController" method="POST">
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
                                <input type="text" placeholder="Titular De La Tarea" name="txtTitularDeLaTarea" class="form-control"/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-6">
                                <label name="lblAsunto">Asunto</label>
                                <input type="text" placeholder="Asunto" name="txtAsunto" class="form-control"/>
                            </div>
                        </div>
                    </div>
                    <!--Esto es una Fila-->
                    <div class="form-group">
                        <div class="form-row">
                            <!--Esto es una Columna-->
                            <div class="col-md-6">
                                <label name="lblFechaDeVencimiento">Fecha De Vencimiento</label>
                                <input type="text" placeholder="dd/mm/aaaa" name="txtFechaDeVencimiento" class="form-control"/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-6">
                                <label name="lblContacto">Contacto</label>
                                <input type="text" placeholder="Contacto" name="txtContacto" class="form-control"/>
                            </div>
                        </div>
                    </div>
                    <!--Esto es una Fila-->
                    <div class="form-group">
                        <div class="form-row">
                            <!--Esto es una Columna-->
                            <div class="col-md-6">
                                <label name="lblCuenta">Cuenta</label>
                                <input type="text" placeholder="Cuenta" name="txtCuenta" class="form-control" required=""/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-6">
                                <label name="lblEstado">Estado</label>
                                <i class="fa fa-search-minus"></i>
                                <select class="form-control" name="ddlEstado">
                                    <option value="1">-None-</option>
                                    <option value="2">No Iniciado</option>
                                    <option value="3">Aplazado</option>
                                    <option value="4">En Curso</option>
                                    <option value="5">Completado</option>
                                    <option value="6">En Espera de Entrada</option>
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
                                <select class="form-control" name="ddlPrioridad">
                                    <option value="1">-None-</option>
                                    <option value="2">Alto</option>
                                    <option value="3">Mas Alto</option>
                                    <option value="4">Bajo</option>
                                    <option value="5">Mas Bajo</option>
                                    <option value="6">Normal</option>
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
                                    <input type="checkbox" name="chkEnviarMensajedeCorreoElectronicoDeNotificacion"/>
                                    Enviar Mensaje de Correo Electronico De Notificacion
                                </label>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-6">
                                <label name="lblRepetir">
                                    <input type="checkbox" name="chkRepetir"/>
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
                                <input type="text" placeholder="Informacion De La Descripcion" name="txtInformacionDeLaDescripcion" class="form-control"/>
                            </div>
                        </div>
                    </div>
                    <!--FILA-->        
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-12" >
                                    <b>
                                        <i class="fa fa-clipboard"></i>
                                        Registro:<%= lstclsTareas.size()%>
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
                                                <td>Titular De La Tarea</td>
                                                <td>Asunto</td>
                                                <td>Fecha De Vencimiento</td>
                                                <td>Contacto</td>
                                                <td>Cuenta</td>
                                                <td>Estado</td>
                                                <td>Prioridad</td>
                                                <td>Enviar Mensaje de Correo Electronico De Notificacion</td>
                                                <td>Repetir</td>
                                                <td>Informacion De La Descripcion</td>                       
                                            </tr>
                                            <%
                                                for (Models.clsTareas item : lstclsTareas) {
                                                    Models.clsEstado obclsEstado = item.getObclsEstado();
                                                    Models.clsPrioridad obclsPrioridad = item.getObclsPrioridad();
                                            %>
                                            <tr>
                                                <!--COLUMNA-->   
                                                <td><%= item.getStTitularDeLaTarea()%></td>
                                                <td><%= item.getStAsunto()%></td>
                                                <td><%= item.getStFechaDeVencimiento()%></td>
                                                <td><%= item.getStContacto()%></td>
                                                <td><%= item.getStCuenta()%></td>
                                                <td><%= obclsEstado.getStDescripcion()%></td>
                                                <td><%= obclsPrioridad.getStDescripcion()%></td>
                                                <td><%= item.getChEnviarMensajedeCorreoElectronicoDeNotificacion()%></td>
                                                <td><%= item.getChRepetir()%> </td>
                                                <td><%= item.getStInformacionDeLaDescripcion()%></td>
                                            </tr>
                                            <%
                                                }
                                            %>
                                        </table>
                </form>
            </div>
        </div>
    </div>
</body>
</html>

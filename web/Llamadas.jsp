<%-- 
    Document   : Llamadas
    Created on : 22/02/2018, 07:46:44 PM
    Author     : Carlos Enrique P P
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
    <!-- Zona de SCRIPTLETS -->
            <!---OBTENER LISTA DE OBJETOS EN SESION-->
        <%
            List<Models.clsLlamadas> lstclsLlamadas
                    = new ArrayList<Models.clsLlamadas>();

            //EXISTENCIA DE LA VARIABLE DE SESION
            if (session.getAttribute("session_lstclsLlamadas") != null) {

                //CASTING PARA DARLE UN TIPO DE DATO A LA VARIABLE DE SESION 
                lstclsLlamadas = (List<Models.clsLlamadas>) session.getAttribute("session_lstclsLlamadas");

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
            <div class="card-header">Crear Llamada</div>
            <div class="card-body">
                <form action="LlamdasController" method="POST">
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
                                <input type="text" placeholder="Nombre De Contacto" name="txtNombreDeContacto" class="form-control"/>
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
                                <label name="lblPropositoDeLaLlamada">Proposito De La Llamada</label>
                                <i class="fa fa-search-minus"></i>
                                <select class="form-control" name="ddlPropositoDeLaLlamada">
                                    <option value="1">Ninguno</option>
                                    <option value="2">Posible</option>
                                    <option value="3">Administrativo</option>
                                    <option value="4">Negociacion</option>
                                    <option value="5">Demostracion</option>
                                    <option value="6">Proyecto</option>
                                </select>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-6">
                                <label name="lblRelacionadoCon">Relacionado Con</label>
                                <i class="fa fa-search-minus"></i>
                                <select class="form-control" name="ddlRelacionadoCon">
                                    <option value="1">-None-</option>
                                    <option value="2">Posible Cliente</option>
                                    <option value="3">Contacto</option>
                                    <option value="4">Otros</option>
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
                                <input type="text" placeholder="Tipo De Llamada" name="txtTipoDeLlamada" class="form-control"/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-6">
                                <label>Detalles De La Llamada</label>
                                <br>
                                <label>
                                    Llamada Actual
                                    <input type="radio" class="form-control" name="radLlamadaActual"/>                                           
                                </label>
                                <label>
                                    Llamada Completada
                                    <input type="radio" class="form-control" name="radLlamadaCompletada"/>                                           
                                </label>
                                <label>
                                    Programar Llamada
                                    <input type="radio" class="form-control" name="radProgramarLlamada"/>                                           
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
                                <input type="text" placeholder="Descripcion" name="txtDescripcion" class="form-control"/>
                            </div>
                        </div>
                    </div>
                    <!--Esto es una Fila-->
                    <div class="form-group">
                        <div class="form-row">
                            <!--Esto es una Columna-->
                            <div class="col-md-12">
                                <label name="lblResultadoDeLaLlamada">Resultado De La Llamada</label>
                                <input type="text" placeholder="Resultado De La Llamada" name="txtResultadoDeLaLlamada" class="form-control"/>
                            </div>
                        </div>
                    </div>
                    <!--FILA-->        
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-12" >
                                    <b>
                                        <i class="fa fa-clipboard"></i>
                                        Registro:<%= lstclsLlamadas.size()%>
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
                                                <td>Nombre De Contacto</td>
                                                <td>Asunto</td>
                                                <td>Proposito De La Llamada</td>
                                                <td>Relacionado Con</td>
                                                <td>Tipo De Llamada</td>
                                                <td>Tipo</td>
                                            </tr>
                                            <%
                                                for (Models.clsLlamadas item : lstclsLlamadas) {
                                                    Models.clsPropositoDeLaLlamada obclsPropositoDeLaLlamada = item.getObclsPropositoDeLaLlamada();
                                                    Models.clsRelacionadoCon obclsRelacionadoCon = item.getObclsRelacionadoCon();
                                                    Models.clsTipo obclsTipo = item.getObclsTipo();

                                            %>
                                            <tr>
                                                <!--COLUMNA-->   
                                                <td><%= item.getStNombreDeContacto()%></td>
                                                <td><%= item.getStAsunto()%></td>
                                                <td><%= obclsPropositoDeLaLlamada.getStDescripcion()%></td>
                                                <td><%= obclsRelacionadoCon.getStDescripcion()%></td>
                                                <td><%= item.getStTipoDeLlamada()%></td>
                                                <td><%= obclsTipo.getStDescripcion()%></td>
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

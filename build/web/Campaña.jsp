<%-- 
    Document   : Campaña
    Created on : 08-mar-2018, 15:58:12
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
        <title>Campaña</title>
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
            List<Models.clsCampaña> lstclsCampaña
                    = new ArrayList<Models.clsCampaña>();

            //EXISTENCIA DE LA VARIABLE DE SESION
            if (session.getAttribute("session_lstclsCampaña") != null) {

                //CASTING PARA DARLE UN TIPO DE DATO A LA VARIABLE DE SESION 
                lstclsCampaña = (List<Models.clsCampaña>) session.getAttribute("session_lstclsCampaña");

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
            <div class="card-header">Crear Campaña</div>
            <div class="card-body">
                <form action="CampañaController" method="POST">
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
                                <select class="form-control" name="ddlTipo">
                                    <option value="1">-None-</option>
                                    <option value="2">Conferencia</option>
                                    <option value="3">Seminario Web</option>
                                    <option value="4">Exposicion Comercial</option>
                                    <option value="5">Relaciones Publicas</option>
                                    <option value="6">Socios</option>
                                </select>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblNombreDeCampaña">Nombre De Campaña</label>
                                <input type="text" placeholder="Nombre De Campaña" name="txtNombreDeCampaña" class="form-control"/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblEstado">Estado</label>
                                <i class="fa fa-search-minus"></i>
                                <select class="form-control" name="ddlEstado">
                                    <option value="1">-None-</option>
                                    <option value="2">Planificacion</option>
                                    <option value="3">Activo</option>
                                    <option value="4">Inactivo</option>
                                    <option value="5">Completos</option>
                                </select>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblFechaDeInicio">Fecha De Inicio</label>
                                <input type="text" placeholder="dd/mm/aaaa" name="txtFechaDeInicio" class="form-control"/>
                            </div>
                        </div>
                    </div>
                    <!--Esto es una Fila-->
                    <div class="form-group">
                        <div class="form-row">
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblFechaDeFin">Fecha De Fin</label>
                                <input type="text" placeholder="dd/mm/aaaa" name="txtFechaDeFin" class="form-control"/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblIngresosEsperados">Ingresos Esperados</label>
                                <input type="text" placeholder="Ingresos Esperados" name="txtIngresosEsperados" class="form-control"/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblCostePresupuestado">Coste Presupuestado</label>
                                <input type="text" placeholder="Coste Presupuestado" name="txtCostePresupuestado" class="form-control"/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblCosteReal">Coste Real</label>
                                <input type="text" placeholder="Coste Real" name="txtCosteReal" class="form-control"/>
                            </div>
                        </div>
                    </div>
                    <!--Esto es una Fila-->
                    <div class="form-group">
                        <div class="form-row">
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblRespuestaEsperada">Respuesta Esperada</label>
                                <input type="text" placeholder="Respuesta Esperada" name="txtRespuestaEsperada" class="form-control"/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-3">
                                <label name="lblNumerosEnviados">Numeros Enviados</label>
                                <input type="text" placeholder="Numeros Enviados" name="txtNumerosEnviados" class="form-control"/>
                            </div>
                            <!--Esto es una Columna-->
                            <div class="col-md-6">
                                <label name="lblDescripcion">Descripcion</label>
                                <input type="text" placeholder="Descripcion" name="txtDescripcion" class="form-control"/>
                            </div>
                        </div> 
                        <!--FILA-->        
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-12" >
                                    <b>
                                        <i class="fa fa-clipboard"></i>
                                        Registro:<%= lstclsCampaña.size()%>
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
                                                <td>Tipo</td>
                                                <td>Nombre De Campaña</td>
                                                <td>Estado</td>
                                                <td>Fecha De Inicio</td>
                                                <td>Fecha De Fin</td>
                                                <td>Ingresos Esperados</td>
                                                <td>Coste Presupuestado</td>
                                                <td>Coste Real</td>
                                                <td>Respuesta Esperada</td>
                                                <td>Numeros Enviados</td>
                                                <td>Descripcion</td>
                                            </tr>
                                            <%
                                                for (Models.clsCampaña item : lstclsCampaña) {
                                                    Models.clsTipo obclsTipo = item.getObclsTipo();
                                                    Models.clsEstado obclsEstado = item.getObclsEstado();
                                            %>
                                            <tr>
                                                <!--COLUMNA-->   
                                                <td><%= obclsTipo.getStDescripcion()%></td>
                                                <td><%= item.getStNombreDeCampaña()%></td>
                                                <td><%= obclsEstado.getStDescripcion()%></td>
                                                <td><%= item.getStFechaDeInicio()%></td>
                                                <td><%= item.getStFechaDeFin()%></td>
                                                <td><%= item.getStIngresosEsperados()%></td>
                                                <td><%= item.getStCostePresupuestado()%></td>
                                                <td><%= item.getStCosteReal()%></td>
                                                <td><%= item.getStRespuestaEsperada()%></td>
                                                <td><%= item.getStNumerosEnviados()%> </td>
                                                <td><%= item.getStDescripcion()%></td>
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
</div>
</body>
</html>

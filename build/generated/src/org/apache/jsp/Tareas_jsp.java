package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import java.util.List;
import java.util.List;

public final class Tareas_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("        <title>Tareas</title>\n");
      out.write("        <!-- Bootstrap core CSS-->\n");
      out.write("        <link href=\"vendor/bootstrap/css/bootstrap.css\" rel=\"stylesheet\">\n");
      out.write("        <!-- Custom fonts for this template-->\n");
      out.write("        <link href=\"vendor/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <!-- Bootstrap core JavaScript-->\n");
      out.write("        <script src=\"vendor/jquery/jquery.min.js\"></script>\n");
      out.write("        <!-- Custom styles for this template-->\n");
      out.write("        <link href=\"css/sb-admin.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <script src=\"vendor/bootstrap/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("        <!-- Core plugin JavaScript-->\n");
      out.write("        <script src=\"vendor/jquery-easing/jquery.easing.min.js\"></script>\n");
      out.write("\n");
      out.write("        <link href=\"ccs/sweetalert.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script src=\"js/sweetalert.min.js\" type=\"text/javascript\"></script>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body class=\"bg-white\">\n");
      out.write("    <!-- Zona de SCRIPTLETS -->\n");
      out.write("    <!---OBTENER LISTA DE OBJETOS EN SESION-->\n");
      out.write("        ");

            List<Models.clsTareas> lstclsTareas
                    = new ArrayList<Models.clsTareas>();

            //EXISTENCIA DE LA VARIABLE DE SESION
            if (session.getAttribute("session_lstclsTareas") != null) {

                //CASTING PARA DARLE UN TIPO DE DATO A LA VARIABLE DE SESION 
                lstclsTareas = (List<Models.clsTareas>) session.getAttribute("session_lstclsTareas");

            }

            if (request.getAttribute("stMensaje") != null
                    && request.getAttribute("stTipo") != null) {

        
      out.write("\n");
      out.write("        <input type=\"text\" hidden=\"\" id=\"txtMensaje\"\n");
      out.write("               value=\"");
      out.print(request.getAttribute("stMensaje"));
      out.write("\"/>\n");
      out.write("\n");
      out.write("        <input type=\"text\" hidden=\"\" id=\"txtTipo\"\n");
      out.write("               value=\"");
      out.print(request.getAttribute("stTipo"));
      out.write("\"/>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("            var mensaje = document.getElementById(\"txtMensaje\").value;\n");
      out.write("            var tipo = document.getElementById(\"txtTipo\").value;\n");
      out.write("\n");
      out.write("            swal(\"mensaje\", mensaje, tipo);\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");

            }
        
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");

            if (request.getAttribute("stMensaje") != null) {
        
      out.write("\n");
      out.write("        <input type=\"text\" \n");
      out.write("               hidden=\"\"\n");
      out.write("               name=\"txtMensaje\"\n");
      out.write("               value=\"");
      out.print( request.getAttribute("stMensaje"));
      out.write("\"/>\n");
      out.write("        <input type=\"text\" \n");
      out.write("               hidden=\"\"\n");
      out.write("               name=\"txtTipo\"\n");
      out.write("               value=\"");
      out.print( request.getAttribute("stTipo"));
      out.write("\"/>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("            var mensaje = document.getElementByName(\"txtMensaje\").value;\n");
      out.write("            var mensaje = document.getElementByName(\"txtTipo\").value;\n");
      out.write("\n");
      out.write("            swal(\"Mensaje\", mensaje, tipo);\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("        ");

            }
        
      out.write("\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\" mx-auto mt-5\">\n");
      out.write("            <div class=\"card-header\">Crear Tarea</div>\n");
      out.write("            <div class=\"card-body\">\n");
      out.write("                <form action=\"TareasController\" method=\"POST\">\n");
      out.write("                    <!--Esto es una Fila-->\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <div class=\"form-row\">\n");
      out.write("                            <!--Esto es una Columna-->\n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <input type=\"submit\" name=\"btnGuardar\" value=\"Guardar\" class=\"btn btn-primary\"/>  \n");
      out.write("                                <input type=\"submit\" name=\"btnModificar\" value=\"Modificar\" class=\"btn btn-primary\"/>  \n");
      out.write("                                <input type=\"submit\" name=\"btnCancelar\" value=\"Cancelar\" class=\"btn btn-primary\"/>   \n");
      out.write("                                <input type=\"submit\" name=\"btnVolver\" value=\"Volver\" class=\"btn btn-primary\"/>  \n");
      out.write("                            </div>                                                                \n");
      out.write("                        </div>                            \n");
      out.write("                    </div>\n");
      out.write("                    <!--Esto es una Fila-->\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <div class=\"form-row\">\n");
      out.write("                            <h1>Informacion Sobre La Tarea</h1>\n");
      out.write("                        </div>\n");
      out.write("                    </div>  \n");
      out.write("                    <!--Esto es una Fila-->\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <div class=\"form-row\">\n");
      out.write("                            <!--Esto es una Columna-->\n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <label name=\"lblTitularDeLaTarea\">Titular De La Tarea</label>\n");
      out.write("                                <input type=\"text\" placeholder=\"Titular De La Tarea\" name=\"txtTitularDeLaTarea\" class=\"form-control\"/>\n");
      out.write("                            </div>\n");
      out.write("                            <!--Esto es una Columna-->\n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <label name=\"lblAsunto\">Asunto</label>\n");
      out.write("                                <input type=\"text\" placeholder=\"Asunto\" name=\"txtAsunto\" class=\"form-control\"/>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!--Esto es una Fila-->\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <div class=\"form-row\">\n");
      out.write("                            <!--Esto es una Columna-->\n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <label name=\"lblFechaDeVencimiento\">Fecha De Vencimiento</label>\n");
      out.write("                                <input type=\"text\" placeholder=\"dd/mm/aaaa\" name=\"txtFechaDeVencimiento\" class=\"form-control\"/>\n");
      out.write("                            </div>\n");
      out.write("                            <!--Esto es una Columna-->\n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <label name=\"lblContacto\">Contacto</label>\n");
      out.write("                                <input type=\"text\" placeholder=\"Contacto\" name=\"txtContacto\" class=\"form-control\"/>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!--Esto es una Fila-->\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <div class=\"form-row\">\n");
      out.write("                            <!--Esto es una Columna-->\n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <label name=\"lblCuenta\">Cuenta</label>\n");
      out.write("                                <input type=\"text\" placeholder=\"Cuenta\" name=\"txtCuenta\" class=\"form-control\" required=\"\"/>\n");
      out.write("                            </div>\n");
      out.write("                            <!--Esto es una Columna-->\n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <label name=\"lblEstado\">Estado</label>\n");
      out.write("                                <i class=\"fa fa-search-minus\"></i>\n");
      out.write("                                <select class=\"form-control\" name=\"ddlEstado\">\n");
      out.write("                                    <option value=\"1\">-None-</option>\n");
      out.write("                                    <option value=\"2\">No Iniciado</option>\n");
      out.write("                                    <option value=\"3\">Aplazado</option>\n");
      out.write("                                    <option value=\"4\">En Curso</option>\n");
      out.write("                                    <option value=\"5\">Completado</option>\n");
      out.write("                                    <option value=\"6\">En Espera de Entrada</option>\n");
      out.write("                                </select>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!--Esto es una Fila-->\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <div class=\"form-row\">\n");
      out.write("                            <!--Esto es una Columna-->\n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <label name=\"lblPrioridad\">Prioridad</label>\n");
      out.write("                                <i class=\"fa fa-search-minus\"></i>\n");
      out.write("                                <select class=\"form-control\" name=\"ddlPrioridad\">\n");
      out.write("                                    <option value=\"1\">-None-</option>\n");
      out.write("                                    <option value=\"2\">Alto</option>\n");
      out.write("                                    <option value=\"3\">Mas Alto</option>\n");
      out.write("                                    <option value=\"4\">Bajo</option>\n");
      out.write("                                    <option value=\"5\">Mas Bajo</option>\n");
      out.write("                                    <option value=\"6\">Normal</option>\n");
      out.write("                                </select>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!--Esto es una Fila-->\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <div class=\"form-row\">\n");
      out.write("                            <!--Esto es una Columna-->\n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <label name=\"lblEnviarMensajedeCorreoElectronicoDeNotificacion\">\n");
      out.write("                                    <input type=\"checkbox\" name=\"chkEnviarMensajedeCorreoElectronicoDeNotificacion\"/>\n");
      out.write("                                    Enviar Mensaje de Correo Electronico De Notificacion\n");
      out.write("                                </label>\n");
      out.write("                            </div>\n");
      out.write("                            <!--Esto es una Columna-->\n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <label name=\"lblRepetir\">\n");
      out.write("                                    <input type=\"checkbox\" name=\"chkRepetir\"/>\n");
      out.write("                                    Repetir\n");
      out.write("                                </label>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!--Esto es una Fila-->\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <div class=\"form-row\">\n");
      out.write("                            <!--Esto es una Columna-->\n");
      out.write("                            <div class=\"col-md-12\">\n");
      out.write("                                <label name=\"lblInformacionDeLaDescripcion\">Informacion De La Descripcion</label>\n");
      out.write("                                <input type=\"text\" placeholder=\"Informacion De La Descripcion\" name=\"txtInformacionDeLaDescripcion\" class=\"form-control\"/>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!--FILA-->        \n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <div class=\"form-row\">\n");
      out.write("                                <div class=\"col-12\" >\n");
      out.write("                                    <b>\n");
      out.write("                                        <i class=\"fa fa-clipboard\"></i>\n");
      out.write("                                        Registro:");
      out.print( lstclsTareas.size());
      out.write("\n");
      out.write("                                    </b>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <!--FILA-->        \n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <div class=\"form-row\">\n");
      out.write("                                    <!--COLUMNA-->\n");
      out.write("                                    <div class=\"col-12\" >\n");
      out.write("                                        <table class=\"table table-bordered table-responsive\">\n");
      out.write("                                            <!--FILA-->\n");
      out.write("                                            <tr>\n");
      out.write("                                                <!--COLUMNAS-->   \n");
      out.write("                                                <td>Empresa</td>\n");
      out.write("                                                <td>Nombre</td>\n");
      out.write("                                                <td>Apellido</td>\n");
      out.write("                                                <td>Titulo</td>\n");
      out.write("                                                <td>Correo Electronico</td>\n");
      out.write("                                                <td> Telefono</td>\n");
      out.write("                                                <td>Fax</td>\n");
      out.write("                                                <td>Movil</td>\n");
      out.write("                                                <td>Sitio Web</td>\n");
      out.write("                                                <td>Fuente de posible cliente</td>\n");
      out.write("                                                <td>Estado de posible cliente</td>\n");
      out.write("                                                <td>Sector</td>\n");
      out.write("                                                <td>Cantidad de empleados</td>\n");
      out.write("                                                <td>Ingresos anuales</td>\n");
      out.write("                                                <td>Calificacion</td>\n");
      out.write("                                                <td>No participacion correo Electronico</td>\n");
      out.write("                                                <td>ID de Skipe</td>\n");
      out.write("                                                <td>Twiter</td>\n");
      out.write("                                                <td>Correo Electronico Secundario</td>\n");
      out.write("                                            </tr>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

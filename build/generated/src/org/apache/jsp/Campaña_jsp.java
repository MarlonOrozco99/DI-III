package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import java.util.List;

public final class Campaña_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("        <title>Campaña</title>\n");
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
      out.write("            <!---OBTENER LISTA DE OBJETOS EN SESION-->\n");
      out.write("        ");

            List<Models.clsCampaña> lstclsCampaña
                    = new ArrayList<Models.clsCampaña>();

            //EXISTENCIA DE LA VARIABLE DE SESION
            if (session.getAttribute("session_lstclsCampaña") != null) {

                //CASTING PARA DARLE UN TIPO DE DATO A LA VARIABLE DE SESION 
                lstclsCampaña = (List<Models.clsCampaña>) session.getAttribute("session_lstclsCampaña");

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
      out.write("            <div class=\"card-header\">Crear Campaña</div>\n");
      out.write("            <div class=\"card-body\">\n");
      out.write("                <form action=\"CampañaController\" method=\"POST\">\n");
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
      out.write("                            <h1>Informacion De Campaña</h1>\n");
      out.write("                        </div>\n");
      out.write("                    </div>  \n");
      out.write("                    <!--Esto es una Fila-->\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <div class=\"form-row\">\n");
      out.write("                            <!--Esto es una Columna-->\n");
      out.write("                            <div class=\"col-md-3\">\n");
      out.write("                                <label name=\"lblTipo\">Tipo</label>\n");
      out.write("                                <i class=\"fa fa-search-minus\"></i>\n");
      out.write("                                <select class=\"form-control\" name=\"ddlTipo\">\n");
      out.write("                                    <option value=\"1\">-None-</option>\n");
      out.write("                                    <option value=\"2\">Conferencia</option>\n");
      out.write("                                    <option value=\"3\">Seminario Web</option>\n");
      out.write("                                    <option value=\"4\">Exposicion Comercial</option>\n");
      out.write("                                    <option value=\"5\">Relaciones Publicas</option>\n");
      out.write("                                    <option value=\"6\">Socios</option>\n");
      out.write("                                </select>\n");
      out.write("                            </div>\n");
      out.write("                            <!--Esto es una Columna-->\n");
      out.write("                            <div class=\"col-md-3\">\n");
      out.write("                                <label name=\"lblNombreDeCampaña\">Nombre De Campaña</label>\n");
      out.write("                                <input type=\"text\" placeholder=\"Nombre De Campaña\" name=\"txtNombreDeCampaña\" class=\"form-control\"/>\n");
      out.write("                            </div>\n");
      out.write("                            <!--Esto es una Columna-->\n");
      out.write("                            <div class=\"col-md-3\">\n");
      out.write("                                <label name=\"lblEstado\">Estado</label>\n");
      out.write("                                <i class=\"fa fa-search-minus\"></i>\n");
      out.write("                                <select class=\"form-control\" name=\"ddlEstado\">\n");
      out.write("                                    <option value=\"1\">-None-</option>\n");
      out.write("                                    <option value=\"2\">Planificacion</option>\n");
      out.write("                                    <option value=\"3\">Activo</option>\n");
      out.write("                                    <option value=\"4\">Inactivo</option>\n");
      out.write("                                    <option value=\"5\">Completos</option>\n");
      out.write("                                </select>\n");
      out.write("                            </div>\n");
      out.write("                            <!--Esto es una Columna-->\n");
      out.write("                            <div class=\"col-md-3\">\n");
      out.write("                                <label name=\"lblFechaDeInicio\">Fecha De Inicio</label>\n");
      out.write("                                <input type=\"text\" placeholder=\"dd/mm/aaaa\" name=\"txtFechaDeInicio\" class=\"form-control\"/>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!--Esto es una Fila-->\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <div class=\"form-row\">\n");
      out.write("                            <!--Esto es una Columna-->\n");
      out.write("                            <div class=\"col-md-3\">\n");
      out.write("                                <label name=\"lblFechaDeFin\">Fecha De Fin</label>\n");
      out.write("                                <input type=\"text\" placeholder=\"dd/mm/aaaa\" name=\"txtFechaDeFin\" class=\"form-control\"/>\n");
      out.write("                            </div>\n");
      out.write("                            <!--Esto es una Columna-->\n");
      out.write("                            <div class=\"col-md-3\">\n");
      out.write("                                <label name=\"lblIngresosEsperados\">Ingresos Esperados</label>\n");
      out.write("                                <input type=\"text\" placeholder=\"Ingresos Esperados\" name=\"txtIngresosEsperados\" class=\"form-control\"/>\n");
      out.write("                            </div>\n");
      out.write("                            <!--Esto es una Columna-->\n");
      out.write("                            <div class=\"col-md-3\">\n");
      out.write("                                <label name=\"lblCostePresupuestado\">Coste Presupuestado</label>\n");
      out.write("                                <input type=\"text\" placeholder=\"Coste Presupuestado\" name=\"txtCostePresupuestado\" class=\"form-control\"/>\n");
      out.write("                            </div>\n");
      out.write("                            <!--Esto es una Columna-->\n");
      out.write("                            <div class=\"col-md-3\">\n");
      out.write("                                <label name=\"lblCosteReal\">Coste Real</label>\n");
      out.write("                                <input type=\"text\" placeholder=\"Coste Real\" name=\"txtCosteReal\" class=\"form-control\"/>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!--Esto es una Fila-->\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <div class=\"form-row\">\n");
      out.write("                            <!--Esto es una Columna-->\n");
      out.write("                            <div class=\"col-md-3\">\n");
      out.write("                                <label name=\"lblRespuestaEsperada\">Respuesta Esperada</label>\n");
      out.write("                                <input type=\"text\" placeholder=\"Respuesta Esperada\" name=\"txtRespuestaEsperada\" class=\"form-control\"/>\n");
      out.write("                            </div>\n");
      out.write("                            <!--Esto es una Columna-->\n");
      out.write("                            <div class=\"col-md-3\">\n");
      out.write("                                <label name=\"lblNumerosEnviados\">Numeros Enviados</label>\n");
      out.write("                                <input type=\"text\" placeholder=\"Numeros Enviados\" name=\"txtNumerosEnviados\" class=\"form-control\"/>\n");
      out.write("                            </div>\n");
      out.write("                            <!--Esto es una Columna-->\n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <label name=\"lblDescripcion\">Descripcion</label>\n");
      out.write("                                <input type=\"text\" placeholder=\"Descripcion\" name=\"txtDescripcion\" class=\"form-control\"/>\n");
      out.write("                            </div>\n");
      out.write("                        </div> \n");
      out.write("                        <!--FILA-->        \n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <div class=\"form-row\">\n");
      out.write("                                <div class=\"col-12\" >\n");
      out.write("                                    <b>\n");
      out.write("                                        <i class=\"fa fa-clipboard\"></i>\n");
      out.write("                                        Registro:");
      out.print( lstclsCampaña.size());
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
      out.write("                                            ");

                                                for (Models.clsPosiblecliente item : lstclsPosiblecliente) {
                                                    Models.clsFuenteDePosibleCliente obclsFuenteDePosibleCliente = item.getObclsFuenteDePosibleCliente();
                                                    Models.clsEstadoDePosibleCliente obclsEstadoDePosibleCliente = item.getObclsEstadoDePosibleCliente();
                                                    Models.clsSector obclsSector = item.getObclsSector();
                                                    Models.clsCalificacion obclsCalificacion = item.getObclsClasificacion();

                                            
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                                <!--COLUMNA-->   \n");
      out.write("                                                <td>");
      out.print( item.getStEmpresa());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print( item.getStNombre());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print( item.getStApellidos());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print( item.getStTitulo());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print( item.getStCorreoElectronico());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print( item.getStTelefono());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print( item.getStFax());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print( item.getStMovil());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print( item.getStSitioWeb());
      out.write(" </td>\n");
      out.write("                                                <td>");
      out.print(obclsFuenteDePosibleCliente.getStDescripcion());
      out.write("  </td>\n");
      out.write("                                                <td>");
      out.print(obclsEstadoDePosibleCliente.getStDescripcion());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(obclsSector.getStDescripcion());
      out.write(" </td>\n");
      out.write("                                                <td>");
      out.print( item.getInCantidadDeEmpleados());
      out.write(" </td>\n");
      out.write("                                                <td>");
      out.print( item.getDbIngresosAnuales());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(obclsCalificacion.getStDescripcion());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print( item.getChNoParticipacionCorreoElectronico());
      out.write(" </td>\n");
      out.write("                                                <td>");
      out.print( item.getStIDDeSkype());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print( item.getStTwitter());
      out.write(" </td>\n");
      out.write("                                                <td>");
      out.print( item.getStCorreoElectronicoSecundario());
      out.write(" </td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            ");

                                                }
                                            
      out.write("\n");
      out.write("                                        </table>\n");
      out.write("\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
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

package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ConsultaCampaña_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("        <title>Consulta Campaña</title>\n");
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
      out.write("    ");


        String stTipo;
        String stNombreDeCampaña;
        String stEstado;
        String stFechaDeInicio;

        String stFechaDeFin;
        int inIngresosEsperados = 0;
        int inCostePresupuestado = 0;
        int inCosteReal = 0;

        String stRespuestaEsperada;
        int inNumerosEnviados = 0;
        String stDescripcion;

        stTipo = request.getParameter("ddlTipo") != null//Condicion 
                ? request.getParameter("ddlTipo").toString()//Si Se Cumple
                : "";//Si No Se Cumple
        stNombreDeCampaña = request.getParameter("txtNombreDeCampaña") != null//Condicion 
                ? request.getParameter("txtNombreDeCampaña").toString()//Si Se Cumple
                : "";//Si No Se Cumple
        stEstado = request.getParameter("ddlEstado") != null//Condicion 
                ? request.getParameter("ddlEstado").toString()//Si Se Cumple
                : "";//Si No Se Cumple
        stFechaDeInicio = request.getParameter("txtFechaDeInicio") != null//Condicion 
                ? request.getParameter("txtFechaDeInicio").toString()//Si Se Cumple
                : "";//Si No Se Cumple

        stFechaDeFin = request.getParameter("txtFechaDeFin") != null//Condicion 
                ? request.getParameter("txtFechaDeFin").toString()//Si Se Cumple
                : "";//Si No Se Cumple
        inIngresosEsperados = request.getParameter("txtIngresosEsperados") != null 
                ? Integer.parseInt(request.getParameter("txtIngresosEsperados")) 
                : 0;
        inCostePresupuestado = request.getParameter("txtCostePresupuestado") != null 
                ? Integer.parseInt(request.getParameter("txtCostePresupuestado")) 
                : 0;
        inCosteReal = request.getParameter("txtCosteReal") != null 
                ? Integer.parseInt(request.getParameter("txtCosteReal")) 
                : 0;
        
        stRespuestaEsperada = request.getParameter("txtRespuestaEsperada") != null//Condicion 
                ? request.getParameter("txtRespuestaEsperada").toString()//Si Se Cumple
                : "";//Si No Se Cumple       
        inNumerosEnviados = request.getParameter("txtNumerosEnviados") != null 
                ? Integer.parseInt(request.getParameter("txtNumerosEnviados")) 
                : 0;
        stDescripcion = request.getParameter("txtDescripcion") != null//Condicion 
                ? request.getParameter("txtDescripcion").toString()//Si Se Cumple
                : "";//Si No Se Cumple

    
      out.write("\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\" mx-auto mt-5\">\n");
      out.write("            <div class=\"card-header\">Crear Campaña</div>\n");
      out.write("            <div class=\"card-body\">\n");
      out.write("                <form>\n");
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
      out.write("                                <select class=\"form-control\" name=\"ddlTipoConsulta\" disabled=\"\">\n");
      out.write("                                    <option value=\"1\" ");
      out.print( stTipo.equals("1") ? "selected" : "" );
      out.write(">-None-</option>\n");
      out.write("                                    <option value=\"2\" ");
      out.print( stTipo.equals("2") ? "selected" : "" );
      out.write(">Conferencia</option>\n");
      out.write("                                    <option value=\"3\" ");
      out.print( stTipo.equals("3") ? "selected" : "" );
      out.write(">Seminario Web</option>\n");
      out.write("                                    <option value=\"4\" ");
      out.print( stTipo.equals("4") ? "selected" : "" );
      out.write(">Exposicion Comercial</option>\n");
      out.write("                                    <option value=\"5\" ");
      out.print( stTipo.equals("5") ? "selected" : "" );
      out.write(">Relaciones Publicas</option>\n");
      out.write("                                    <option value=\"6\" ");
      out.print( stTipo.equals("6") ? "selected" : "" );
      out.write(">Socios</option>\n");
      out.write("                                </select>\n");
      out.write("                            </div>\n");
      out.write("                            <!--Esto es una Columna-->\n");
      out.write("                            <div class=\"col-md-3\">\n");
      out.write("                                <label name=\"lblNombreDeCampaña\">Nombre De Campaña</label>\n");
      out.write("                                <input type=\"text\" \n");
      out.write("                                       placeholder=\"Nombre De Campaña\" \n");
      out.write("                                       name=\"txtNombreDeCampañaConsulta\" \n");
      out.write("                                       class=\"form-control\"\n");
      out.write("                                       value=\"");
      out.print( stNombreDeCampaña );
      out.write("\"\n");
      out.write("                                       readonly=\"\"/>\n");
      out.write("                            </div>\n");
      out.write("                            <!--Esto es una Columna-->\n");
      out.write("                            <div class=\"col-md-3\">\n");
      out.write("                                <label name=\"lblEstado\">Estado</label>\n");
      out.write("                                <i class=\"fa fa-search-minus\"></i>\n");
      out.write("                                <select class=\"form-control\" name=\"ddlEstadoConsulta\" disabled=\"\">\n");
      out.write("                                    <option value=\"1\" ");
      out.print( stEstado.equals("1") ? "selected" : "" );
      out.write(">-None-</option>\n");
      out.write("                                    <option value=\"2\" ");
      out.print( stEstado.equals("2") ? "selected" : "" );
      out.write(">Planificacion</option>\n");
      out.write("                                    <option value=\"3\" ");
      out.print( stEstado.equals("3") ? "selected" : "" );
      out.write(">Activo</option>\n");
      out.write("                                    <option value=\"4\" ");
      out.print( stEstado.equals("4") ? "selected" : "" );
      out.write(">Inactivo</option>\n");
      out.write("                                    <option value=\"5\" ");
      out.print( stEstado.equals("5") ? "selected" : "" );
      out.write(">Completos</option>\n");
      out.write("                                </select>\n");
      out.write("                            </div>\n");
      out.write("                            <!--Esto es una Columna-->\n");
      out.write("                            <div class=\"col-md-3\">\n");
      out.write("                                <label name=\"lblFechaDeInicio\">Fecha De Inicio</label>\n");
      out.write("                                <input type=\"text\" \n");
      out.write("                                       placeholder=\"Fecha De Inicio\" \n");
      out.write("                                       name=\"txtFechaDeInicioConsulta\" \n");
      out.write("                                       class=\"form-control\"\n");
      out.write("                                       value=\"");
      out.print( stFechaDeInicio );
      out.write("\"\n");
      out.write("                                       readonly=\"\"/>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!--Esto es una Fila-->\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <div class=\"form-row\">\n");
      out.write("                            <!--Esto es una Columna-->\n");
      out.write("                            <div class=\"col-md-3\">\n");
      out.write("                                <label name=\"lblFechaDeFin\">Fecha De Fin</label>\n");
      out.write("                                <input type=\"text\" \n");
      out.write("                                       placeholder=\"Fecha De Fin\" \n");
      out.write("                                       name=\"txtFechaDeFinConsulta\" \n");
      out.write("                                       class=\"form-control\"\n");
      out.write("                                       value=\"");
      out.print( stFechaDeFin );
      out.write("\"\n");
      out.write("                                       readonly=\"\"/>\n");
      out.write("                            </div>\n");
      out.write("                            <!--Esto es una Columna-->\n");
      out.write("                            <div class=\"col-md-3\">\n");
      out.write("                                <label name=\"lblIngresosEsperados\">Ingresos Esperados</label>\n");
      out.write("                                <input type=\"text\" \n");
      out.write("                                       placeholder=\"Ingresos Esperados\" \n");
      out.write("                                       name=\"txtIngresosEsperadosConsulta\" \n");
      out.write("                                       class=\"form-control\"\n");
      out.write("                                       value=\"");
      out.print( inIngresosEsperados );
      out.write("\"\n");
      out.write("                                       readonly=\"\"/>\n");
      out.write("                            </div>\n");
      out.write("                            <!--Esto es una Columna-->\n");
      out.write("                            <div class=\"col-md-3\">\n");
      out.write("                                <label name=\"lblCostePresupuestado\">Coste Presupuestado</label>\n");
      out.write("                                <input type=\"text\" \n");
      out.write("                                       placeholder=\"Coste Presupuestado\" \n");
      out.write("                                       name=\"txtCostePresupuestadoConsulta\" \n");
      out.write("                                       class=\"form-control\"\n");
      out.write("                                       value=\"");
      out.print( inCostePresupuestado );
      out.write("\"\n");
      out.write("                                       readonly=\"\"/>\n");
      out.write("                            </div>\n");
      out.write("                            <!--Esto es una Columna-->\n");
      out.write("                            <div class=\"col-md-3\">\n");
      out.write("                                <label name=\"lblCosteReal\">Coste Real</label>\n");
      out.write("                                <input type=\"text\" \n");
      out.write("                                       placeholder=\"Coste Real\" \n");
      out.write("                                       name=\"txtCosteRealConsulta\" \n");
      out.write("                                       class=\"form-control\"\n");
      out.write("                                       value=\"");
      out.print( inCosteReal );
      out.write("\"\n");
      out.write("                                       readonly=\"\"/>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!--Esto es una Fila-->\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <div class=\"form-row\">\n");
      out.write("                            <!--Esto es una Columna-->\n");
      out.write("                            <div class=\"col-md-3\">\n");
      out.write("                                <label name=\"lblRespuestaEsperada\">Respuesta Esperada</label>\n");
      out.write("                                <input type=\"text\" \n");
      out.write("                                       placeholder=\"Respuesta Esperada\" \n");
      out.write("                                       name=\"txtRespuestaEsperadaConsulta\" \n");
      out.write("                                       class=\"form-control\"\n");
      out.write("                                       value=\"");
      out.print( stRespuestaEsperada );
      out.write("\"\n");
      out.write("                                       readonly=\"\"/>\n");
      out.write("                            </div>\n");
      out.write("                            <!--Esto es una Columna-->\n");
      out.write("                            <div class=\"col-md-3\">\n");
      out.write("                                <label name=\"lblNumerosEnviados\">Numeros Enviados</label>\n");
      out.write("                                <input type=\"text\" \n");
      out.write("                                       placeholder=\"Numeros Enviados\" \n");
      out.write("                                       name=\"txtNumerosEnviadosConsulta\" \n");
      out.write("                                       class=\"form-control\"\n");
      out.write("                                       value=\"");
      out.print( inNumerosEnviados );
      out.write("\"\n");
      out.write("                                       readonly=\"\"/>\n");
      out.write("                            </div>\n");
      out.write("                            <!--Esto es una Columna-->\n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <label name=\"lblDescripcion\">Descripcion</label>\n");
      out.write("                                <input type=\"text\" \n");
      out.write("                                       placeholder=\"Descripcion\n");
      out.write("                                       \" name=\"txtDescripcionConsulta\" \n");
      out.write("                                       class=\"form-control\"\n");
      out.write("                                       value=\"");
      out.print( stDescripcion );
      out.write("\"\n");
      out.write("                                       readonly=\"\"/>\n");
      out.write("                            </div>\n");
      out.write("                        </div> \n");
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

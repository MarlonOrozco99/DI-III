/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.clsFuenteDePosibleCliente;
import com.sun.javafx.application.ParametersImpl;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Carlos Enrique P P
 */
@WebServlet(name = "PosibleclienteController", urlPatterns = {"/PosibleclienteController"})
public class PosiblesClientesController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //VALIDAMOS QUE SE HALLA PRESIONADO EL BOTON DE GUARDAR
        if (request.getParameter("btnGuardar") != null) {
            btnGuardar(request, response);

        } else if (request.getParameter("btnModificar") != null) {

        } else if (request.getParameter("btnCancelar") != null) {

        }
    }

    //Metodos: PUBLIC---> lo puedo llamar de cualquier lado, PRIVATED --> Tipo de acceso
    //String-BOOL-INT-DOUBLE-CHAR-ETC----> Tipo de dato que retorna
    //Nota Existe un tipo de dato void (Vacio)---> NO RETORNA INFORMACIÓN
    //Nombre del metodo: DESCRIBE LA ACCION E INCIA EN MINUSCULA "enviar info"
    //PARAMETROS QUE RECIBE EL METODO: 
    
    public void btnGuardar(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        try {

            //DEFINICION DE MODELOS
            Models.clsPosiblecliente obclsPosiblecliente = new Models.clsPosiblecliente();
            Models.clsFuenteDePosibleCliente obclsFuenteDePosibleCliente = new Models.clsFuenteDePosibleCliente();
            Models.clsEstadoDePosibleCliente obclsEstadoDePosibleCliente = new Models.clsEstadoDePosibleCliente();
            Models.clsSector obclsSector = new Models.clsSector();
            Models.clsCalificacion obclsCalificacion = new Models.clsCalificacion();

            //ASIGNACION DE ATRIBUTOS O PROPIEDADES
            if (request.getParameter("txtEmpresa") != null) {
                obclsPosiblecliente.setStEmpresa(request.getParameter("txtEmpresa"));
            }
            if (request.getParameter("txtNombre") != null) {
                obclsPosiblecliente.setStNombre(request.getParameter("txtNombre"));
            }
            if (request.getParameter("txtApellidos") != null) {
                obclsPosiblecliente.setStApellidos(request.getParameter("txtApellidos"));
            }
            if (request.getParameter("txtTitulo") != null) {
                obclsPosiblecliente.setStTitulo(request.getParameter("txtTitulo"));
            }

            if (request.getParameter("txtCorreoElectronico") != null) {
                obclsPosiblecliente.setStCorreoElectronico(request.getParameter("txtCorreoElectroico"));
            }
            if (request.getParameter("txtTelefono") != null) {
                obclsPosiblecliente.setStTelefono(request.getParameter("txtTelefono"));
            }
            if (request.getParameter("txtFax") != null) {
                obclsPosiblecliente.setStFax(request.getParameter("txtFax"));
            }
            if (request.getParameter("txtMovil") != null) {
                obclsPosiblecliente.setStMovil(request.getParameter("txtMovil"));
            }

            if (request.getParameter("txtSitioWeb") != null) {
                obclsPosiblecliente.setStSitioWeb(request.getParameter("txtSitioWeb"));
            }
            if (request.getParameter("ddlFuenteDePosibleCliente") != null) {

                //MODELO HIJO
                obclsFuenteDePosibleCliente.setInCodigo(Integer.parseInt(request.getParameter("ddlFuenteDePosibleCliente")));

                String stDescripcion = "";

                if (request.getParameter("ddlFuenteDePosibleCliente").equals("1")) {
                    stDescripcion = "Ninguno";
                } else if (request.getParameter("ddlFuenteDePosibleCliente").equals("2")) {
                    stDescripcion = "Aviso";

                } else if (request.getParameter("ddlFuenteDePosibleCliente").equals("3")) {
                    stDescripcion = "Llamada No Solicitada";

                } else if (request.getParameter("ddlFuenteDePosibleCliente").equals("4")) {
                    stDescripcion = "Recomendacion De Empleado";

                } else if (request.getParameter("ddlFuenteDePosibleCliente").equals("5")) {
                    stDescripcion = "Recomendacion Externa";

                } else if (request.getParameter("ddlFuenteDePosibleCliente").equals("6")) {
                    stDescripcion = "Tienda En Linea";
                }

                obclsFuenteDePosibleCliente.setStDescripcion(stDescripcion);

                //SE LO ASIGNO AL MODELO PADRE
                obclsPosiblecliente.setObclsFuenteDePosibleCliente(obclsFuenteDePosibleCliente);
            }

            if (request.getParameter("ddlEstadoDePosibleCliente") != null) {

                //MODELO HIJO
                obclsEstadoDePosibleCliente.setInCodigo(Integer.parseInt(request.getParameter("ddlEstadoDePosibleCliente")));

                String stDescripcion = "";

                if (request.getParameter("ddlEstadoDePosibleCliente").equals("1")) {
                    stDescripcion = "Ninguno";
                } else if (request.getParameter("ddlEstadoDePosibleCliente").equals("2")) {
                    stDescripcion = "Intento De Contacto";

                } else if (request.getParameter("ddlEstadoDePosibleCliente").equals("3")) {
                    stDescripcion = "Contactar En El Futuro";

                } else if (request.getParameter("ddlEstadoDePosibleCliente").equals("4")) {
                    stDescripcion = "Contactado";

                } else if (request.getParameter("ddlEstadoDePosibleCliente").equals("5")) {
                    stDescripcion = "Posible Cliente No Solicitado";

                } else if (request.getParameter("ddlEstadoDePosibleCliente").equals("6")) {
                    stDescripcion = "Posible Cliente Perdido";
                }

                obclsEstadoDePosibleCliente.setStDescripcion(stDescripcion);

                //SE LO ASIGNO AL MODELO PADRE
                obclsPosiblecliente.setObclsEstadoDePosibleCliente(obclsEstadoDePosibleCliente);
            }
            if (request.getParameter("ddlSector") != null) {

                //MODELO HIJO
                obclsSector.setInCodigo(Integer.parseInt(request.getParameter("ddlSector")));

                String stDescripcion = "";

                if (request.getParameter("ddlSector").equals("1")) {
                    stDescripcion = "Ninguno";
                } else if (request.getParameter("ddlSector").equals("2")) {
                    stDescripcion = "ASP (Proveedor De Servicios De Aplicacion)";

                } else if (request.getParameter("ddlSector").equals("3")) {
                    stDescripcion = "OEM De Datos";

                } else if (request.getParameter("ddlSector").equals("4")) {
                    stDescripcion = "ERP (Planificacion De Recursos De Empresa)";

                } else if (request.getParameter("ddlSector").equals("5")) {
                    stDescripcion = "Gobierno/Ejercito";

                } else if (request.getParameter("ddlSector").equals("6")) {
                    stDescripcion = "Empresa Grande";
                }

                obclsSector.setStDescripcion(stDescripcion);

                //SE LO ASIGNO AL MODELO PADRE
                obclsPosiblecliente.setObclsSector(obclsSector);
            }

            if (request.getParameter("txtCantidadDeEmpleados") != null) {
                obclsPosiblecliente.setInCantidadDeEmpleados(Integer.parseInt(request.getParameter("txtCantidadDeEmpleados")));
            }
            if (request.getParameter("txtIngresosAnuales") != null) {
                obclsPosiblecliente.setDbIngresosAnuales(Double.parseDouble(request.getParameter("txtIngresosAnuales")));
            }
            if (request.getParameter("ddlCalificacion") != null) {

                //MODELO HIJO
                obclsCalificacion.setInCodigo(Integer.parseInt(request.getParameter("ddlCalificacion")));

                String stDescripcion = "";

                if (request.getParameter("ddlCalificacion").equals("1")) {
                    stDescripcion = "Ninguno";
                } else if (request.getParameter("ddlCalificacion").equals("2")) {
                    stDescripcion = "Adquirido";

                } else if (request.getParameter("ddlCalificacion").equals("3")) {
                    stDescripcion = "Activo";

                } else if (request.getParameter("ddlCalificacion").equals("4")) {
                    stDescripcion = "Contactado";

                } else if (request.getParameter("ddlCalificacion").equals("5")) {
                    stDescripcion = "Fallo De Mercado";

                } else if (request.getParameter("ddlCalificacion").equals("6")) {
                    stDescripcion = "Proyecto Cancelado";

                } else if (request.getParameter("ddlCalificacion").equals("7")) {
                    stDescripcion = "Apagar";
                }

                obclsCalificacion.setStDescripcion(stDescripcion);

                //SE LO ASIGNO AL MODELO PADRE
                obclsPosiblecliente.setObclsClasificacion(obclsCalificacion);
            }
            if (request.getParameter("chkNoParticipacionCorreoElectronico") != null) {

                char chSeleccion = request.getParameter("chkNoParticipacionCorreoElectronico").equals("on")
                        ? 'S' : 'N';
                obclsPosiblecliente.setChNoParticipacionCorreoElectronico(chSeleccion);
            }
            if (request.getParameter("txtIDDeSkype") != null) {
                obclsPosiblecliente.setStIDDeSkype(request.getParameter("txtIDDeSkype"));
            }
            if (request.getParameter("txtTwitter") != null) {
                obclsPosiblecliente.setStTwitter(request.getParameter("txtTwitter"));
            }
            if (request.getParameter("txtCorreoElectronicoSecundario") != null) {
                obclsPosiblecliente.setStCorreoElectronicoSecundario(request.getParameter("txtCorreoElectronicoSecundario"));
            }

            HttpSession session = request.getSession(true); //VARIABLE DE SESION

            //LISTA DE OBJETOS
            List<Models.clsPosiblecliente> lstclsPosiblecliente = new ArrayList<Models.clsPosiblecliente>();

            //VALIDAMOS PREVIA EXISTENCIA DE LA VARIABLE DE SESSION
            if (session.getAttribute("session_lstclsPosiblecliente") != null) {
                lstclsPosiblecliente = (List<Models.clsPosiblecliente>) session.getAttribute("session_lstclsPosiblecliente");
            }

            //PARA CALCULO AUTOMATICO DEL CODIGO QUE IDENTIFICA ESE REGISTRO
            int inCodigo = lstclsPosiblecliente.size() + 1;
            obclsPosiblecliente.setInCodigo(inCodigo);

            //AGREGAMOS EL OBJETO A LA LISTA
            lstclsPosiblecliente.add(obclsPosiblecliente);
            session.setAttribute("session_lstclsPosiblecliente", lstclsPosiblecliente);

            //DEFINIR PARAMETROS DESDE EL CONTROLADOR
            request.setAttribute("stMensaje", "Se Realizo Proceso Exitosamente");
            request.setAttribute("stTipo", "Success");

            //REDIRECCIONO Y ENVIO LOS VALORES
            request.getRequestDispatcher("PosibleCliente.jsp").forward(request, response);

        } catch (Exception ex) {

            //DEFINIR PARAMETROS DESDE EL CONTROLADOR
            request.setAttribute("stMensaje", ex.getMessage());
            request.setAttribute("stTipo", "error");

            //REDIRECCIONO Y ENVIO LOS VALORES
            request.getRequestDispatcher("PosibleCliente.jsp").forward(request, response);

        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

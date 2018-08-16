/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

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
 * @author Carlos E Polanco P
 */
@WebServlet(name = "CampañaController", urlPatterns = {"/Campa_aController"})
public class CampañaController extends HttpServlet {

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
            Models.clsCampaña obclsCampaña = new Models.clsCampaña();
            Models.clsTipo obclsTipo = new Models.clsTipo();
            Models.clsEstado obclsEstado = new Models.clsEstado();

            if (request.getParameter("ddlTipo") != null) {

                //MODELO HIJO
                obclsTipo.setInCodigo(Integer.parseInt(request.getParameter("ddlTipo")));

                String stDescripcion = "";

                if (request.getParameter("ddlTipo").equals("1")) {
                    stDescripcion = "-None-";
                } else if (request.getParameter("ddlTipo").equals("2")) {
                    stDescripcion = "Conferencia";

                } else if (request.getParameter("ddlTipo").equals("3")) {
                    stDescripcion = "Seminario Web";

                } else if (request.getParameter("ddlTipo").equals("4")) {
                    stDescripcion = "Exposicion Comercial";

                } else if (request.getParameter("ddlTipo").equals("5")) {
                    stDescripcion = "Relaciones Publicas";

                } else if (request.getParameter("ddlTipo").equals("6")) {
                    stDescripcion = "Socios";
                }

                obclsCampaña.setStDescripcion(stDescripcion);

                //SE LO ASIGNO AL MODELO PADRE
                obclsCampaña.setObclsTipo(obclsTipo);
            }
            if (request.getParameter("txtNombreDeCampaña") != null) {
                obclsCampaña.setStNombreDeCampaña(request.getParameter("txtNombreDeCampaña")); //Asignacion de propiedades
            }
            if (request.getParameter("ddlEstado") != null) {

                //MODELO HIJO
                obclsEstado.setInCodigo(Integer.parseInt(request.getParameter("ddlEstado")));
                String stDescripcion = "";

                if (request.getParameter("ddlEstado").equals("1")) {
                    stDescripcion = "-None-";
                } else if (request.getParameter("ddlEstado").equals("2")) {
                    stDescripcion = "Planificacion";

                } else if (request.getParameter("ddlEstado").equals("3")) {
                    stDescripcion = "Activo";

                } else if (request.getParameter("ddlEstado").equals("4")) {
                    stDescripcion = "Inactivo";

                } else if (request.getParameter("ddlEstado").equals("5")) {
                    stDescripcion = "Completos";

                }
                obclsCampaña.setStDescripcion(stDescripcion);

                //SE LO ASIGNO AL MODELO PADRE
                obclsCampaña.setObclsEstado(obclsEstado);
            }
            if (request.getParameter("txtFechaDeInicio") != null) {
                obclsCampaña.setStFechaDeInicio(request.getParameter("txtFechaDeInicio")); //Asignacion de propiedades
            }
            if (request.getParameter("txtFechaDeFin") != null) {
                obclsCampaña.setStFechaDeFin(request.getParameter("txtFechaDeFin")); //Asignacion de propiedades
            }
            if (request.getParameter("txtIngresosEsperados") != null) {
                obclsCampaña.setStIngresosEsperados(request.getParameter("txtIngresosEsperados")); //Asignacion de propiedades
            }
            if (request.getParameter("txtCostePresupuestado") != null) {
                obclsCampaña.setStCostePresupuestado(request.getParameter("txtCostePresupuestado")); //Asignacion de propiedades
            }
            if (request.getParameter("txtCosteReal") != null) {
                obclsCampaña.setStCosteReal(request.getParameter("txtCosteReal")); //Asignacion de propiedades
            }
            if (request.getParameter("txtRespuestaEsperada") != null) {
                obclsCampaña.setStRespuestaEsperada(request.getParameter("txtRespuestaEsperada")); //Asignacion de propiedades
            }
            if (request.getParameter("txtDescripcion") != null) {
                obclsCampaña.setStDescripcion(request.getParameter("txtDescripcion")); //Asignacion de propiedades
            }
            HttpSession session = request.getSession(true);

            //LISTA DE OBJETOS
            List<Models.clsCampaña> lstclsCampaña = new ArrayList<Models.clsCampaña>();

            //VALIDAMOS PREVIA EXISTENCIA DE LA VARIABLE DE SESSION
            if (session.getAttribute("session_lstclsCampaña") != null) {
                lstclsCampaña = (List<Models.clsCampaña>) session.getAttribute("session_lstclsCampaña");
            }

            //PARA CALCULO AUTOMATICO DEL CODIGO QUE IDENTIFICA ESE REGISTRO
            int inCodigo = lstclsCampaña.size() + 1;
            obclsCampaña.setInCodigo(inCodigo);

            //AGREGAMOS EL OBJETO A LA LISTA
            lstclsCampaña.add(obclsCampaña);
            session.setAttribute("session_lstclsCampaña", lstclsCampaña);

            //DEFINIR PARAMETROS DESDE EL CONTROLADOR
            request.setAttribute("stMensaje", "Se Realizo Proceso Exitosamente");
            request.setAttribute("stTipo", "Succes");

            //REDIRECCIONO Y ENVIO LOS VALORES
            request.getRequestDispatcher("Campaña.jsp").forward(request, response);

        } catch (Exception ex) {

            //DEFINIR PARAMETROS DESDE EL CONTROLADOR
            request.setAttribute("stMensaje", ex.getMessage());
            request.setAttribute("stTipo", "error");

            //REDIRECCIONO Y ENVIO LOS VALORES
            request.getRequestDispatcher("Campaña.jsp").forward(request, response);
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

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
 * @author Juan Jose
 */
@WebServlet(name = "TratoController", urlPatterns = {"/TratoController"})
public class TratoController extends HttpServlet {

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
            Models.clsTrato obclsTrato = new Models.clsTrato();
            Models.clsFase obclsFase = new Models.clsFase();
            Models.clsTipo obclsTipo = new Models.clsTipo();
            Models.clsFuenteDePosibleCliente obclsFuenteDePosibleCliente = new Models.clsFuenteDePosibleCliente();

            if (request.getParameter("txtImporte") != null) {
                obclsTrato.setStImporte(request.getParameter("txtImporte"));

            }
            if (request.getParameter("txtNombreDeTrato") != null) {
                obclsTrato.setStNombreDeTrato(request.getParameter("txtNombreDeTrato"));

            }
            if (request.getParameter("txtFechaDeCierre") != null) {
                obclsTrato.setStFechaDeCierre(request.getParameter("txtFechaDeCierre"));

            }
            if (request.getParameter("txtNombreDeCuenta") != null) {
                obclsTrato.setStNombreDeCuenta(request.getParameter("txtNombreDeCuenta"));

            }
            if (request.getParameter("ddlFase") != null) {

                //MODELO HIJO
                obclsFase.setInCodigo(Integer.parseInt(request.getParameter("ddlFase")));
                
                String stDescripcion = "";

                if (request.getParameter("ddlFase").equals("1")) {
                    stDescripcion = "-None-";
                } else if (request.getParameter("ddlFase").equals("2")) {
                    stDescripcion = "Clasificacion";

                } else if (request.getParameter("ddlFase").equals("3")) {
                    stDescripcion = "Necesita Analisis";

                } else if (request.getParameter("ddlFase").equals("4")) {
                    stDescripcion = "Propuesta De Valor";

                } else if (request.getParameter("ddlFase").equals("5")) {
                    stDescripcion = "Identificar Responsables";

                } else if (request.getParameter("ddlFase").equals("6")) {
                    stDescripcion = "Cotizacion De Propuesta/Precio";
                }

                obclsFase.setStDescripcion(stDescripcion);

                //SE LO ASIGNO AL MODELO PADRE
                obclsTrato.setObclsFase(obclsFase);
            }
            if (request.getParameter("ddlTipo") != null) {
                
                //MODELO HIJO
                obclsFase.setInCodigo(Integer.parseInt(request.getParameter("ddlTipo")));
                
                String stDescripcion = "";

                if (request.getParameter("ddlTipo").equals("1")) {
                    stDescripcion = "-None-";
                } else if (request.getParameter("ddlTipo").equals("2")) {
                    stDescripcion = "Negocios Existentes";

                } else if (request.getParameter("ddlTipo").equals("3")) {
                    stDescripcion = "Nuevo Negocio";

                }

                obclsTipo.setStDescripcion(stDescripcion);

                //SE LO ASIGNO AL MODELO PADRE

                obclsTrato.setObclsTipo(obclsTipo);
            }
            if (request.getParameter("txtProbabilidad") != null) {
                obclsTrato.setStProbabilidad(request.getParameter("txtProbabilidad"));

            }
            if (request.getParameter("txtSiguientePaso") != null) {
                obclsTrato.setStSiguientePaso(request.getParameter("txtSiguientePaso"));

            }
            if (request.getParameter("txtIngresosEsperados") != null) {
                obclsTrato.setStIngresosEsperados(request.getParameter("txtIngresosEsperados"));

            }
            if (request.getParameter("ddlFuenteDePosibleCliente") != null) {
                
                //MODELO HIJO
                obclsFuenteDePosibleCliente.setInCodigo(Integer.parseInt(request.getParameter("ddlFuenteDePosibleCliente")));
                
                String stDescripcion = "";

                if (request.getParameter("ddlFuenteDePosibleCliente").equals("1")) {
                    stDescripcion = "-None-";
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

                obclsFase.setStDescripcion(stDescripcion);

                //SE LO ASIGNO AL MODELO PADRE
                obclsTrato.setObclsFuenteDePosibleCliente(obclsFuenteDePosibleCliente);

            }
            if (request.getParameter("txtFuenteDeCampaña") != null) {
                obclsTrato.setStFuenteDeCampaña(request.getParameter("txtFuenteDeCampaña"));

            }
            if (request.getParameter("txtNombreDeContacto") != null) {
                obclsTrato.setStNombreDeContacto(request.getParameter("txtNombreDeContacto"));

            }

            if (request.getParameter("txtDescripcion") != null) {
                obclsTrato.setStDescripcion(request.getParameter("txtDescripcion"));

            }
            
            HttpSession session = request.getSession(true);

            //LISTA DE OBJETOS
            List<Models.clsTrato> lstclsTrato = new ArrayList<Models.clsTrato>();

            //VALIDAMOS PREVIA EXISTENCIA DE LA VARIABLE DE SESSION
            if (session.getAttribute("session_lstclsTrato") != null) {
                lstclsTrato = (List<Models.clsTrato>) session.getAttribute("session_lstclsTrato");
            }

            //PARA CALCULO AUTOMATICO DEL CODIGO QUE IDENTIFICA ESE REGISTRO
            int inCodigo = lstclsTrato.size() + 1;
            obclsTrato.setInCodigo(inCodigo);

            //AGREGAMOS EL OBJETO A LA LISTA
            lstclsTrato.add(obclsTrato);
            session.setAttribute("session_lstclsTrato", lstclsTrato);

            //DEFINIR PARAMETROS DESDE EL CONTROLADOR
            request.setAttribute("stMensaje", "Se Realizo Proceso Exitosamente");
            request.setAttribute("stTipo", "Succes");

            //REDIRECCIONO Y ENVIO LOS VALORES
            request.getRequestDispatcher("Trato.jsp").forward(request, response);

        } catch (Exception ex) {

            //DEFINIR PARAMETROS DESDE EL CONTROLADOR
            request.setAttribute("stMensaje", ex.getMessage());
            request.setAttribute("stTipo", "error");

            //REDIRECCIONO Y ENVIO LOS VALORES
            request.getRequestDispatcher("Trato.jsp").forward(request, response);

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

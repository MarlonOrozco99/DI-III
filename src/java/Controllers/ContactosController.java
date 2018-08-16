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
@WebServlet(name = "ContactosController", urlPatterns = {"/ContactosController"})
public class ContactosController extends HttpServlet {

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
            Models.clsContactos obclsContactos = new Models.clsContactos();
            Models.clsFuenteDePosibleCliente obclsFuenteDePosibleCliente = new Models.clsFuenteDePosibleCliente();
            
            //ASIGNACION DE ATRIBUTOS O PROPIEDADES
            if (request.getParameter("txtNombre") != null) {
                obclsContactos.setStNombre(request.getParameter("txtNombre")); //Asignacion de propiedades
            }
            if (request.getParameter("txtApellidos") != null) {
                obclsContactos.setStApellidos(request.getParameter("txtApellidos")); //Asignacion de propiedades
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

                obclsFuenteDePosibleCliente.setStDescripcion(stDescripcion);

                //SE LO ASIGNO AL MODELO PADRE
                obclsContactos.setObclsFuenteDePosibleCliente(obclsFuenteDePosibleCliente);
            }

            if (request.getParameter("txtNumeroDeCuenta") != null) {
                obclsContactos.setStNumeroDeCuenta(request.getParameter("txtNumeroDeCuenta")); //Asignacion de propiedades
            }
            if (request.getParameter("txtTitulo") != null) {
                obclsContactos.setStTitulo(request.getParameter("txtTitulo")); //Asignacion de propiedades
            }
            if (request.getParameter("txtCorreoElectronico") != null) {
                obclsContactos.setStCorreoElectronico(request.getParameter("txtCorreoElectronico")); //Asignacion de propiedades
            }

            if (request.getParameter("txtDepartamento") != null) {
                obclsContactos.setStDepartamento(request.getParameter("txtDepartamento")); //Asignacion de propiedades
            }
            if (request.getParameter("txtTelefono") != null) {
                obclsContactos.setStTelefono(request.getParameter("txtTelefono")); //Asignacion de propiedades
            }
            if (request.getParameter("txtTelefonoParticular") != null) {
                obclsContactos.setStTelefonoParticular(request.getParameter("txtTelefonoParticular")); //Asignacion de propiedades
            }
            if (request.getParameter("txtOtroTelefono") != null) {
                obclsContactos.setStOtroTelefono(request.getParameter("txtOtroTelefono")); //Asignacion de propiedades
            }
            if (request.getParameter("txtFax") != null) {
                obclsContactos.setStFax(request.getParameter("txtFax")); //Asignacion de propiedades
            }
            if (request.getParameter("txtMovil") != null) {
                obclsContactos.setStMovil(request.getParameter("txtMovil")); //Asignacion de propiedades
            }
            if (request.getParameter("txtFechaDeNacimiento") != null) {
                obclsContactos.setStFechaDeNacimiento(request.getParameter("txtFechaDeNacimiento")); //Asignacion de propiedades
            }
            if (request.getParameter("txtAsistente") != null) {
                obclsContactos.setStAsistente(request.getParameter("txtAsistente")); //Asignacion de propiedades
            }
            if (request.getParameter("txtNºDeTelefonoDeAsistente") != null) {
                obclsContactos.setStNºDeTelefonoDeAsistente(request.getParameter("txtNºDeTelefonoDeAsistente")); //Asignacion de propiedades
            }

            if (request.getParameter("txtRespondeA") != null) {
                obclsContactos.setStResponderA(request.getParameter("txtRespondeA")); //Asignacion de propiedades
            }
            if (request.getParameter("chkNoParticipacionCorreoElectronico") != null) {
                char chNoParticipacionCorreoElectronico = request.getParameter("chkNoParticipacionCorreoElectronico").equals("on")
                        ? 'S' //Si Se Cumple
                        : 'N'; // Si No Se Cumple
                obclsContactos.setChNoParticipacionCorreoElectronico(chNoParticipacionCorreoElectronico);
            }
            if (request.getParameter("txtIDDeSkype") != null) {
                obclsContactos.setStIDDeSkype(request.getParameter("txtIDDeSkype")); //Asignacion de propiedades
            }
            if (request.getParameter("txtCorreoElectronicoSecundario") != null) {
                obclsContactos.setStCorreoElectronicoSecundario(request.getParameter("txtCorreoElectronicoSecundario"));//Asignacion de propiedades
            }
            
            HttpSession session = request.getSession(true);

            //LISTA DE OBJETOS
            List<Models.clsContactos> lstclsContactos = new ArrayList<Models.clsContactos>();

            //VALIDAMOS PREVIA EXISTENCIA DE LA VARIABLE DE SESSION
            if (session.getAttribute("session_lstclsContactos") != null) {
                lstclsContactos = (List<Models.clsContactos>) session.getAttribute("session_lstclsContactos");
            }

            //PARA CALCULO AUTOMATICO DEL CODIGO QUE IDENTIFICA ESE REGISTRO
            int inCodigo = lstclsContactos.size() + 1;
            obclsContactos.setInCodigo(inCodigo);

            //AGREGAMOS EL OBJETO A LA LISTA
            lstclsContactos.add(obclsContactos);
            session.setAttribute("session_lstclsContactos", lstclsContactos);

            //DEFINIR PARAMETROS DESDE EL CONTROLADOR
            request.setAttribute("stMensaje", "Se Realizo Proceso Exitosamente");
            request.setAttribute("stTipo", "Succes");

            //REDIRECCIONO Y ENVIO LOS VALORES
            request.getRequestDispatcher("Contactos.jsp").forward(request, response);
            
        } catch (Exception ex) {

            //DEFINIR PARAMETROS DESDE EL CONTROLADOR
            request.setAttribute("stMensaje", ex.getMessage());
            request.setAttribute("stTipo", "error");

            //REDIRECCIONO Y ENVIO LOS VALORES
            request.getRequestDispatcher("Contactos.jsp").forward(request, response);
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

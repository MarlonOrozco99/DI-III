/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author Carlos Enrique P P
 */
public class clsTareas {

    public int inCodigo;

    public int getInCodigo() {
        return inCodigo;
    }

    public void setInCodigo(int inCodigo) {
        this.inCodigo = inCodigo;
    }

    public String stTitularDeLaTarea;
    public String stAsunto;
    public String stFechaDeVencimiento;
    public String stContacto;
    public String stCuenta;
    public clsEstado obclsEstado;
    public clsPrioridad obclsPrioridad;
    public char chEnviarMensajedeCorreoElectronicoDeNotificacion;
    public char chRepetir;
    public String stInformacionDeLaDescripcion;

    public String getStInformacionDeLaDescripcion() {
        return stInformacionDeLaDescripcion;
    }

    public void setStInformacionDeLaDescripcion(String stInformacionDeLaDescripcion) {
        this.stInformacionDeLaDescripcion = stInformacionDeLaDescripcion;
    }

    public String getStTitularDeLaTarea() {
        return stTitularDeLaTarea;
    }

    public void setStTitularDeLaTarea(String stTitularDeLaTarea) {
        this.stTitularDeLaTarea = stTitularDeLaTarea;
    }

    public String getStAsunto() {
        return stAsunto;
    }

    public void setStAsunto(String stAsunto) {
        this.stAsunto = stAsunto;
    }

    public String getStFechaDeVencimiento() {
        return stFechaDeVencimiento;
    }

    public void setStFechaDeVencimiento(String stFechaDeVencimiento) {
        this.stFechaDeVencimiento = stFechaDeVencimiento;
    }

    public String getStContacto() {
        return stContacto;
    }

    public void setStContacto(String stContacto) {
        this.stContacto = stContacto;
    }

    public String getStCuenta() {
        return stCuenta;
    }

    public void setStCuenta(String stCuenta) {
        this.stCuenta = stCuenta;
    }

    public clsEstado getObclsEstado() {
        return obclsEstado;
    }

    public void setObclsEstado(clsEstado obclsEstado) {
        this.obclsEstado = obclsEstado;
    }

    public clsPrioridad getObclsPrioridad() {
        return obclsPrioridad;
    }

    public void setObclsPrioridad(clsPrioridad obclsPrioridad) {
        this.obclsPrioridad = obclsPrioridad;
    }

    public char getChEnviarMensajedeCorreoElectronicoDeNotificacion() {
        return chEnviarMensajedeCorreoElectronicoDeNotificacion;
    }

    public void setChEnviarMensajedeCorreoElectronicoDeNotificacion(char chEnviarMensajedeCorreoElectronicoDeNotificacion) {
        this.chEnviarMensajedeCorreoElectronicoDeNotificacion = chEnviarMensajedeCorreoElectronicoDeNotificacion;
    }

    public char getChRepetir() {
        return chRepetir;
    }

    public void setChRepetir(char chRepetir) {
        this.chRepetir = chRepetir;
    }

    public void setStDescripcion(String stDescripcion) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}

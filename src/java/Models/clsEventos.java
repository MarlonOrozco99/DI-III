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
public class clsEventos {

    public int inCodigo;

    public int getInCodigo() {
        return inCodigo;
    }

    public void setInCodigo(int inCodigo) {
        this.inCodigo = inCodigo;
    }
    public String stNuevoEvento;
    public String stUbicacion;
    public String stParticipantes;
    public char chTodoElDia;
    public String stFecha;
    public clsRelacionadoCon obclsRelacionadoCon;
    public String stInformacionDeLaDescripcion;

    public String getStNuevoEvento() {
        return stNuevoEvento;
    }

    public void setStNuevoEvento(String stNuevoEvento) {
        this.stNuevoEvento = stNuevoEvento;
    }

    public String getStUbicacion() {
        return stUbicacion;
    }

    public void setStUbicacion(String stUbicacion) {
        this.stUbicacion = stUbicacion;
    }

    public String getStParticipantes() {
        return stParticipantes;
    }

    public void setStParticipantes(String stParticipantes) {
        this.stParticipantes = stParticipantes;
    }

    public char getChTodoElDia() {
       return chTodoElDia;
    }

    public void setChTodoElDia(char chTodoElDia) {
        this.chTodoElDia = chTodoElDia;
    }

    public String getStFecha() {
        return stFecha;
    }

    public void setStFecha(String stFecha) {
        this.stFecha = stFecha;
    }

    public clsRelacionadoCon getObclsRelacionadoCon() {
        return obclsRelacionadoCon;
    }

    public void setObclsRelacionadoCon(clsRelacionadoCon obclsRelacionadoCon) {
        this.obclsRelacionadoCon = obclsRelacionadoCon;
    }

    public String getStInformacionDeLaDescripcion() {
        return stInformacionDeLaDescripcion;
    }

    public void setStInformacionDeLaDescripcion(String stInformacionDeLaDescripcion) {
        this.stInformacionDeLaDescripcion = stInformacionDeLaDescripcion;
    }

}

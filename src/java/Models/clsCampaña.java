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
public class clsCampaña {
    
    public int inCodigo;

    public int getInCodigo() {
        return inCodigo;
    }

    public void setInCodigo(int inCodigo) {
        this.inCodigo = inCodigo;
    }
    public clsTipo obclsTipo;
    public String stNombreDeCampaña;
    public clsEstado obclsEstado;
    public String stFechaDeInicio;
    public String stFechaDeFin;
    public String stIngresosEsperados;
    public String stCostePresupuestado;
    public String stCosteReal;
    public String stRespuestaEsperada;
    public String stNumerosEnviados;
    public String stDescripcion;

    public clsTipo getObclsTipo() {
        return obclsTipo;
    }

    public void setObclsTipo(clsTipo obclsTipo) {
        this.obclsTipo = obclsTipo;
    }

    public String getStNombreDeCampaña() {
        return stNombreDeCampaña;
    }

    public void setStNombreDeCampaña(String stNombreDeCampaña) {
        this.stNombreDeCampaña = stNombreDeCampaña;
    }

    public clsEstado getObclsEstado() {
        return obclsEstado;
    }

    public void setObclsEstado(clsEstado obclsEstado) {
        this.obclsEstado = obclsEstado;
    }

    public String getStFechaDeInicio() {
        return stFechaDeInicio;
    }

    public void setStFechaDeInicio(String stFechaDeInicio) {
        this.stFechaDeInicio = stFechaDeInicio;
    }

    public String getStFechaDeFin() {
        return stFechaDeFin;
    }

    public void setStFechaDeFin(String stFechaDeFin) {
        this.stFechaDeFin = stFechaDeFin;
    }

    public String getStIngresosEsperados() {
        return stIngresosEsperados;
    }

    public void setStIngresosEsperados(String stIngresosEsperados) {
        this.stIngresosEsperados = stIngresosEsperados;
    }

    public String getStCostePresupuestado() {
        return stCostePresupuestado;
    }

    public void setStCostePresupuestado(String stCostePresupuestado) {
        this.stCostePresupuestado = stCostePresupuestado;
    }

    public String getStCosteReal() {
        return stCosteReal;
    }

    public void setStCosteReal(String stCosteReal) {
        this.stCosteReal = stCosteReal;
    }

    public String getStRespuestaEsperada() {
        return stRespuestaEsperada;
    }

    public void setStRespuestaEsperada(String stRespuestaEsperada) {
        this.stRespuestaEsperada = stRespuestaEsperada;
    }

    public String getStNumerosEnviados() {
        return stNumerosEnviados;
    }

    public void setStNumerosEnviados(String stNumerosEnviados) {
        this.stNumerosEnviados = stNumerosEnviados;
    }

    public String getStDescripcion() {
        return stDescripcion;
    }

    public void setStDescripcion(String stDescripcion) {
        this.stDescripcion = stDescripcion;
    }
    
    
}

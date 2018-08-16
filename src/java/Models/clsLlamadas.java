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
public class clsLlamadas {

    public int inCodigo;

    public int getInCodigo() {
        return inCodigo;
    }

    public void setInCodigo(int inCodigo) {
        this.inCodigo = inCodigo;
    }
    public String stNombreDeContacto;
    public String stAsunto;
    public clsPropositoDeLaLlamada obclsPropositoDeLaLlamada;
    public clsRelacionadoCon obclsRelacionadoCon;
    public String stTipoDeLlamada;
    public clsTipo obclsTipo;
    
    public clsTipo getObclsTipo() {
        return obclsTipo;
    }

    public void setObclsTipo(clsTipo obclsTipo) {
        this.obclsTipo = obclsTipo;
    }

    public String stDescripcion;
    public String stResultadoDeLaLlamada;

    public String getStNombreDeContacto() {
        return stNombreDeContacto;
    }

    public void setStNombreDeContacto(String stNombreDeContacto) {
        this.stNombreDeContacto = stNombreDeContacto;
    }

    public String getStAsunto() {
        return stAsunto;
    }

    public void setStAsunto(String stAsunto) {
        this.stAsunto = stAsunto;
    }

    public clsPropositoDeLaLlamada getObclsPropositoDeLaLlamada() {
        return obclsPropositoDeLaLlamada;
    }

    public void setObclsPropositoDeLaLlamada(clsPropositoDeLaLlamada obclsPropositoDeLaLlamada) {
        this.obclsPropositoDeLaLlamada = obclsPropositoDeLaLlamada;
    }

    public clsRelacionadoCon getObclsRelacionadoCon() {
        return obclsRelacionadoCon;
    }

    public void setObclsRelacionadoCon(clsRelacionadoCon obclsRelacionadoCon) {
        this.obclsRelacionadoCon = obclsRelacionadoCon;
    }

    public String getStTipoDeLlamada() {
        return stTipoDeLlamada;
    }

    public void setStTipoDeLlamada(String stTipoDeLlamada) {
        this.stTipoDeLlamada = stTipoDeLlamada;
    }

   

    public String getStDescripcion() {
        return stDescripcion;
    }

    public void setStDescripcion(String stDescripcion) {
        this.stDescripcion = stDescripcion;
    }

    public String getStResultadoDeLaLlamada() {
        return stResultadoDeLaLlamada;
    }

    public void setStResultadoDeLaLlamada(String stResultadoDeLaLlamada) {
        this.stResultadoDeLaLlamada = stResultadoDeLaLlamada;
    }
}

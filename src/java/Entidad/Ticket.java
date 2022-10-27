/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidad;

/**
 *
 * @author eddy_
 */
public class Ticket {
    int idTicket,idEstadoTicket,idGravedadIncidencia,idTipoIncidencia,idUsuarioResponsable;
    String descripcionProblema,tituloTicket,versionSoftware;

    public Ticket(int idTicket, int idEstadoTicket, int idGravedadIncidencia, int idTipoIncidencia, int idUsuarioResponsable, String descripcionProblema, String tituloTicket, String versionSoftware) {
        this.idTicket = idTicket;
        this.idEstadoTicket = idEstadoTicket;
        this.idGravedadIncidencia = idGravedadIncidencia;
        this.idTipoIncidencia = idTipoIncidencia;
        this.idUsuarioResponsable = idUsuarioResponsable;
        this.descripcionProblema = descripcionProblema;
        this.tituloTicket = tituloTicket;
        this.versionSoftware = versionSoftware;
    }

    public Ticket() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public void setIdTicket(int idTicket) {
        this.idTicket = idTicket;
    }

    public void setIdEstadoTicket(int idEstadoTicket) {
        this.idEstadoTicket = idEstadoTicket;
    }

    public void setIdGravedadIncidencia(int idGravedadIncidencia) {
        this.idGravedadIncidencia = idGravedadIncidencia;
    }

    public void setIdTipoIncidencia(int idTipoIncidencia) {
        this.idTipoIncidencia = idTipoIncidencia;
    }

    public void setIdUsuarioResponsable(int idUsuarioResponsable) {
        this.idUsuarioResponsable = idUsuarioResponsable;
    }

    public void setDescripcionProblema(String descripcionProblema) {
        this.descripcionProblema = descripcionProblema;
    }

    public void setTituloTicket(String tituloTicket) {
        this.tituloTicket = tituloTicket;
    }

    public void setVersionSoftware(String versionSoftware) {
        this.versionSoftware = versionSoftware;
    }
    
    
    public int getIdTicket() {
        return idTicket;
    }

    public int getIdEstadoTicket() {
        return idEstadoTicket;
    }

    public int getIdGravedadIncidencia() {
        return idGravedadIncidencia;
    }

    public int getIdTipoIncidencia() {
        return idTipoIncidencia;
    }

    public int getIdUsuarioResponsable() {
        return idUsuarioResponsable;
    }

    public String getDescripcionProblema() {
        return descripcionProblema;
    }

    public String getTituloTicket() {
        return tituloTicket;
    }

    public String getVersionSoftware() {
        return versionSoftware;
    }
    
}
